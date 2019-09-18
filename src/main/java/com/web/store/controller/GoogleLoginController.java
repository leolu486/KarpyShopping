package com.web.store.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.NonUniqueResultException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.web.store.exception.MemberNotFoundException;
import com.web.store.model.MemberBean;
import com.web.store.service.MemberService;

@Controller
public class GoogleLoginController {

	@Autowired
	MemberService service;

	public final String CLIENT_ID = "56544827833-d9qmm0ik4ukn3s8g8aplpco391bfjco0.apps.googleusercontent.com";
	public final String REDIRECT_URI = "http://localhost:8080/KarpyShopping/home";

	@InitBinder
	public final void initBinderUsuariosFormValidator(final WebDataBinder binder, final Locale locale) {
		final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@ExceptionHandler({ MemberNotFoundException.class })
	public ModelAndView handleError(HttpServletRequest request, MemberNotFoundException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidAccount", exception.getAccount());
		mv.addObject("exception", exception);
		mv.addObject("errorMessage", exception.getMessage());
		if (request.getQueryString().isEmpty())
			mv.addObject("url", request.getRequestURL());
		else
			mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
		mv.setViewName("errorPage/memberNotFound");
		return mv;
	}

	@RequestMapping("/glogin")
	public String login(Model model) {
		return "google/sign-in/login";
	}

	@RequestMapping(value = "/googleVerify")
	public void verifyTokenPost(@RequestParam("idtokenstr") String idtokenstr, HttpServletResponse response,
			HttpServletRequest request) {
		HttpSession session = request.getSession();

		System.out.println("id token:\n" + idtokenstr);

		GoogleIdToken idToken = null;
		try {
			idToken = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(), JacksonFactory.getDefaultInstance())
					.setAudience(Collections.singletonList(CLIENT_ID)).build().verify(idtokenstr);
		} catch (GeneralSecurityException e) {
			System.out.println("驗證時出現GeneralSecurityException異常");
		} catch (IOException e) {
			System.out.println("驗證時出現IOException異常");
		}
		if (idToken != null) {
			System.out.println("驗證成功.");
			Payload payload = idToken.getPayload();

			String gmail = payload.getEmail();
			String name = (String) payload.get("name");
			System.out.println("name : " + name);
			String pictureURL = (String) payload.get("picture");

			String userId = payload.getSubject();
			System.out.println("User ID: " + userId);

//			String locale = (String) payload.get("locale"); // zh-TW
//			String familyName = (String) payload.get("family_name"); // 姓
//			String givenName = (String) payload.get("given_name"); // 名
//			boolean emailVerified = Boolean.valueOf(payload.getEmailVerified()); // true false

			MemberBean member = null;
			try {
				member = service.getMemberByGmail(gmail);
				System.out.println("load " + gmail + " from database success.");
			} catch (NoResultException e) {
				System.err.println("database has no " + gmail + " account data.");
				System.err.println("Start with adding new Gmail member");
				member = new MemberBean();
				member.setName(name);
				member.setPictureURL(pictureURL);
				member.setGmail(gmail);
				service.addGmailMember(member);
			} finally {
				try {
					System.out.println(
							"---------------------------------Gmail information start line------------------------------------");
					System.out.println(payload.toPrettyString());
					System.out.println(
							"---------------------------------Gmail information end line--------------------------------------");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			session.setAttribute("memberLoginOK", member);
		} else {
			System.out.println("Invalid ID token.");
		}

	}

	@RequestMapping(value = "/addGmail", method = RequestMethod.GET)
	public String addGmailFORM(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("memberBean", mb);
		return "google/test/addGmail";
	}

	@RequestMapping(value = "/addGmail", method = RequestMethod.POST)
	public String addGmailProcess(@ModelAttribute("memberBean") MemberBean mb, HttpServletRequest request) {
		MemberBean member = null;
		try {
			member = service.getMemberByGmail(mb.getGmail());
		} catch (NoResultException e) {
			System.err.println("database has no " + mb.getGmail() + " account data.");
			System.err.println("Start with adding new Gmail member");
			member = null;
		} catch (NonUniqueResultException e) {
			System.err.println("重複帳號存在");
			e.printStackTrace();
		}
		if (member == null) {
			service.addGmailMember(mb);
			HttpSession session = request.getSession();
			session.setAttribute("memberLoginOK", mb);
		} else {
			System.out.println("Gmail帳號已存在:" + mb.getGmail());
			return "redirect:/home";
		}
		return "redirect:/members";
	}

}

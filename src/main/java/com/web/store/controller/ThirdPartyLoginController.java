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

import org.apache.commons.text.RandomStringGenerator;
import org.hibernate.NonUniqueResultException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.gson.JsonObject;
import com.web.store.model.MemberBean;
import com.web.store.service.MemberService;

import _00_init.util.HttpPostUtils;

@Controller
public class ThirdPartyLoginController {

	@Autowired
	MemberService service;

	public static final String CLIENT_ID = "56544827833-d9qmm0ik4ukn3s8g8aplpco391bfjco0.apps.googleusercontent.com";
	public static final String REDIRECT_URI = "http://localhost:8080/KarpyShopping/home";
	public static final String LINE_CHANNEL_ID = "1623038570";
	public static final String LINE_CHANNEL_SECRET = "5208b0d5022fab47d445be7c1240dc86";
	public static final int RANDOM_STRING_LENGTH = 10;
	public static String RANDOM_STRING = "";

	@InitBinder
	public final void initBinderUsuariosFormValidator(final WebDataBinder binder, final Locale locale) {
		final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	// line verify
	@RequestMapping(value = "/lineVerify")
	public String verifylineTokenPost(@RequestParam("code") String code, @RequestParam("state") String state,
			HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("state");
		System.out.println("code:" + code);

		if (state.equals(ThirdPartyLoginController.RANDOM_STRING)) {
			System.out.println("Line驗證識別碼正確");
			JsonObject obj = null;
			try {
				obj = HttpPostUtils.accessToken(code);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (obj != null) {
				String name = obj.get("name").getAsString();
				String email = obj.get("email").getAsString();
				String pictureURL = obj.get("picture").getAsString();

				MemberBean member = null;
				try {
					member = service.getMemberByLine(email);
					System.out.println("load " + email + " as Line member from database success.");
				} catch (NoResultException e) {
					System.err.println("database has no " + email + " account data.");
					System.err.println("Start with adding new Line member");
					member = new MemberBean();
					member.setName(name);
					member.setPictureURL(pictureURL);
					member.setLine(email);
					service.addLineMember(member);
				}
				session.setAttribute("memberLoginOK", member);
			}
		} else {
			System.err.println("Line驗證識別碼錯誤");
		}

		String uri = (String) session.getAttribute("requestURI");
		System.out.println("uri : " + uri);
		if (uri == null) {
			return "redirect:/home";
		} else {
			session.removeAttribute("requestURI");
			return "redirect:/" + uri.substring(15);
		}
	}

//	google verify
	@RequestMapping(value = "/googleVerify")
	public void verifyTokenPost(@RequestParam("idtokenstr") String idtokenstr, HttpServletResponse response,
			HttpServletRequest request) {
		HttpSession session = request.getSession();

		System.out.println("id token:\n" + idtokenstr);

		GoogleIdToken idToken = null;
		try {
			idToken = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(), JacksonFactory.getDefaultInstance())
					.setAudience(Collections.singletonList(ThirdPartyLoginController.CLIENT_ID)).build()
					.verify(idtokenstr);
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
				System.out.println("load " + gmail + " as Gmail member from database success.");
			} catch (NoResultException e) {
				System.err.println("database has no " + gmail + " account data.");
				System.err.println("Start with adding new Gmail member");
				member = new MemberBean();
				member.setName(name);
				member.setPictureURL(pictureURL);
				member.setGmail(gmail);
				System.out.println("GMember:"+member.toString());
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

//function test code

	// line
	@RequestMapping("/linelogin")
	public String lineLogin(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		char[][] pairs = { { 'a', 'z' }, { 'A', 'Z' }, { '0', '9' } };
		ThirdPartyLoginController.RANDOM_STRING = new RandomStringGenerator.Builder().withinRange(pairs).build()
				.generate(ThirdPartyLoginController.RANDOM_STRING_LENGTH);
		System.out.println("Random String:" + ThirdPartyLoginController.RANDOM_STRING);
		session.setAttribute("state", ThirdPartyLoginController.RANDOM_STRING);
		return "third-party-api/line/sign-in/login";

	}
	// gmail

	@RequestMapping("/glogin")
	public String googleLogin(Model model) {
		return "third-party-api/google/sign-in/login";
	}

	@RequestMapping(value = "/addGmail", method = RequestMethod.GET)
	public String addGmailFORM(Model model) {
		MemberBean mb = new MemberBean();
		model.addAttribute("memberBean", mb);
		return "third-party-api/google/test/addGmail";

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

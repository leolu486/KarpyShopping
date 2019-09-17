package com.web.store.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Collections;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.web.store.service.MemberService;

@Controller
public class GoogleLoginController {

	@Autowired
	MemberService service;

	public final String CLIENT_ID = "56544827833-d9qmm0ik4ukn3s8g8aplpco391bfjco0.apps.googleusercontent.com";
	public final String REDIRECT_URI = "http://localhost:8080/KarpyShopping/home";

	@RequestMapping("/glogin")
	public String login(Model model) {
		return "google/sign-in/login";
	}

	@RequestMapping(value = "/googleVerify")
	public void verifyTokenPost(@RequestParam("idtokenstr")String idtokenstr, HttpServletResponse response, HttpServletRequest request) 
			throws IOException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		String contextPath = req.getContextPath();
		System.out.println("id token:\n" + idtokenstr);
		GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(),
				JacksonFactory.getDefaultInstance()).setAudience(Collections.singletonList(CLIENT_ID)).build();
		GoogleIdToken idToken = null;
		try {
			idToken = verifier.verify(idtokenstr);
		} catch (GeneralSecurityException e) {
			System.out.println("驗證時出現GeneralSecurityException異常");
		} catch (IOException e) {
			System.out.println("驗證時出現IOException異常");
		}
		if (idToken != null) {
			System.out.println("驗證成功.");
			Payload payload = idToken.getPayload();
			String userId = payload.getSubject();
			System.out.println("User ID: " + userId);
			String email = payload.getEmail();
			boolean emailVerified = Boolean.valueOf(payload.getEmailVerified());
			String name = (String) payload.get("name");
			String pictureUrl = (String) payload.get("picture");
			String locale = (String) payload.get("locale");
			String familyName = (String) payload.get("family_name");
			String givenName = (String) payload.get("given_name");
			try {
				System.out.println(payload.toPrettyString());

				System.out.println("finished");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			System.out.println("Invalid ID token.");
		}

		System.out.println("uri:" + contextPath + "/home");
		
	}

}

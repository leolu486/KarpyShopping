package com.web.store.controller;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.store.model.ProductBean;
import com.web.store.service.HotSearchService;
import com.web.store.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	ProductService service;
	
	@Autowired
	HotSearchService hService;

	@RequestMapping("/welcome")
	public String welcome(Model model) {
		model.addAttribute("title", "Welcome to KarpyShopping!");
		model.addAttribute("subtitle", "身寸ˋ惹");
		return "welcome";
	}

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/productDetail")
	public String pd() {
		System.out.println("pd test");
		return "productDetail/pd";
	}

	@RequestMapping("/ch01/serverTime")
	public String serverTime(Model model) {
		model.addAttribute("now",
				new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒SSS毫秒").format(new java.util.Date()) + ", Spring MVC版");
		return "ch01/serverTime";
	}

	@RequestMapping(value = "home")
	public String home(Model model, HttpServletRequest request) {

		List<ProductBean> list = service.getAllProducts();
		try {
			for (int i = 0; i <= list.size() - 1; i++) {
				ProductBean pb = list.get(i);
				if (pb.getProductImage() != null) {

					pb.setBase64Image(Base64.getEncoder()
							.encodeToString(pb.getProductImage().getBytes(1, (int) pb.getProductImage().length())));

				}
				if (pb.getProductImage1() != null) {

					pb.setBase64Image1(Base64.getEncoder()
							.encodeToString(pb.getProductImage1().getBytes(1, (int) pb.getProductImage1().length())));

				}
				list.set(i, pb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		HttpSession session = request.getSession();
//		session.setAttribute("proudcts", list);
		model.addAttribute("products", list);
		HttpSession session = request.getSession();
		session.setAttribute("hotSearch", hService.getTop5());
		
		return "index1";

	}
	
	@RequestMapping("searchResult")
	public String index2() {
		return "searchResult";
	}

	@RequestMapping("membercentre")
	public String membercentre() {

		return "member/membercentre";
	}

	@RequestMapping("/membercentreDetail")
	public String membercentre1() {

		return "membertest";
	}

	@RequestMapping("/images")
	public String sendListOfImages(HttpServletRequest request, Model model) {
		List<ProductBean> list = service.getAllProducts();
		try {
			for (int i = 0; i <= list.size() - 1; i++) {
				ProductBean pb = list.get(i);
				if (pb.getProductImage() != null) {

					pb.setBase64Image(Base64.getEncoder()
							.encodeToString(pb.getProductImage().getBytes(1, (int) pb.getProductImage().length())));

				}
				if (pb.getProductImage1() != null) {

					pb.setBase64Image1(Base64.getEncoder()
							.encodeToString(pb.getProductImage1().getBytes(1, (int) pb.getProductImage1().length())));

				}
				list.set(i, pb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//		HttpSession session = request.getSession();
//		session.setAttribute("list", list);
		model.addAttribute("list", list);
		return "ch01/showImages";
	}

}

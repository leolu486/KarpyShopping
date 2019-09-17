package com.web.store.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.store.model.ProductBean;
import com.web.store.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	ProductService service;
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

	@RequestMapping("home")
	public String home(Model model) {
		List<ProductBean> list = service.getAllProducts();
		model.addAttribute("products", list);
		return "index1";
	}
	
	@RequestMapping("/membercentre")
	public String membercentre() {

		return "membercentre";
	}

	@RequestMapping("/membercentreDetail")
	public String membercentre1() {

		return "membertest";
	}

}

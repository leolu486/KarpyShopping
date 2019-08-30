package com.web.store.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {

	@RequestMapping("index1")
	public String index1() {
		return "index1";
	}
	

}

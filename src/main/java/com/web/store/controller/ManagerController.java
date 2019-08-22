package com.web.store.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.ManagerNotFoundException;

import com.web.store.model.ManagerBean;
import com.web.store.service.ManagerService;


@Controller
public class ManagerController {
	@Autowired
	ManagerService service;

	@Autowired
	ServletContext context;
//	@ExceptionHandler({ManagerNotFoundException.class})
//	public ModelAndView handleError(HttpServletRequest request, ProductNotFoundException exception) {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("invalidBookId", exception.getBookId());
//		mv.addObject("exception" , exception);
//		mv.addObject("url", request.getRequestURL()+"?"+ request.getQueryString());
//		mv.setViewName("productNotFound");
//		return mv;
//	}
	
	@RequestMapping("/managers")
	public String list(Model model) {
		List<ManagerBean> list = service.getAllManager();
		model.addAttribute("managers", list);
		return "managers";
	}

}

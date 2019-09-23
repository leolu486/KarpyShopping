package com.web.store.controller;

import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.ProductBean;
import com.web.store.service.ProductService;

@Controller
public class ShowSearchResultPageController {
	@Autowired
	ProductService service;
	
	Integer countPerPage = 5;
	
//	/{currentPageNo}
	@RequestMapping(value = "/changePage")
	public String changePage(@RequestParam("currentPageNo") Integer currentPageNo , Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<ProductBean> products = (List<ProductBean>) session.getAttribute("products");
//		Integer currentPageNo = (Integer) session.getAttribute("currentPageNo");
		int listSize = products.size();
		List<ProductBean> resultPage = new ArrayList<ProductBean>();
		Integer index = (currentPageNo-1) * countPerPage; 
		System.out.println(index);
		if(listSize == 0) {	
		}else if(index+countPerPage > listSize) {
			resultPage = new ArrayList<ProductBean>(products.subList(index, listSize - 1));
		}else {
			resultPage = new ArrayList<ProductBean>(products.subList(index, index+countPerPage));
		}
		System.out.println("ooooooooooooooooooooooooooo" + products.size());
		session.setAttribute("resultPage", resultPage);
		session.setAttribute("currentPageNo", currentPageNo);
		System.out.println("+++++++++++++++++++++++++++++++++++++");
		return "/product/products";
	}
	
	@RequestMapping(value = "/changePage1")
	public String changePage1(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<ProductBean> products = (List<ProductBean>) session.getAttribute("products");
		Integer currentPageNo = (Integer) session.getAttribute("currentPageNo");
		int listSize = products.size();
		List<ProductBean> resultPage = new ArrayList<ProductBean>();
		Integer index = (currentPageNo-1) * countPerPage; 
		System.out.println(index);
		if(listSize == 0) {	
		}else if(index+countPerPage > listSize) {
			resultPage = new ArrayList<ProductBean>(products.subList(index, listSize - 1));
		}else {
			resultPage = new ArrayList<ProductBean>(products.subList(index, index+countPerPage));
		}
		System.out.println("ooooooooooooooooooooooooooo" + products.size());
		session.setAttribute("resultPage", resultPage);
		session.setAttribute("currentPageNo", currentPageNo);
		System.out.println("+++++++++++++++++++++++++++++++++++++");
		return "/product/products";
	}
	
}

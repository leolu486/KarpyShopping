package com.web.store.controller;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
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
			List<ProductBean> subList = new ArrayList<ProductBean>(products.subList(index, listSize));
			
			//handling image
			for(ProductBean pb : subList) {
			if (pb.getProductImage() != null && pb.getBase64Image() == null) {
				Blob blob = pb.getProductImage();
				byte[] imageData = null;
				try {		
					imageData = blob.getBytes(1, (int) blob.length());
				} catch (Exception e) {
					e.printStackTrace();
				}
				pb.setBase64Image(Base64.getEncoder().encodeToString(imageData));
				
			}
			
			resultPage.add(pb);
			}
			
		}else {
			List<ProductBean> subList = new ArrayList<ProductBean>(products.subList(index, index+countPerPage));		
			
			//handling image
			for(ProductBean pb : subList) {
			if (pb.getProductImage() != null && pb.getBase64Image() == null) {
				Blob blob = pb.getProductImage();
				byte[] imageData = null;
				try {		
					imageData = blob.getBytes(1, (int) blob.length());

				} catch (Exception e) {
					e.printStackTrace();
				}
				pb.setBase64Image(Base64.getEncoder().encodeToString(imageData));
			}
			
			resultPage.add(pb);
			}
		}
		System.out.println("ooooooooooooooooooooooooooo" + products.size());
		session.setAttribute("resultPage", resultPage);
		session.setAttribute("currentPageNo", currentPageNo);
		session.setAttribute("listSize", listSize);
		System.out.println("+++++++++++++++++++++++++++++++++++++");
		ManagerBean LoginOK = (ManagerBean) session.getAttribute("LoginOK");
		if(LoginOK != null) {
			return "/backstage/ManageProducts";
		}else {
			return "/product/products";
		}
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
			List<ProductBean> subList = new ArrayList<ProductBean>(products.subList(index, listSize));
			
			//handling image
			for(ProductBean pb : subList) {
			if (pb.getProductImage() != null && pb.getBase64Image() == null) {
				Blob blob = pb.getProductImage();
				byte[] imageData = null;
				try {		
					imageData = blob.getBytes(1, (int) blob.length());
				} catch (Exception e) {
					e.printStackTrace();
				}
				pb.setBase64Image(Base64.getEncoder().encodeToString(imageData));
				
			}
			
			resultPage.add(pb);
			}
			
		}else {
			List<ProductBean> subList = new ArrayList<ProductBean>(products.subList(index, index+countPerPage));		
			
			//handling image
			for(ProductBean pb : subList) {
			if (pb.getProductImage() != null && pb.getBase64Image() == null) {
				Blob blob = pb.getProductImage();
				byte[] imageData = null;
				try {		
					imageData = blob.getBytes(1, (int) blob.length());
				} catch (Exception e) {
					e.printStackTrace();
				}
				pb.setBase64Image(Base64.getEncoder().encodeToString(imageData));
			}
			
			resultPage.add(pb);
			}
		}
		System.out.println("ooooooooooooooooooooooooooo" + products.size());
		session.setAttribute("resultPage", resultPage);
		session.setAttribute("currentPageNo", currentPageNo);
		session.setAttribute("listSize", listSize);
		System.out.println("+++++++++++++++++++++++++++++++++++++");
		ManagerBean LoginOK = (ManagerBean) session.getAttribute("LoginOK");
		if(LoginOK != null) {
			return "/backstage/ManageProducts";
		}else {
			return "/product/products";
		}

	}
	
}

package com.web.store.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.ManagerNotFoundException;
import com.web.store.exception.ProductNotFoundException;
import com.web.store.model.ManagerBean;
import com.web.store.model.ProductBean;
import com.web.store.service.ManagerService;
import com.web.store.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService service;

	@ExceptionHandler({ ProductNotFoundException.class })
	public ModelAndView handleError(HttpServletRequest request, ManagerNotFoundException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidAccount", exception.getAccount());
		mv.addObject("exception", exception);
		mv.addObject("errorMessage", exception.getMessage());
		// 查詢單一管理員發生例外
		if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager")) {
			mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
			mv.setViewName("errorPage/managerNotFound");
		}
		// 管理員登入發生例外
		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/managerLogin")) {
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerLoginError");
		}
		// 管理員新增發生例外
		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/add")) {
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerRegistrationError");
		}
		// 管理員變更密碼發生例外
		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/change")) {
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerChangePasswordError");
		}
		// 其他
		else {
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerNotFound");
		}
		return mv;
	}

	@RequestMapping("/productById")
	public String getProductById(@RequestParam("pId") Integer pId, Model model) {
		model.addAttribute("product", service.getProductById(pId));
		if(service.getProductById(pId).getRankCount() != null) {
		model.addAttribute("rankAVG", service.getProductRankAVGById(pId));
		}
		return "product";
	}
	
	@RequestMapping("/productByName")
	public String getProductByName(@RequestParam("pname") String pname, Model model) {
		model.addAttribute("product", service.getProductByName(pname));
		return "product";
	}
	
	@RequestMapping("/products")
	public String getAllProducts(Model model) {
		List<ProductBean> list = service.getAllProducts();
		model.addAttribute("products", list);
		return "products";
	}
	
	@RequestMapping("/productsByVendor")
	public String getProductsByVendor(@RequestParam("vId") Integer vId, Model model) {
		List<ProductBean> list = service.getProductByVendor(vId);
		model.addAttribute("products", list);
		return "products";
	}
	
	@RequestMapping("/productsByCategory")
	public String getProductsByCategory(@RequestParam("category") String category, Model model) {
		List<ProductBean> list = service.getProductByCategory(category);
		model.addAttribute("products", list);
		return "products";
	}
	
	@RequestMapping("/productRankAVG")
	public String getProductRankAVGById(@RequestParam("pId") Integer pId, Model model) {
		model.addAttribute("AVG", service.getProductRankAVGById(pId));
		return "productRankAVG";
	}
	
	@RequestMapping(value = "/product/add", method = RequestMethod.GET)
	public String getAddNewProductForm(Model model) {
		ProductBean pb = new ProductBean();
		model.addAttribute("productBean", pb);
		return "addProduct";
	}
	
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("productBean") ProductBean pb, BindingResult result,
			HttpServletRequest request) {
		service.addProduct(pb);
		return "redirect:/products";
	}
	
	@RequestMapping(value = "/product/update", method = RequestMethod.GET)
	public String getUpdateProductForm(@RequestParam("pId") Integer pId, Model model) {
		ProductBean pb = service.getProductById(pId);
		model.addAttribute("productBean", pb);
		return "updateProduct";
	}
	
	@RequestMapping(value = "/product/update", method = RequestMethod.POST)
	public String processUpdateProductForm(@ModelAttribute("productBean") ProductBean pb, BindingResult result,
			HttpServletRequest request) {
//		VendorBean vb = pb.getvId()
//		
		service.updateProduct(pb);
		return "redirect:/products";
	}
	
	@RequestMapping("/product/delete")
	public String deleteProduct(@RequestParam("pId") Integer pId) {
		service.deleteProduct(pId);
		return "redirect:/products";
	}
	

}

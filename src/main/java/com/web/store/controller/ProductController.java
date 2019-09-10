package com.web.store.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
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

//	@ExceptionHandler({ ProductNotFoundException.class })
//	public ModelAndView handleError(HttpServletRequest request, ProductNotFoundException exception) {
//		ModelAndView mv = new ModelAndView();
////		mv.addObject("invalidAccount", exception.getAccount());
//		mv.addObject("exception", exception);
//		mv.addObject("errorMessage", exception.getMessage());
//		// 查詢單一管理員發生例外
//		if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager")) {
//			mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
//			mv.setViewName("errorPage/managerNotFound");
//		}
//		// 管理員登入發生例外
//		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/managerLogin")) {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerLoginError");
//		}
//		// 管理員新增發生例外
//		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/add")) {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerRegistrationError");
//		}
//		// 管理員變更密碼發生例外
//		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/change")) {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerChangePasswordError");
//		}
//		// 其他
//		else {
//			mv.addObject("url", request.getRequestURL());
//			mv.setViewName("errorPage/managerNotFound");
//		}
//		return mv;
//	}
	
	@RequestMapping("/productById")
	public String getProductById(@RequestParam("pId") Integer pId, Model model) {
		model.addAttribute("product", service.getProductById(pId));
		if (service.getProductById(pId).getRankCount() != null) {
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

	@RequestMapping(value = "/getProductsBy", method = RequestMethod.GET)
	public String getProductsByCategory(Model model) {
		return "getProductsBy";
	}

	// the way to use different submit btn in same form
//	@RequestMapping(value = "/productsByCategory", method = RequestMethod.POST)
//	public String getProductsByCategory(
//			@RequestParam("searchBy") String searchBy,
//			@RequestParam(required = false, value = "categoryBtn") String categoryBtn,
//			@RequestParam(required = false, value = "pnameBtn") String pnameBtn,
//			@RequestParam(required = false, value = "vendorBtn") String vendorBtn, 
//			Model model) {
//		if (categoryBtn != null) {
//			List<ProductBean> list = service.getProductByCategory(searchBy);
//			model.addAttribute("products", list);
//			return "products";
//		} else if (pnameBtn != null) {
//			ProductBean resultpb = service.getProductByName(searchBy);
//			model.addAttribute("product", resultpb);
//			return "product";
//		} else if (vendorBtn != null) {
//			List<ProductBean> list = service.getProductByVendor(Integer.parseInt(searchBy));
//			model.addAttribute("products", list);
//			return "products";
//		} else {
//		return null;
//		}
//	}

	@RequestMapping(value = "/getProductsBy", method = RequestMethod.POST)
	public String getProductsByCategory(@RequestParam("searchBy") String searchBy, Model model) {
		if (service.getProductByCategory(searchBy).isEmpty() == false) {
			List<ProductBean> list = service.getProductByCategory(searchBy);
			model.addAttribute("products", list);
			return "products";
		} else if (service.getProductByVendorName(searchBy).isEmpty() == false) {
			System.out.println("vendorproduct");
			List<ProductBean> list = service.getProductByVendorName(searchBy);
			model.addAttribute("products", list);
			return "products";
		} else if (service.getProductByName(searchBy) != null) {
			ProductBean resultpb = service.getProductByName(searchBy);
			model.addAttribute("product", resultpb);
			return "product";
		} else {
			return null;
		}
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
	public String processAddNewProductForm(@ModelAttribute("productBean") ProductBean pb, 
			@RequestParam("sdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String sdate,
			@RequestParam("expdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String expdate, BindingResult result,
			HttpServletRequest request) {
		pb.setSdate(new java.sql.Timestamp(java.sql.Date.valueOf(sdate).getTime()));
		pb.setExpdate(new java.sql.Timestamp(java.sql.Date.valueOf(expdate).getTime()));
		service.addProduct(pb);
		return "redirect:/products";
	}

	@RequestMapping(value = "/product/update", method = RequestMethod.GET)
	public String getUpdateProductForm(@RequestParam("pId") Integer pId, Model model) {
		ProductBean pb = service.getProductById(pId);
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	    String sdate = DATE_FORMAT.format(pb.getSdate());
	    String expdate = DATE_FORMAT.format(pb.getExpdate());
	    model.addAttribute("sdate1", sdate);
	    model.addAttribute("expdate1", expdate);
	    System.out.println(sdate + ", " + expdate);
		model.addAttribute("productBean", pb);
		return "updateProduct";
	}

	@RequestMapping(value = "/product/update", method = RequestMethod.POST)
	public String processUpdateProductForm(@ModelAttribute("productBean") ProductBean pb,
			@RequestParam("sdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String sdate,
			@RequestParam("expdate1") @DateTimeFormat(pattern = "yyyy/MM/dd") String expdate,
			BindingResult result,
			HttpServletRequest request) {
		pb.setSdate(new java.sql.Timestamp(java.sql.Date.valueOf(sdate).getTime()));
		pb.setExpdate(new java.sql.Timestamp(java.sql.Date.valueOf(expdate).getTime()));
		service.updateProduct(pb);
		return "redirect:/products";
	}

	@RequestMapping("/product/delete")
	public String deleteProduct(@RequestParam("pId") Integer pId) {
		service.deleteProduct(pId);
		return "redirect:/products";
	}

	@RequestMapping("/productById02")
	public String getProductById02(@RequestParam("pId") Integer pId, Model model) {
		model.addAttribute("product", service.getProductById(pId));
//		if (service.getProductById(pId).getRankCount() != null) {
//			model.addAttribute("rankAVG", service.getProductRankAVGById(pId));
//		}
		return "productDetail/pd";

	}

}

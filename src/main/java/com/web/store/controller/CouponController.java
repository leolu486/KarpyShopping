package com.web.store.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import javax.persistence.NoResultException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.text.RandomStringGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.web.store.exception.MemberNotFoundException;
import com.web.store.model.CouponBean;
import com.web.store.model.CreditCardBean;
import com.web.store.model.MemberBean;
import com.web.store.model.OrderBean;
import com.web.store.model.OrderItemBean;
import com.web.store.model.ProductBean;
import com.web.store.model.ShoppingCart;
import com.web.store.service.MemberService;
import com.web.store.service.ProductService;

import _00_init.util.SystemUtils2019;

@Controller
public class CouponController {

	// TODO: Input String check -> should not include space or special symbol which
	// likes SQL command (pending)
	@Autowired
	ProductService pservice;

	@Autowired
	MemberService mservice;

	@Autowired
	ServletContext context;

	@RequestMapping("/coupontest")
	public String coupontest(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		if (mb != null) {
			session.setAttribute("memberLoginOK", mservice.getMemberBymId(mb.getmId()));
		}
		return "coupon/coupon";
	}

	@RequestMapping(value = "/getCoupon")
	public void getCoupon(@RequestParam("category") String category, @RequestParam("discount") Double discount,
			@RequestParam("expdate") @DateTimeFormat(pattern = "yyyy/MM/dd") String expdate,
			@RequestParam("token") String token, Model model, HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		if (mb != null) {

			CouponBean cb = new CouponBean();
			cb.setmId(mb.getmId());
			// cb.setMemberbean(mb); //set this in memberdao
			cb.setCategory(category);
			cb.setDiscount(discount);
			System.out.println("expdate:" + expdate);
			cb.setExpdate(new java.sql.Timestamp(java.sql.Date.valueOf(expdate).getTime()));
			cb.setStatus(true);
			cb.setToken(token);
			int pk = mservice.getCoupon(cb);
			
			PrintWriter out = null;
			response.setContentType("application/json");
			StringBuilder jsonString = new StringBuilder();
			try {
				out = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (pk == 0) {
				System.out.println("已擁有折價卷");
				jsonString.append("{\"result\":\"抱歉，您已經擁有此折價卷囉!\"}");
			}else {
				System.out.println("未擁有折價卷");
				jsonString.append("{\"result\":\"您取得了折價卷，未來還請多多支持KarpyShopping!\"}");
			}
			out.print(jsonString.toString());
			out.flush();
		}

	}

	@RequestMapping(value = "/useCoupon")
	public String useCoupon(@RequestParam("cId") Integer cId, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		ShoppingCart sc = (ShoppingCart) session.getAttribute("ShoppingCart");
		StringBuilder error = new StringBuilder();
		// get coupon object
		CouponBean cb = mservice.getCouponBycId(cId);
		// find category pids
		Set<Integer> id = new HashSet<>();
		List<ProductBean> plist = pservice.getProductByCategory(cb.getCategory());
		for (ProductBean pb : plist) {
			id.add(pb.getpId());
		}
		// add discount to OrderItems from cart
		boolean exist = false;
		Iterator<Integer> it = sc.getContent().keySet().iterator();
		while (it.hasNext()) {
			Integer productId = (Integer) it.next();
			if (id.contains(productId)) {
				sc.modifyDiscount(productId, cb.getDiscount());
				exist = true;
			}
		}
		// Judge coupon can be use or not
		if (exist) {
//			mservice.useCoupon(cId);
		} else {
			error.append("您的購物車內沒有" + cb.getCategory()+"的商品").toString();
			session.removeAttribute("couponID");
			session.setAttribute("errorCoupon", error);
			return "redirect:/addOrder";
		}
		session.setAttribute("cancelCoupon", cId);
		session.setAttribute("checkcoupon", 1);
		model.addAttribute("ShoppingCart", sc);
		return "redirect:/addOrder";
	}
	
	
	@RequestMapping(value = "/cancelCoupon")
	public String cancelCoupon(@RequestParam("cId") Integer cId, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");
		ShoppingCart sc = (ShoppingCart) session.getAttribute("ShoppingCart");
		// get coupon object
//		mservice.resetCoupon(cId);
		// reset discount to OrderItems from cart
		Iterator<Integer> it = sc.getContent().keySet().iterator();
		while (it.hasNext()) {
			Integer productId = (Integer) it.next();
			sc.modifyDiscount(productId, 1.0);
		}
		model.addAttribute("ShoppingCart", sc);
		return "redirect:/addOrder";
	}
	

}

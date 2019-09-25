package com.web.store.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.persistence.NoResultException;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.MemberNotFoundException;
import com.web.store.model.CouponBean;
import com.web.store.model.CreditCardBean;
import com.web.store.model.MemberBean;
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
			@RequestParam("token") String token, Model model, HttpServletRequest request) {
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
			if (pk == 0) {
				System.out.println("折價卷已存在");
			}
		}

	}

	@RequestMapping("/useCoupon")
	public void useCoupon(@RequestParam("token") String token, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberBean mb = (MemberBean) session.getAttribute("memberLoginOK");

		if (mb != null) {
			//TODO: objects will be sent from front-end , shouldn't be search in controller
			List<CouponBean> list = mservice.getCouponsBymId(mb.getmId());
			for (CouponBean cb : list) {
				if (cb.getToken().equals(token)) {
					mservice.useCoupon(cb.getcId());
					break;
				}
			}

		}
	}

}

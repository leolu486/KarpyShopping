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
import com.web.store.model.ManagerBean;
import com.web.store.service.ManagerService;

@Controller
public class ManagerController {

	// TODO: Input String check -> should not include space or special symbol which likes
	// sql command (pending)
	// TODO: Password should be save in encoding form (finish)

	@Autowired
	ManagerService service;

	@Autowired
	ServletContext context;

	@ExceptionHandler({ ManagerNotFoundException.class })
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
		
		//其他
		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/change")) {
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerChangePasswordError");
		}
		else{
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerNotFound");
		}
		return mv;
	}

	@RequestMapping("/managers")
	public String list(Model model) {
		List<ManagerBean> list = service.getAllManager();
		model.addAttribute("managers", list);
		return "managers";
	}

	@RequestMapping("/manager")
	public String getProductsById(@RequestParam("account") String account, Model model) {
		model.addAttribute("manager", service.getManagerByAccount(account));
		return "manager";
	}

//登入控制器
	@RequestMapping(value = "/managerLogin", method = RequestMethod.GET)
	public String getManagerLoginForm(Model model) {
		ManagerBean mb = new ManagerBean();
		model.addAttribute("managerBean", mb);
		return "login/managerLogin";
	}

	@RequestMapping(value = "/managerLogin", method = RequestMethod.POST)
	public String processManagerLoginForm(@ModelAttribute("managerBean") ManagerBean mb) {
		service.checkIdPassword(mb.getAccount(), mb.getPassword());
		return "login/ManagerLoginSuccess";
	}

//新增管理員控制器
	@RequestMapping(value = "/manager/add", method = RequestMethod.GET)
	public String getAddNewManagerForm(Model model) {
		ManagerBean mb = new ManagerBean();
		model.addAttribute("managerBean", mb);
		return "registration/addManager";
	}

	@RequestMapping(value = "/manager/add", method = RequestMethod.POST)
	public String processAddNewManagerForm(@ModelAttribute("managerBean") ManagerBean mb, BindingResult result,
			HttpServletRequest request) {
		service.addManager(mb);
		return "redirect:/managers";
	}

	@RequestMapping(value = "/manager/change", method = RequestMethod.GET)
	public String getChangeManagerForm(Model model) {
		ManagerBean mb = new ManagerBean();
		model.addAttribute("managerBean", mb);
		return "account/changeMgrPassword";
	}

	@RequestMapping(value = "/manager/change", method = RequestMethod.POST)
	public String processChangeManagerForm(@ModelAttribute("managerBean") ManagerBean mb,@RequestParam("newPW") String newPW, BindingResult result,
			HttpServletRequest request) {
		service.changePassWord(service.checkIdPassword(mb.getAccount(), mb.getPassword()), newPW);
		return "redirect:/managers";
	}

}

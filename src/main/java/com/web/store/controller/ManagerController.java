package com.web.store.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	// TODO: Input String check -> should not include space or special symbol which
	// likes SQL command (pending)

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
		if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/AddorLogin")) {
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerLoRError");
		}
		// 管理員變更密碼發生例外
		else if (request.getRequestURI().equalsIgnoreCase("/KarpyShopping/manager/change")) {
			mv.addObject("url", request.getRequestURL());
			mv.setViewName("errorPage/managerChangePasswordError");
		}
		// 其他
		else {
			mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
			mv.setViewName("errorPage/managerNotFound");
		}
		return mv;
	}

	// 列出所有管理員
	@RequestMapping("/managers")
	public String list(Model model) {
		List<ManagerBean> list = service.getAllManager();
		model.addAttribute("managers", list);
		return "managers";

	}

	// 單筆管理員查詢
	@RequestMapping("/manager")
	public String getProductsById(@RequestParam("account") String account, Model model) {
		model.addAttribute("manager", service.getManagerByAccount(account));
		return "manager";
	}

// 新增登入管理員控制器
	@RequestMapping(value = "/AddorLogin", method = RequestMethod.GET)
	public String getManagerForm(Model model) {
		ManagerBean mb = new ManagerBean();
		model.addAttribute("managerBean", mb);
		return "login/managerLogin";
	}

	@RequestMapping(value = "/AddorLogin", method = RequestMethod.POST)
	public String processManagerForm(@ModelAttribute("managerBean") ManagerBean mb, @RequestParam("form") boolean form,
			HttpServletRequest request) {
		HttpSession session = request.getSession();

		System.out.println("form :" + form);
		if (!form) {
			int Id = service.addManager(mb);
			mb.setId(Id);
			session.setAttribute("LoginOK", mb);
			System.out.println(mb.toString());
		} else {
			ManagerBean manager = new ManagerBean();
			manager = service.checkIdPassword(mb.getAccount(), mb.getPassword());
			session.setAttribute("LoginOK", manager);
			System.out.println(manager.toString());
		}
		String uri = (String) session.getAttribute("requestURI");
		System.out.println("uri : " + uri);
		if (uri == null) {
			return "index";
		} else {
			session.removeAttribute("requestURI");
			return "redirect:/" + uri.substring(15);
		}
	}

//登出控制器
	@RequestMapping("/managerLogout")
	public String manageLogout(Model model) {
		System.out.println("Mout");
		return "login/managerLogout";
	}

//變更密碼控制器
	@RequestMapping(value = "/manager/change", method = RequestMethod.GET)
	public String getChangeManagerForm(Model model) {
		ManagerBean mb = new ManagerBean();
		model.addAttribute("managerBean", mb);
		return "account/changeMgrPassword";
	}

	@RequestMapping(value = "/manager/change", method = RequestMethod.POST)
	public String processChangeManagerForm(@ModelAttribute("managerBean") ManagerBean mb,
			@RequestParam("newPW") String newPW, BindingResult result, HttpServletRequest request) {
		service.changePassWord(service.getManagerByAccount(mb.getAccount()), newPW);
		return "redirect:/managers";
	}

}

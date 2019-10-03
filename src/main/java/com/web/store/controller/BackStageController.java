package com.web.store.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.AdminMessageBean;
import com.web.store.model.HotSearchBean;
import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
import com.web.store.model.VendorBean;
import com.web.store.service.HotSearchService;
import com.web.store.service.ManagerService;
import com.web.store.service.MemberService;
import com.web.store.service.OrderService;
import com.web.store.service.ProductService;
import com.web.store.service.VendorService;

@Controller
public class BackStageController {
	@Autowired
	MemberService mservice;
	@Autowired
	ManagerService adminservice;
	@Autowired
	ProductService pservice;
	@Autowired
	OrderService oservice;
	@Autowired
	HotSearchService hservice;
	@Autowired
	VendorService vservice;

	// dashboard
	/**
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/admin")
	public String adminPage(Model model, HttpSession session) {
		Integer memberCount = mservice.getAllMember().size();
		Integer orderCount = oservice.getOrdersCount();
		Integer productCount = pservice.getAllProducts().size();
		Integer adminCount = adminservice.getAllManager().size();
		List<HotSearchBean> slist = hservice.getTop5();
		List<AdminMessageBean> msglist = adminservice.getLastFiveMessage();
		session.setAttribute("Last5Msg", msglist);
		session.setAttribute("Top5", slist);
		session.setAttribute("memberCount", memberCount);
		session.setAttribute("orderCount", orderCount);
		session.setAttribute("productCount", productCount);
		session.setAttribute("adminCount", adminCount);

		return "backstage/dashboard";
	}

	// products
	@RequestMapping("/adminProducts")
	public String productsPage(Model model, HttpSession session) {
		return "backstage/products";
	}

	// orders
	@RequestMapping("/adminOrders")
	public String ordersPage(Model model, HttpSession session) {
		return "backstage/orders";
	}

	// members
	@RequestMapping("/adminMembers")
	public String membersPage(Model model, HttpSession session) {
		List<MemberBean> list = mservice.getAllMember();
		model.addAttribute("members", list);
		return "backstage/members";
	}
	// managers
	@RequestMapping("/adminManagers")
	public String managersPage(Model model, HttpSession session) {
		List<ManagerBean> list = adminservice.getAllManager();
		model.addAttribute("managers", list);		
		return "backstage/managers";
	}

	// vendors
	@RequestMapping("/adminVendors")
	public String vendorsPage(Model model, HttpSession session) {
		List<VendorBean> vlist = vservice.getAllVendor();
		model.addAttribute("vlist", vlist);
		return "backstage/vendors";
	}

	// login
	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String login(Model model) {
		ManagerBean mb = new ManagerBean();
		model.addAttribute("managerBean", mb);
		return "backstage/login";
	}

	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String processlogin(@ModelAttribute("managerBean") ManagerBean mb, Model model, HttpSession session) {

		ManagerBean manager = null;
		System.out.println("admin post test");
		manager = adminservice.checkIdPassword(mb.getAccount(), mb.getPassword());
		if (manager == null) {
			session.setAttribute("errorMsg", "帳號或密碼錯誤");
			return "redirect:/adminlogin";
		}
		session.setAttribute("LoginOK", manager);
		System.out.println(manager.toString());
		return "redirect:/admin";
	}

	@RequestMapping(value = "/addMessage")
	public String addMessage(@RequestParam("id") Integer id, @RequestParam("name") String name,
			@RequestParam("time") long time, @RequestParam("msg") String msg, Model model, HttpSession session) {
		AdminMessageBean ambean = new AdminMessageBean();
		ambean.setmId(id);
		ambean.setName(name);
		ambean.setTime(new java.sql.Timestamp(time));
		ambean.setMessage(msg);
		adminservice.addMessage(ambean);
		return "redirect:/admin";
	}

	@RequestMapping(value = "/removeMessage")
	public String addMessage(@RequestParam("amId") Integer amId, Model model, HttpSession session) {
		adminservice.deleteMessage(amId);
		return "redirect:/admin";
	}

	@RequestMapping(value = "/removemanager")
	public String deletemanager(@RequestParam("ManagerBean") ManagerBean mb, Model model,
			HttpSession session) {
		adminservice.deleteManager(mb);
		return "redirect:/adminManagers";
	}
	
}

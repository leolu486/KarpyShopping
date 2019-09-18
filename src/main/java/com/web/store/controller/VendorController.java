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

import com.web.store.exception.VendorErrorException;
import com.web.store.model.VendorBean;
import com.web.store.service.VendorService;

@Controller
public class VendorController {

	// TODO: Input String check -> should not include space or special symbol which
	// likes SQL command (pending)
	// TODO: Exception Handler implements pending

	@Autowired
	VendorService service;

	@Autowired
	ServletContext context;

	@ExceptionHandler({ VendorErrorException.class })
	public ModelAndView handleError(HttpServletRequest request, VendorErrorException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidVname", exception.getVname());
		mv.addObject("exception", exception);
		mv.addObject("errorMessage", exception.getMessage());
		mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
		mv.setViewName("errorPage/vendorError");

		return mv;
	}

	@RequestMapping("/vendors")
	public String list(Model model) {
		List<VendorBean> list = service.getAllVendor();
		model.addAttribute("vendors", list);
		return "vendor/vendors";
	}

	@RequestMapping("/vendor")
	public String getVendorById(@RequestParam("vname") String vname, Model model) {
		model.addAttribute("vendor", service.getVendorByvname(vname));
		return "vendor/vendor";
	}

//新增廠商控制器
	@RequestMapping(value = "/vendor/add", method = RequestMethod.GET)
	public String getAddNewVendorForm(Model model) {
		VendorBean mb = new VendorBean();
		model.addAttribute("vendorBean", mb);
		return "vendor/addVendor";
	}

	@RequestMapping(value = "/vendor/add", method = RequestMethod.POST)
	public String processAddNewVendorForm(@ModelAttribute("vendorBean") VendorBean vb, BindingResult result,
			HttpServletRequest request) {
		service.addVendor(vb);
		return "redirect:/vendors";
	}
//更新廠商控制器
	@RequestMapping(value = "/vendor/update", method = RequestMethod.GET)
	public String getUpdateVendorForm(Model model) {
		VendorBean vb = new VendorBean();
		model.addAttribute("vendorBean", vb);
		return "vendor/updateVendor";
	}

	@RequestMapping(value = "/vendor/update", method = RequestMethod.POST)
	public String processUpdateVendorForm(@ModelAttribute("vendorBean") VendorBean vb, BindingResult result,
			HttpServletRequest request) {
		service.updateVendor(vb);
		return "redirect:/vendors";
	}
}

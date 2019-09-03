package com.web.store.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.OrderItemBean;
import com.web.store.service.OrderItemService;

@Controller
public class OrderItemController {
	@Autowired
    OrderItemService service;
	@RequestMapping("/OrderItem")
	public String list(Model model)  {
	List<OrderItemBean> list = service.getAllOrderItem();
	model.addAttribute("OrderItem", list);
	return "OrderItem";
	}
	
	@RequestMapping("/OrderItems")
	public String  getOrderItemByproductId(@RequestParam("id") Integer id, Model model) {
//		OrderItemBean bb = service.getOrderItemByproductId(id);
//		System.out.println(bb);
		model.addAttribute("OrderItems", service.getOrderItemByproductId(id));
		return "OrderItems";
	}
	
	//
//		@RequestMapping(value = "/OrderItem/add", method = RequestMethod.GET)
//		public String getAddNewVendorForm(Model model) {
//			OrderItemBean mb = new OrderItemBean();
//			model.addAttribute("OrderItemBean", mb);
//			return "insert/addOrderItem";
//		}
//
//		@RequestMapping(value = "/OrderItem/add", method = RequestMethod.POST)
//		public String processAddNewVendorForm(@ModelAttribute("OrderItem") OrderItemBean vb, BindingResult result,
//				HttpServletRequest request) {
//			service.addProduct(vb);
//			return "redirect:/OrderItems";
//		}
}

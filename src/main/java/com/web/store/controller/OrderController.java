package com.web.store.controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletRequest;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.OrderModificationException;
import com.web.store.exception.OrderNotFoundException;
import com.web.store.model.MemberBean;
import com.web.store.model.OrderBean;
import com.web.store.model.OrderItemBean;
import com.web.store.model.ProductBean;
import com.web.store.model.ShoppingCart;
import com.web.store.service.OrderService;
import com.web.store.service.ProductService;

@Controller
@SessionAttributes(value = { "oItem", "oItems", "ShoppingCart" })
public class OrderController {

	@Autowired
	OrderService service;
	// 測試用，需刪除
	@Autowired
	ProductService pserv;

	@ExceptionHandler(OrderNotFoundException.class)
	public ModelAndView OrderNotFoundError(HttpServletRequest request, OrderNotFoundException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidOid", exception.getoId());
		mv.addObject("excption", exception);
		mv.addObject("errorMsg", exception.getMessage());
		mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
		mv.setViewName("errorPage/orderNotFoundError");
		return mv;
	}
	
	
	@ExceptionHandler(OrderModificationException.class)
	public ModelAndView OrderModificationError(HttpServletRequest request, OrderModificationException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidOid", exception.getoId());
		mv.addObject("excption", exception);
		mv.addObject("errorMsg", exception.getMessage());
		mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
		mv.setViewName("errorPage/orderNotFoundError");
		return mv;
	}

	@RequestMapping("/orderPage")
	public String selectByOid(Model model) {
		OrderBean ob = new OrderBean();
		model.addAttribute(ob);
		return "order";
	}

	// 查單筆訂單
	@RequestMapping("/order")
	public String selectByOid(@RequestParam("oId") Integer oId, Model model) {
		model.addAttribute("order", service.select(oId));
		return "order";
	}

	// 查全部訂單
	@RequestMapping("/orders")
	public String select(Model model) {
		model.addAttribute("orders", service.select());
		return "orders";
	}

	// 依會員查全部訂單
	@RequestMapping("/ordersBymIdQuery")
	public String selectMemberOrders(Model model) {		
		return "ordersBymIdQuery";
	}

	// 依會員查全部訂單
	@RequestMapping("/ordersBymId")
	public String selectMemberOrders(@RequestParam("mId") Integer mId, Model model) {
		model.addAttribute("orders", service.selectMemberOrders(mId));
		return "orders";
	}

	// 依訂單編號查細項
	@RequestMapping("/orderItemByOid")
	public String displayItems(@RequestParam("oId") Integer oId, Model model) {
		model.addAttribute("items", service.queryItems(oId));
		return "displayOrderItem";
	}

	// TODO--for新增訂單測試，需刪除
	@RequestMapping("/productsAddCart")
	public String shoppingCart(Model model) {
		List<ProductBean> p = pserv.getAllProducts();
		model.addAttribute("products", p);
		return "productsAddCart";
	}

	// TODO--測試for新增訂單，需刪除
	@RequestMapping("/cart")
	public String products(@RequestParam("pId") Integer pId, Model model) {
		ProductBean pb = pserv.getProductById(pId);
		model.addAttribute("product", pb);
		return "cart";
	}

	// TODO-- 測試for新增訂單，需刪除
	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public String products(@RequestParam("pId") Integer pId, @ModelAttribute("product") ProductBean pb, Model model,
			ServletRequest request, HttpSession session) {
		Integer quantity = 0;
		quantity = Integer.valueOf(request.getParameter("amount"));	
		OrderItemBean item = new OrderItemBean();
		item.setProductId(pb.getpId());
		item.setDescription(pb.getPname());
		item.setQuantity(quantity);
		item.setUnitPrice((double) pb.getPrice());
		item.setDiscount(0.7);// ????
		Set<OrderItemBean> items = new LinkedHashSet<>();
		items.add(item);

		ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");
		if (cart == null) {
			cart = new ShoppingCart();
		}
		cart.addToCart(pId, item);
		model.addAttribute("oItem", item);
		model.addAttribute("oItems", items);
		model.addAttribute("ShoppingCart", cart);

		return "redirect:/cartConfirm";
	}

	// 測試用，需刪除
	@RequestMapping("/cartConfirm")
	public String redirectCartConfirm(Model model) {
		return "cartConfirm";
	}

	// 新增訂單表單
	@RequestMapping("/order/add")
	public String persistOrder(Model model) {
		OrderBean order = new OrderBean();
		model.addAttribute("order", order);
		return "orderConfirm";
	}

	// 新增訂單寫入資料庫
	@RequestMapping(value = "/order/add", method = RequestMethod.POST)
	public String persistOrder(@ModelAttribute("order") OrderBean order, Model model, HttpSession session,
			SessionStatus status) throws SQLException {
		MemberBean member = (MemberBean) session.getAttribute("member");
		ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");
		order.setmId(member.getmId());
		order.setOdate(new Timestamp(System.currentTimeMillis()));
		order.setPrice(cart.getSubtotal());
		order.setShippingNo("尚無單號");
		order.setStatus("未出貨");

		Set<OrderItemBean> items = new HashSet<OrderItemBean>();
		Map<Integer, OrderItemBean> cartItems = cart.getContent();
		Set<Integer> set = cartItems.keySet();
		for (Integer k : set) {
			OrderItemBean oib = cartItems.get(k);
			oib.setOrderBean(order);
			items.add(oib);
			order.setItems(items);
		}
		service.insertOrder(order);
		status.setComplete();

		return "redirect:/";
	}

	// 買家更新頁面
	@RequestMapping("/order/update")
	public String updateOrder_Page(@RequestParam("oId") Integer oId, Model model) {
		OrderBean ob = service.select(oId);
		model.addAttribute("order", ob);
		return "updateOrder";
	}

	// 買家更新
	@RequestMapping(value = "/order/update", method = RequestMethod.POST)
	public String updateOrder_buyer(@RequestParam("oId") Integer oId, @ModelAttribute("order") OrderBean ob,
			Model model, BindingResult result) {
		service.updateOrder(ob);
		return "redirect:/";
	}

	// 賣家更新頁面
	@RequestMapping("/order/VendorUpdate")
	public String VendorUpdateOrder_Page(@RequestParam("oId") Integer oId, Model model) {
		OrderBean ob = service.select(oId);
		model.addAttribute("order", ob);
		return "VendorUpdateOrder";
	}

	// 賣家更新
	@RequestMapping(value = "/order/VendorUpdate", method = RequestMethod.POST)
	public String updateOrder_Vendor(@RequestParam("oId") Integer oId, @ModelAttribute("order") OrderBean ob,
			Model model, HttpServletRequest request, BindingResult result) {
		ob.setStatus(request.getParameter("status"));
		service.VendorUpdateOrder(ob);
		return "redirect:/";
	}

	// 取消訂單
	@RequestMapping("/order/cancel")
	public String cancel(@RequestParam("oId") Integer oId, Model model) {
		service.delete(oId);
		return "redirect:/";
	}
	//轉購物車
	@RequestMapping("/aaa")
	public String aaa(Model model) {
		return "cartConfirm";
		
	}	
}

package com.web.store.controller;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
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
import com.web.store.exception.ProductStockException;
import com.web.store.model.MemberBean;
import com.web.store.model.OrderBean;
import com.web.store.model.OrderItemBean;
import com.web.store.model.ProductBean;
import com.web.store.model.ShoppingCart;
import com.web.store.service.OrderService;
import com.web.store.service.ProductService;

@Controller
@SessionAttributes(value = { "ShoppingCart" })
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
		mv.setViewName("errorPage/orderModificationError");
		return mv;
	}
	
	@ExceptionHandler(ProductStockException.class)
	public ModelAndView PrductStockError(HttpServletRequest request, ProductStockException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidOid", exception.getpId());
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

	// 查單筆訂單 ，0912 modification，賣家修改訂單 
	@RequestMapping(value="/orderPage", method=RequestMethod.POST)
	public String selectByOid(@RequestParam("oId") Integer oId, Model model) {
		if(oId == null) {
			return "order";
		}
		model.addAttribute("order", service.select(oId));
		return "order/singleOrder"; 
	}

	// 查全部訂單
	@RequestMapping("/orders")
	public String select(Model model) {
		model.addAttribute("orders", service.select());
		return "order/orders";
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
		return "order/orders"; 
	}

	// 依訂單編號查細項
	@RequestMapping("/orderItemByOid")
	public String displayItems(@RequestParam("oId") Integer oId, Model model) {
		model.addAttribute("items", service.queryItems(oId));
		return "order/orderDetail"; 
	}

	// TODO--for新增訂單測試，需刪除
	@RequestMapping("/productsAddCart")
	public String shoppingCart(Model model) {
		List<ProductBean> p = pserv.getAllProducts();
		model.addAttribute("products", p);
		return "productsAddCart";
	}
//
//	// TODO--測試for新增訂單，需刪除
//	@RequestMapping("/cart")
//	public String products(@RequestParam("pId") Integer pId, Model model) {
//		ProductBean pb = pserv.getProductById(pId);
//		model.addAttribute("product", pb);
//		return "cart";
//	}

	// 新增訂單表單，0921商品庫存檢查
	@RequestMapping("/addOrder") 
	public String persistOrder(Model model,HttpSession session,HttpServletRequest request) {
		OrderBean order = new OrderBean();
		ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");
		if(cart == null) {
			return "redirect:/home";
		}
		Map<Integer,OrderItemBean> items = cart.getContent();
		Set<Integer> productIdSet =  items.keySet();
		Iterator<Integer> it = productIdSet.iterator();
		ProductBean pb = null;
		StringBuilder error = new StringBuilder();
		while(it.hasNext()) {
			Integer productId = (Integer)it.next();		
			pb = pserv.getProductById(productId);
			Integer itemQty = items.get(productId).getQuantity();
			System.out.println("pb.getAmount()=="+pb.getAmount());
			System.out.println("itemQty=="+itemQty);
			if(pb.getAmount()-itemQty < 0 || pb.getAmount() == 0) {
				error.append(pb.getPname()+"，庫存不足，庫存量:"+ pb.getAmount()+"，請重新選購!").toString();

				request.setAttribute("errorMsg", error);
				return "/cartConfirm";
			}else if(itemQty == 0) {
				error.append("您尚未選擇"+ pb.getPname() + "的購買數量").toString();
				request.setAttribute("errorMsg", error);
				return "/cartConfirm";
			}
		}
		model.addAttribute("order", order);
		
		return "order/addOrder"; 
	}
	@RequestMapping("/ezship")
	public String ezship(Model model,HttpSession session,HttpServletRequest request) {
		OrderBean order = new OrderBean();
		String name = request.getParameter("stName");
		String ezShip = "exist";		
		request.setAttribute("name", name);
		model.addAttribute("order", order);
		model.addAttribute("ezShip", ezShip);
		return "order/addOrder";
	}

	// 新增訂單寫入資料庫
	@RequestMapping(value = "/addOrder", method = RequestMethod.POST)
	public String persistOrder(@ModelAttribute("order") OrderBean order, Model model, HttpSession session,
			SessionStatus status) throws SQLException {
		MemberBean member = (MemberBean) session.getAttribute("memberLoginOK"); // 會員登入識別字串
		ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");
		System.out.println("ShoppingCart===" + cart);
		System.out.println("MemberBean===" + member);
		//0912 新增
		Map<String,String> insertError = errMsg(order,cart);
		if(insertError.get("emptyCart") != null ) {
			model.addAttribute("insertError", insertError);
			return "order/addOrder";
		}
		order.setmId(member.getmId());
		order.setOdate(new Timestamp(System.currentTimeMillis()));
		order.setPrice(cart.getSubtotal());
		order.setShippingNo(order.getShippingNo());
		order.setStatus(order.getStatus());

		Set<OrderItemBean> items = new HashSet<OrderItemBean>();
		Map<Integer, OrderItemBean> cartItems = cart.getContent();
		Set<Integer> set = cartItems.keySet();
		for (Integer k : set) {
			OrderItemBean oib = cartItems.get(k);
			oib.setOrderBean(order);
			items.add(oib);
			order.setItems(items);
		}
		//0912 新增
		if(insertError.size()>0) {
			model.addAttribute("insertError", insertError);
			return "order/addOrder";
		}else {
			service.insertOrder(order);
			status.setComplete();
		}	

		return "redirect:/home";
	}

	// 買家更新頁面 ， 0918 checked
	@RequestMapping("/order/update")
	public String updateOrder_Page(@RequestParam("oId") Integer oId, Model model) {
		OrderBean ob = service.select(oId);
		if(ob.getStatus().equals("已出貨")||ob.getStatus().equals("取貨完成")) {
			return "redirect:/membercentre";
		}
		model.addAttribute("order", ob);
		return "/order/updateOrder";
	}

	// 買家更新
	@RequestMapping(value = "/order/update", method = RequestMethod.POST)
	public String updateOrder_buyer(@RequestParam("oId") Integer oId, @ModelAttribute("order") OrderBean ob,
			Model model, BindingResult result) {
		Integer mId =ob.getmId();
		service.updateOrder(ob);
		return "redirect:/ordersBymId?mId=" + mId;
	}

	// 賣家更新頁面
	@RequestMapping("/order/VendorUpdate")
	public String VendorUpdateOrder_Page(@RequestParam("oId") Integer oId, Model model) {
		OrderBean ob = service.select(oId);
		if(ob.getStatus().equals("取貨完成")) {
			return "redirect:/home";
		}
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
		Integer mId = service.select(oId).getmId();
		service.delete(oId);
		return "redirect:/cancelHistory?mId=" + mId;
	}
	
	//0912 買過商品查詢
	@RequestMapping("/queryOrderItemsHistory")
	public String purchaseItemsHistory(@RequestParam("mId") Integer mId,Model model) {
		List<OrderBean> orders = service.selectMemberOrders(mId);
		List<OrderItemBean> orderItems = null;		
		System.out.println("oId=====" +orders.size());
		List<OrderItemBean> copy = new ArrayList<OrderItemBean>();
		for(OrderBean ob : orders) {
			orderItems = service.queryItems(ob.getoId());
			copy.addAll(orderItems);			
		}
		model.addAttribute("items", copy);
		return "/order/orderItemsHistory";
	}	
	
	
	
	//0916取貨確認
	@RequestMapping("/orderCompletion")
	public String orderCompletion(@RequestParam("oId") Integer oId, Model model) {
		OrderBean ob = service.select(oId);
		Integer mId = ob.getmId();
		if(ob.getStatus().equals("已出貨")) {
			ob.setStatus("取貨完成");
			service.orderCompletion(ob);
			return "redirect:/ordersBymId?mId=" + mId;
		}else if(ob.getStatus().equals("取貨完成")) {
			return "/membercentre";
		}
		else {
			throw new OrderModificationException("訂單編號: " + oId +  "，" + ob.getStatus() + "，無法修改訂單");
		}
	}
	
	
	//0918退訂查詢
	@RequestMapping("/cancelHistory")
	public String cancelHistory(@RequestParam("mId") Integer mId, Model model) {
		model.addAttribute("orders", service.selectCancelOrders(mId));
		return "order/cancelHistory";
	}
	
	
	
	//0912 error message for order persistence
	public Map<String,String> errMsg(OrderBean order,ShoppingCart cart){
		Map<String,String> errorMessage = new HashMap<String,String>();
		if(order.getTel()==null || order.getTel().equals("")) {
			errorMessage.put("emptyTel", "此欄位不可為空白");
		}
		if(order.getAddr()==null || order.getAddr().equals("")) {
			errorMessage.put("emptyAddr", "此欄位不可為空白");
		}
		if(order.getConsignee()==null || order.getConsignee().equals("")) {
			errorMessage.put("emptyConsignee", "此欄位不可為空白");
		}
		if(cart== null || cart.getContent().size()==0 ) {
			errorMessage.put("emptyCart", "請挑選商品");			
		}
		
		return errorMessage;
	}

}

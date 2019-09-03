package com.web.store.service;

import java.util.List;

import com.web.store.model.OrderItemBean;

public interface OrderItemService {

	List<OrderItemBean> getAllOrderItem();
	
	public OrderItemBean getOrderItemByproductId(int productId);

//	void addProduct(OrderItemBean vb);
}

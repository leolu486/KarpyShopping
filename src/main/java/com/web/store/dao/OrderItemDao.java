package com.web.store.dao;

import java.util.List;


import com.web.store.model.OrderItemBean;

public interface OrderItemDao {
	
	List<OrderItemBean> getAllOrderItem();
	
	public OrderItemBean getOrderItemByproductId(int productId);

	//0905 Add for stock verification 
	int updateProductStock(OrderItemBean oib);

	
	
	
	
	
	
	
	
	//productId
	
//	void addProduct(OrderItemBean product);
//
//	OrderItemBean getproductById(int productId);
	

}

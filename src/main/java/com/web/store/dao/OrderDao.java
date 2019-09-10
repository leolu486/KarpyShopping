package com.web.store.dao;

import java.util.List;
import java.util.Set;

import com.web.store.model.OrderBean;
import com.web.store.model.OrderItemBean;


public interface OrderDao {

	OrderBean insertOrder(OrderBean bean);
	
	
	Integer delete(Integer oId);

	OrderBean select(Integer oId);
	List<OrderBean> select();
	List<OrderBean> selectMemberOrders(Integer mId);
	
	List<OrderItemBean> queryItems(Integer oId);

	Integer updateOrder(OrderBean ob);
	Integer VendorUpdateOrder(OrderBean ob);
	
	public void checkStock(OrderBean ob);

	
	

}
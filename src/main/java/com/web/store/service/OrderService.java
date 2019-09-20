package com.web.store.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Set;

import com.web.store.model.OrderBean;
import com.web.store.model.OrderItemBean;

public interface OrderService {

	OrderBean select(Integer oId);

	List<OrderBean> select();
	List<OrderBean> selectMemberOrders(Integer mId);
	
	List<OrderItemBean> queryItems(Integer oId);
	
	OrderBean insertOrder(OrderBean bean) throws SQLException;

	Integer delete(Integer oId);
	
	Integer updateOrder(OrderBean ob);
	Integer VendorUpdateOrder(OrderBean ob);
	
	//0905 Add for stock verification 
	public void checkStock(OrderBean ob);	


	//0918 Add for order completion
	public Integer orderCompletion(OrderBean ob);
	
	//0918 Add for cancellation history query
	public List<OrderBean> selectCancelOrders(Integer mId);

}
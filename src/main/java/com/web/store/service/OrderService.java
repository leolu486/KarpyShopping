package com.web.store.service;

import java.sql.SQLException;
import java.util.List;

import com.web.store.model.OrderBean;

public interface OrderService {

	OrderBean select(Integer oId);

	List<OrderBean> select();

	OrderBean insertOrder(OrderBean bean) throws SQLException;

	Integer delete(Integer oId);

	
	long getRecordCounts();
	
	void close();

}
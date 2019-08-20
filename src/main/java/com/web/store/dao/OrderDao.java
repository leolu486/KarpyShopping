package com.web.store.dao;

import java.util.List;

import com.web.store.model.OrderBean;

public interface OrderDao {

	OrderBean select(Integer oId);

	OrderBean select_by_pid(Integer pid);

	List<OrderBean> select();

	OrderBean insertOrder(OrderBean bean);

	Integer delete(Integer oId);

	long getRecordCounts();
	
	void close();

}
package com.web.store.service.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.store.dao.OrderDao;
import com.web.store.model.OrderBean;
import com.web.store.model.OrderItemBean;
import com.web.store.service.OrderService;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDao dao;

	@Override
	public OrderBean select(Integer oId) {
		return dao.select(oId);
	}

	@Override
	public List<OrderBean> select() {
		return dao.select();
	}

	@Override
	public List<OrderBean> selectMemberOrders(Integer mId) {		
		return dao.selectMemberOrders(mId);
	}
	
	@Override	
	public OrderBean insertOrder(OrderBean bean) throws SQLException {
		return dao.insertOrder(bean);
	}


	@Override
	public Integer delete(Integer oId) {
		return dao.delete(oId);
	}

	@Override
	public Integer updateOrder(OrderBean ob) {
		return dao.updateOrder(ob);
	}
	
	

	@Override
	public List<OrderItemBean> queryItems(Integer oId) {
		return dao.queryItems(oId);
	}

	@Override
	public Integer VendorUpdateOrder(OrderBean ob) {		
		return dao.VendorUpdateOrder(ob);
	}

	@Override
	public void checkStock(OrderBean ob) {		
		dao.checkStock(ob);
	}

	@Override
	public Integer orderCompletion(OrderBean ob) {
		return dao.orderCompletion(ob);		
	}

	@Override
	public List<OrderBean> selectCancelOrders(Integer mId) {
		return dao.selectCancelOrders(mId);		
	}




}
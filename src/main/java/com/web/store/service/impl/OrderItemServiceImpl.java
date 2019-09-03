package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.OrderItemDao;
import com.web.store.model.OrderItemBean;
import com.web.store.service.OrderItemService;
@Service
public class OrderItemServiceImpl implements OrderItemService{
	 @Autowired
	 OrderItemDao dao;
	
	 @Transactional
	@Override
	public List<OrderItemBean> getAllOrderItem() {
		
		return dao.getAllOrderItem() ;
	}

	 @Transactional
	@Override
	public OrderItemBean getOrderItemByproductId(int productId) {
		
		return dao.getOrderItemByproductId(productId);
	}

//	@Override
//	public void addProduct(OrderItemBean vb) {
//		dao.addProduct(vb);
//		
//	}

}

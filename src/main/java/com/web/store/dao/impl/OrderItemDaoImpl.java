package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.OrderDao;
import com.web.store.dao.OrderItemDao;

import com.web.store.model.OrderItemBean;
@Repository
public class OrderItemDaoImpl implements OrderItemDao{
	@Autowired
    SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<OrderItemBean> getAllOrderItem() {
		 String hql = "FROM OrderItemBean";
		 Session session = factory.getCurrentSession();
		 List<OrderItemBean> list = new ArrayList<>();
		 list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public OrderItemBean getOrderItemByproductId(int productId) {
		Session session = factory.getCurrentSession();
		OrderItemBean bb = session.get(OrderItemBean.class, productId);
		return bb;
	}

//	@Override
//	public void addProduct(OrderItemBean product) {
//		 Session session = factory.getCurrentSession();
//		 OrderDao oib = getOrderDaoById(product.getProductId());
//		 oib.setOrderNo(product.getOrderNo());
//		 session.saveOrUpdate(oib);
//	}
//
//	@Override
//	public OrderItemBean getOrderDaoById(int productId) {
//		
//		return null;
//	}

}

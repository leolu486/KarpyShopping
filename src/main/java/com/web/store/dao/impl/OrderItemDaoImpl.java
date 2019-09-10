package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.OrderDao;
import com.web.store.dao.OrderItemDao;
import com.web.store.exception.ProductStockException;
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

	
	
	
	
	
	
	//0905 Add for stock verification 
	
	@Override
	public int updateProductStock(OrderItemBean oib) {
		int n = 0;
		Integer stock = 0;
		Session session = factory.getCurrentSession();
		String hql0 = "SELECT amount FROM ProductBean WHERE pId = :pId";
		String hql1 = "UPDATE ProductBean SET amount = amount - :orderAmount WHERE pId = :pId";
		stock = (Integer) session.createQuery(hql0)
								 .setParameter("pId", oib.getProductId())
								 .uniqueResult();
		if (stock == null) {
			stock = 0;
		}
		int stockLeft = stock - oib.getQuantity();
		if (stockLeft < 0) {
			throw new ProductStockException(  //TODO  新增ProductStockException
					"庫存數量不足, 在庫量: " + stock + ", 訂購量: " 
					+ oib.getQuantity());
		}

		n =  session.createQuery(hql1)
					.setParameter("pId", oib.getProductId())
					.setParameter("orderAmount", oib.getQuantity())
					.executeUpdate();
		return n;
	}

}

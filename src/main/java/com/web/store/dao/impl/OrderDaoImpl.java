package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.OrderDao;
import com.web.store.dao.OrderItemDao;
import com.web.store.exception.OrderModificationException;
import com.web.store.exception.OrderNotFoundException;
import com.web.store.model.MemberBean;
import com.web.store.model.OrderBean;
import com.web.store.model.OrderItemBean;

@Repository
public class OrderDaoImpl implements OrderDao {

	@Autowired
	SessionFactory factory;

	@Autowired
	OrderItemDao oItemDao;

	@Override
	public OrderBean select(Integer oId) {
		Session session = factory.getCurrentSession();
		OrderBean order = session.get(OrderBean.class, oId);
		if (order == null)
			throw new OrderNotFoundException("查無此訂單編號:" + oId);
		return order;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderBean> select() {
		String hql = "FROM OrderBean";
		List<OrderBean> orders = new ArrayList<OrderBean>();
		Session session = factory.getCurrentSession();
		orders = session.createQuery(hql).getResultList();
		if (orders.size() == 0)
			throw new OrderNotFoundException("目前無訂單紀錄");
		return orders;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderBean> selectMemberOrders(Integer mId) {
		String hql = "FROM OrderBean where mId = :mId AND status != '訂單取消' " ;
		List<OrderBean> orders = new ArrayList<OrderBean>();
		Session session = factory.getCurrentSession();
		orders = session.createQuery(hql).setParameter("mId", mId).getResultList();
		if (orders.size() == 0)
			throw new OrderNotFoundException("目前無訂單紀錄");
		return orders;
	}

	@Override
	public OrderBean insertOrder(OrderBean bean) {
		OrderBean result = null;
		Session session = factory.getCurrentSession();
		MemberBean member = session.get(MemberBean.class, bean.getmId());
		bean.setMemberBean(member);
		checkStock(bean); // 0905 add for stock verification
		session.persist(bean);
		return result;
	}

	// 0905 Add for stock verification
	@Override
	public void checkStock(OrderBean ob) {
		Set<OrderItemBean> items = ob.getItems();
		for (OrderItemBean oib : items) {
			oItemDao.updateProductStock(oib);
		}
	}

	@Override
	public Integer delete(Integer oId) {
		int count = 0;
		Session session = factory.getCurrentSession();
		OrderBean ob = session.get(OrderBean.class, oId);
		if (ob.getStatus().equals("未出貨")) {
			ob.setMemberBean(null);
			session.delete(ob);
			count++;
		} else {
			throw new OrderModificationException("訂單編號: " + oId +  "，" + ob.getStatus() + "，無法修改訂單");
		}
		return count;
	}

	// 依訂單編號查詢訂單細項
	@SuppressWarnings("unchecked")
	@Override
	public List<OrderItemBean> queryItems(Integer oId) {
		String hql = "From OrderItemBean where orderBean in (select oId from OrderBean where oId = :oId)";
		Session session = factory.getCurrentSession();
		List<OrderItemBean> oib = session.createQuery(hql).setParameter("oId", oId).getResultList();
		return oib;
	}

	//0918 修改訂單狀態判斷bug 
	@Override 
	public Integer updateOrder(OrderBean ob) {
		Session session = factory.getCurrentSession();
		int count = 0;
		MemberBean mb = session.get(MemberBean.class, ob.getmId());// 也要加在add方法
		ob.setMemberBean(mb);// 也要加在add方法
		if (ob.getStatus().equals("未出貨") && !(ob.getStatus().equals("取貨完成"))) {
			session.saveOrUpdate(ob);
			count++;
		} else {
			throw new OrderModificationException("訂單編號: " + ob.getoId() + ", " + ob.getStatus() + "，無法修改訂單");
		}
		return count;
	}

	@Override
	public Integer VendorUpdateOrder(OrderBean ob) {
		Session session = factory.getCurrentSession();
		int count = 0;
		MemberBean mb = session.get(MemberBean.class, ob.getmId());// 也要加在add方法
		ob.setMemberBean(mb);// 也要加在add方法

		session.saveOrUpdate(ob);
		count++;

		return count;
	}

	//0918 add 取貨確認
	@Override
	public Integer orderCompletion(OrderBean ob) {
		Session session = factory.getCurrentSession();
		int count = 0;
		MemberBean mb = session.get(MemberBean.class, ob.getmId());
		ob.setMemberBean(mb);
		session.saveOrUpdate(ob);
		count++;
		return count;
	}
	
	//0918 Add for cancellation history query
	@SuppressWarnings("unchecked")
	@Override
	public List<OrderBean> selectCancelOrders(Integer mId) {		
		Session session = factory.getCurrentSession();
		String hql = "FROM OrderBean where mId = :mId AND status = '訂單取消' ";
		List<OrderBean> cancelOrders = session.createQuery(hql).setParameter("mId", mId).getResultList();
		if (cancelOrders.size() == 0)
			throw new OrderNotFoundException("無退訂紀錄");
		return cancelOrders;
	}

}

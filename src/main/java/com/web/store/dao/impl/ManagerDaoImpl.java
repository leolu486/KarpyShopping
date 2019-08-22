package com.web.store.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ManagerDao;
import com.web.store.exception.ManagerNotFoundException;
import com.web.store.model.ManagerBean;

@Repository
public class ManagerDaoImpl implements ManagerDao {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ManagerBean> getAllManager() {
		String hql = "FROM ManagerBean";
		Session session = null;
		List<ManagerBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public ManagerBean getManagerByAccount(String account) {
		Session session = factory.getCurrentSession();
		ManagerBean bb = session.get(ManagerBean.class, account);
		if (bb == null) {
			throw new ManagerNotFoundException("查無帳號為" + account + "的管理員", account);
		}
		return bb;
	}

	@Override
	public void addManager(ManagerBean manager) {
		Session session = factory.getCurrentSession();
		session.save(manager);
	}

	@Override
	public boolean checkIdPassword(String account, String password) {
		Session session = factory.getCurrentSession();
		ManagerBean bb = session.get(ManagerBean.class, account);
		if (bb == null || bb.getPassword().equalsIgnoreCase(password)) {
			return false;
		}
		return true;

	}

	@Override
	public void changePassWord(String account, String oldPW, String newPW) {
		// TODO Auto-generated method stub
		if(checkIdPassword(account,oldPW)) {
			Session session = factory.getCurrentSession();
			ManagerBean bb = session.get(ManagerBean.class, account);
			bb.setPassword(newPW);
			session.saveOrUpdate(bb);
		}else {
			throw new ManagerNotFoundException("帳號或密碼錯誤");
			
		}

	}

}
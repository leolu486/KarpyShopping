package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.web.store.dao.ManagerDao;
import com.web.store.exception.ManagerNotFoundException;
import com.web.store.model.ManagerBean;

import _00_init.util.GlobalService;

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
		ManagerBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM ManagerBean WHERE account =:account";
		try {
			mb = (ManagerBean) session.createQuery(hql).setParameter("account", account).getSingleResult();

		} catch (NoResultException e) {
			throw new ManagerNotFoundException("查無帳號為 " + account + " 的管理員", account);
		}
		return mb;
	}

	@Override
	public int addManager(ManagerBean manager) {

		if (manager.getAccount().equals("") || manager.getPassword().equals("") || manager.getName().equals("")) {
			throw new ManagerNotFoundException("欄位不可為空", manager.getAccount());
		}
		ManagerBean bb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM ManagerBean WHERE account =:account";
		try {
			bb = (ManagerBean) session.createQuery(hql).setParameter("account", manager.getAccount()).getSingleResult();
		} catch (NoResultException e) {
			bb = null;
		}
		if (bb == null) {
			// 將密碼加密後
			manager.setPassword(GlobalService.getMD5Endocing(GlobalService.encryptString(manager.getPassword())));
			int pk = (int) session.save(manager);
			System.out.println("pk : " + pk);
			return pk;
		} else {
			throw new ManagerNotFoundException("此帳號已存在 : ", manager.getAccount());
		}
	}

	@Override
	public ManagerBean checkIdPassword(String account, String password) {
		Session session = factory.getCurrentSession();
		ManagerBean mb = null;
		String hql = "FROM ManagerBean WHERE account =:account and password =:password";
		try {
			mb = (ManagerBean) session.createQuery(hql).setParameter("account", account)
					.setParameter("password", GlobalService.getMD5Endocing(GlobalService.encryptString(password)))
					.getSingleResult();
		} catch (NoResultException e) {
			throw new ManagerNotFoundException("帳號或是密碼錯誤 : ", account);
		}
		return mb;

	}

	@Override
	public void changePassWord(ManagerBean mb, String newPW) {
		// TODO Auto-generated method stub
		if (newPW.equalsIgnoreCase("")) {
			throw new ManagerNotFoundException("新密碼不可為空白");
		}
		Session session = factory.getCurrentSession();
		mb.setPassword(GlobalService.getMD5Endocing(GlobalService.encryptString(newPW)));
		try {
			session.saveOrUpdate(mb);
		} catch (Exception e) {
			e.printStackTrace();
			throw new ManagerNotFoundException("修改密碼發生錯誤");
		}

	}

}
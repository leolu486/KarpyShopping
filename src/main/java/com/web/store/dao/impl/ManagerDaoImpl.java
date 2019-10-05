package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ManagerDao;
import com.web.store.exception.ManagerNotFoundException;
import com.web.store.exception.MemberNotFoundException;
import com.web.store.exception.VendorErrorException;
import com.web.store.model.AdminMessageBean;
import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
import com.web.store.model.VendorBean;

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
	public void updateManager(ManagerBean mb) {
		Session session = factory.getCurrentSession();

		ManagerBean mbb = getManagerByid(mb.getId());
		if (mb.getName() != null && mb.getName().trim().length() > 0)
			mbb.setName(mb.getName());
		if (mb.getAccount() != null && mb.getAccount().trim().length() > 0)
			mbb.setAccount(mb.getAccount());
		if (mb.getPassword() != null && mb.getPassword().trim().length() > 0)
			mbb.setPassword(GlobalService.getMD5Endocing(GlobalService.encryptString(mb.getPassword())));
		
		session.saveOrUpdate(mbb);
	}
	
	
	@Override
	public ManagerBean getManagerByid(Integer id) {
		Session session = factory.getCurrentSession();
		ManagerBean mb = session.get(ManagerBean.class, id);
		if (id == null) {
			throw new VendorErrorException("查無此管理員",id.toString());
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
//			throw new ManagerNotFoundException("帳號或是密碼錯誤 : ", account);
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

	@SuppressWarnings("unchecked")
	@Override
	public List<AdminMessageBean> getLastFiveMessage() {
		String hql = "FROM AdminMessageBean ORDER BY time DESC";
		List<AdminMessageBean> list = null;
		Session session = factory.getCurrentSession();

		list = session.createQuery(hql).setMaxResults(5).getResultList();

		return list;
	}

	@Override
	public int addMessage(AdminMessageBean ambean) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		ManagerBean mb = session.get(ManagerBean.class, ambean.getmId());
		ambean.setManagerBean(mb);
		int pk = (int) session.save(ambean);
		System.out.println("pk : " + pk);
		return pk;

	}

	@Override
	public void deleteMessage(Integer amId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		AdminMessageBean ambean = session.get(AdminMessageBean.class, amId);
		ambean.setManagerBean(null);// prevent foreign key problem
		session.delete(ambean);
	}

	@Override
	public int deleteManager(Integer id) {
		// TODO Auto-generated method stub
		int count = 0;

		Session session = factory.getCurrentSession();
		ManagerBean manager = session.get(ManagerBean.class, id);
		
		if (manager != null)
			session.delete(manager);

		count++;
		return count;
	}
	
	@Override
	public int deleteManager(ManagerBean mb) {
		// TODO Auto-generated method stub
		int count = 0;

		Session session = factory.getCurrentSession();
		ManagerBean manager = session.get(ManagerBean.class, mb.getId());
		
		if (manager != null)
			session.delete(manager);

		count++;
		return count;
	}



}
package com.web.store.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.MemberDao;
import com.web.store.exception.MemberNotFoundException;
import com.web.store.exception.VendorErrorException;
import com.web.store.model.CreditCardBean;
import com.web.store.model.MemberBean;
import com.web.store.model.VendorBean;

import _00_init.util.GlobalService;

@Repository("")
public class MemberDaoImpl implements MemberDao {

	SessionFactory factory;

	public MemberDaoImpl() {
	}

	public SessionFactory getSessionFactory() {
		return factory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public boolean idExists(Integer mId) {
		boolean exist = false;
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "from MemberBean where mId = :mId";
		List<?> list = session.createQuery(hql).setParameter("mId", mId).getResultList();
		try {
			mb = (MemberBean) session.createQuery(hql).setParameter("mId", mId).getSingleResult();

		} catch (NoResultException e) {
			throw new MemberNotFoundException();
		}
		if (!list.isEmpty()) {
			exist = true;
		}
		return exist;
	}

	@SuppressWarnings("unchecked")
	public List<MemberBean> getAllMember() {
		List<MemberBean> allMember = new ArrayList<MemberBean>();
		Session session = factory.getCurrentSession();
		allMember = session.createQuery("FROM MemberBean").list();
		return allMember;
	}

	public int updateMember(MemberBean mb) {
		int count = 0;
		if (idExists(mb.getmId())) {
			MemberBean member = null;
			Session session = factory.getCurrentSession();
			member = getMemberByAccount(mb.getAccount());
			member.setAddr(mb.getAddr());
			member.setBirthday(mb.getBirthday());
			member.setEmail(mb.getEmail());
			member.setGender(mb.getGender());
			member.setMemberImage(mb.getMemberImage());
			member.setTel(mb.getTel());
			member.setName(mb.getName());
			member.setSaddr(mb.getSaddr());
			member.setPassword(mb.getPassword());
			session.update(member);
		} else {

		}
		count++;
		return count;
	}

	@Override
	public MemberBean getMemberByAccount(String account) {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean WHERE account =:account";
		try {
			mb = (MemberBean) session.createQuery(hql).setParameter("account", account).getSingleResult();

		} catch (NoResultException e) {
			throw new MemberNotFoundException("查無帳號為 " + account + " 的會員", account);
		}
		return mb;
	}

	@Override
	public int deleteMember(MemberBean mb) {
		int count = 0;
		if (idExists(mb.getmId())) {
			Session session = factory.getCurrentSession();
			MemberBean member = session.get(MemberBean.class, mb.getmId());
			session.delete(member);
		}
		count++;
		return count;
	}

	@Override
	public void changePassword(MemberBean mb, String newPw) {
		if (newPw.equalsIgnoreCase("")) {
			throw new MemberNotFoundException("新密碼不可為空白");
		}
		Session session = factory.getCurrentSession();
		mb.setPassword(GlobalService.getMD5Endocing(GlobalService.encryptString(newPw)));
		try {
			session.saveOrUpdate(mb);
		} catch (Exception e) {
			throw new MemberNotFoundException("修改密碼發生錯誤");
		}
	}

	@Override
	public MemberBean checkIdPassword(String account, String password) {
		Session session = factory.getCurrentSession();
		MemberBean mb = null;
		String hql = "FROM MemberBean WHERE account =:account and password =:password";
		try {
			mb = (MemberBean) session.createQuery(hql).setParameter("account", account)
					.setParameter("password", GlobalService.getMD5Endocing(GlobalService.encryptString(password)))
					.getSingleResult();
		} catch (NoResultException e) {
			throw new MemberNotFoundException("帳號或是密碼錯誤 : ", account);
		}
		return mb;
	}

	@Override
	public int addMember(MemberBean member) {
		if (member.getAccount().equals("") || member.getPassword().equals("") || member.getName().equals("")) {
			throw new MemberNotFoundException("欄位不可為空", member.getAccount());
		}
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean WHERE account =:account";
		try {
			mb = (MemberBean) session.createQuery(hql).setParameter("account", member.getAccount()).getSingleResult();
		} catch (NoResultException e) {
			mb = null;
		}
		if (mb == null) {
			// 將密碼加密後
			member.setPassword(GlobalService.getMD5Endocing(GlobalService.encryptString(member.getPassword())));
			int pk = (int) session.save(member);
			System.out.println("pk:" + pk);
			return pk;
		} else {
			throw new MemberNotFoundException("此帳號已存在 : ", member.getAccount());
		}
	}

	@Override
	public int addCreditCard(CreditCardBean card) {
		Session session = factory.getCurrentSession();
		int ca = (int) session.save(card);
		return ca;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CreditCardBean> getCreditCardsBymId(Integer mId) {
		List<CreditCardBean> list = new ArrayList<CreditCardBean>();
		Session session = factory.getCurrentSession();
		String hql = "FROM CreditCardBean WHERE mId =:mId";
		try {
			list = (List<CreditCardBean>) session.createQuery(hql).setParameter("mId", mId).getResultList();

		} catch (NoResultException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public CreditCardBean getCreditCardBycId(Integer cId) {
		CreditCardBean cb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM CreditCardBean WHERE cId =:cId";
		try {
			cb = (CreditCardBean) session.createQuery(hql).setParameter("cId", cId).getSingleResult();

		} catch (NoResultException e) {
			e.printStackTrace();
		}
		return cb;
	}

	@Override
	public MemberBean getMemberBymId(Integer mId) {
		// TODO Auto-generated method stub

		Session session = factory.getCurrentSession();
		MemberBean mb = session.get(MemberBean.class, mId);
		if (mb == null) {
			throw new MemberNotFoundException("查無此廠商", mId.toString());

		}
		return mb;
	}

}

package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.NonUniqueResultException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.MemberDao;
import com.web.store.exception.MemberNotFoundException;
import com.web.store.model.CouponBean;
import com.web.store.model.CreditCardBean;
import com.web.store.model.MemberBean;
import com.web.store.model.TaxIdBean;

import _00_init.util.GlobalService;
import _00_init.util.SystemUtils2019;

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
		System.out.println("idExists()mId:" + mId);
		boolean exist = false;

		Session session = factory.getCurrentSession();
		String hql = "from MemberBean where mId = :mId";

		try {
			session.createQuery(hql).setParameter("mId", mId).getSingleResult();
			exist = true;
		} catch (NoResultException e) {
			throw new MemberNotFoundException();
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

	public MemberBean updateMember(MemberBean mb) {
		MemberBean member = null;
		Session session = factory.getCurrentSession();
		// find member object
		member = getMemberBymId(mb.getmId());
		// update member object
		if (mb.getAddr() != null && mb.getAddr().trim().length() > 0)
			member.setAddr(mb.getAddr());
		if (mb.getBirthday() != null)
			member.setBirthday(mb.getBirthday());
		if (mb.getEmail() != null && mb.getEmail().trim().length() > 0)
			member.setEmail(mb.getEmail());
		if (mb.getGender() != null)
			member.setGender(mb.getGender());
		if (mb.getMemberImage() != null)
			member.setMemberImage(mb.getMemberImage());
		if (mb.getTel() != null && mb.getTel().trim().length() > 0)
			member.setTel(mb.getTel());
		if (mb.getName() != null && mb.getName().trim().length() > 0)
			member.setName(mb.getName());
		if (mb.getSaddr() != null && mb.getSaddr().trim().length() > 0)
			member.setSaddr(mb.getSaddr());
		if (mb.getPassword() != null && mb.getPassword().trim().length() > 0)
			member.setPassword(mb.getPassword());

		session.update(member);

		return member;

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
			member.setRdate(new java.sql.Timestamp(new Date().getTime()));
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
		if (mb != null)
			System.out.println(mb.toString());
		return mb;
	}

	@Override
	public MemberBean getMemberByGmail(String gmail) throws NoResultException, NonUniqueResultException {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean WHERE gmail =:gmail";
		mb = (MemberBean) session.createQuery(hql).setParameter("gmail", gmail).getSingleResult();
		return mb;
	}

	/**
	 * this method will be used when client want to login with gmail account while
	 * there's no match in database. parameter's properties of gmail, pictureURL,
	 * name must not be null
	 * 
	 * @return:Primary Key
	 */

	@Override
	public int addGmailMember(MemberBean member) {
		Session session = factory.getCurrentSession();
		member.setMemberImage(SystemUtils2019.pictureURLToBlob(member.getName(), member.getPictureURL()));
		member.setRdate(new java.sql.Timestamp(new Date().getTime()));
		int pk = (int) session.save(member);
		System.out.println("pk:" + pk);
		return pk;

	}

	@Override
	public MemberBean getMemberByLine(String line) throws NoResultException, NonUniqueResultException {
		// TODO Auto-generated method stub
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM MemberBean WHERE line =:line";
		mb = (MemberBean) session.createQuery(hql).setParameter("line", line).getSingleResult();
		return mb;
	}

	@Override
	public int addLineMember(MemberBean member) {
		Session session = factory.getCurrentSession();
		member.setMemberImage(SystemUtils2019.pictureURLToBlob(member.getName(), member.getPictureURL()));
		member.setRdate(new java.sql.Timestamp(new Date().getTime()));
		int pk = (int) session.save(member);
		System.out.println("pk:" + pk);
		return pk;
	}

	@Override
	public void deleteCreditCard(Integer cId) {
		Session session = factory.getCurrentSession();
		CreditCardBean cb = session.get(CreditCardBean.class, cId);
		session.delete(cb);
	}

//	@Override
//	public MemberBean updateTaxId(MemberBean mb) {
//		MemberBean member = null;
//		Session session = factory.getCurrentSession();
//		member = getMemberBymId(mb.getmId());
//		
//		if(mb.getTaxId() != null && mb.getTaxId().trim().length() >0)
//			member.setTaxId(mb.getTaxId());
//		session.update(member);
//		return member;
//	}
//
//	@Override
//	public MemberBean updateVehicle(MemberBean mb) {
//		MemberBean member = null;
//		Session session = factory.getCurrentSession();
//		member = getMemberBymId(mb.getmId());
//		
//		if(mb.getVehicle() != null && mb.getVehicle().trim().length() >0)
//			member.setVehicle(mb.getVehicle());
//		session.update(member);
//		return member;	
//	}
	@SuppressWarnings("unchecked")
	@Override
	public List<TaxIdBean> getTaxIdBymid(Integer mId) {
		List<TaxIdBean> list = new ArrayList<TaxIdBean>();
		Session session = factory.getCurrentSession();
		String hql = "FROM TaxIdBean WHERE mId =:mId";
		try {
			list = (List<TaxIdBean>) session.createQuery(hql).setParameter("mId", mId).getResultList();

		} catch (NoResultException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public TaxIdBean getTaxIdBytId(Integer tId) {
		TaxIdBean tb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM TaxIdBean WHERE tId =:tId";
		try {
			tb = (TaxIdBean) session.createQuery(hql).setParameter("tId", tId).getSingleResult();

		} catch (NoResultException e) {
			e.printStackTrace();
		}
		return tb;
	}

	@Override
	public int addTaxId(TaxIdBean tId) {
		Session session = factory.getCurrentSession();
		int ta = (int) session.save(tId);
		return ta;
	}

	@Override
	public void deleteTaxId(Integer tId) {
		Session session = factory.getCurrentSession();
		TaxIdBean tb = session.get(TaxIdBean.class, tId);
		session.delete(tb);
	}

	@Override
	public MemberBean updateVehicle(MemberBean mb) {
		MemberBean member = null;
		Session session = factory.getCurrentSession();
		member = getMemberBymId(mb.getmId());

		if (mb.getVehicle() != null && mb.getVehicle().trim().length() > 0)
			member.setVehicle(mb.getVehicle());

		session.update(member);

		return mb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CouponBean> getCouponsBymId(Integer mId) {
		List<CouponBean> list = new ArrayList<CouponBean>();
		Session session = factory.getCurrentSession();
		String hql = "FROM CouponBean WHERE mId =:mId and status=:status";
		try {
			list = (List<CouponBean>) session.createQuery(hql).setParameter("mId", mId).setParameter("status", true)
					.getResultList();

		} catch (NoResultException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getCoupon(CouponBean cb) {
		// TODO Auto-generated method stub
		int pk = 0;
		Session session = factory.getCurrentSession();
		if (!couponExist(cb)) {
			cb.setMemberbean(getMemberBymId(cb.getmId()));
			pk = (int) session.save(cb);
			System.out.println("pk:" + pk);
		}

		return pk;
	}

	@Override
	public void useCoupon(Integer cId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		CouponBean cb = session.get(CouponBean.class, cId);
		cb.setStatus(false);
		session.saveOrUpdate(cb);
	}

	@Override
	public boolean couponExist(CouponBean cb) {
		// TODO Auto-generated method stub
		boolean exist = false;
		int mId = cb.getmId();
		String token = cb.getToken();

		Session session = factory.getCurrentSession();
		String hql = "from CouponBean where mId = :mId and token = :token";

		try {
			session.createQuery(hql).setParameter("mId", mId).setParameter("token", token).getSingleResult();
			exist = true;
		} catch (NoResultException e) {
			exist = false;
			System.out.println("折價卷不存在: [" + mId + ", " + token + "]");
		}
		return exist;
	}

	@Override
	public CouponBean getCouponBycId(Integer cId) {
		// TODO Auto-generated method stub
		CouponBean cb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM CouponBean WHERE cId =:cId";
		cb = (CouponBean) session.createQuery(hql).setParameter("cId", cId).getSingleResult();
		return cb;
	}

	@Override
	public void resetCoupon(Integer cId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		CouponBean cb = session.get(CouponBean.class, cId);
		cb.setStatus(true);
		session.saveOrUpdate(cb);
	}

}

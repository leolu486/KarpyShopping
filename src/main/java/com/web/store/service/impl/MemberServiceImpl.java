package com.web.store.service.impl;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.NonUniqueResultException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.MemberDao;
import com.web.store.model.CouponBean;
import com.web.store.model.CreditCardBean;
import com.web.store.model.MemberBean;
import com.web.store.model.TaxIdBean;
import com.web.store.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Transactional
	@Override
	public List<MemberBean> getAllMember() {
		return dao.getAllMember();
	}

	@Transactional
	@Override
	public MemberBean getMemberByAccount(String account) {
		return dao.getMemberByAccount(account);
	}

	@Transactional
	@Override
	public MemberBean updateMember(MemberBean mb) {
		return dao.updateMember(mb);
	}

	@Transactional
	@Override
	public int deleteMember(MemberBean mb) {
		return dao.deleteMember(mb);
	}
	
	@Transactional
	@Override
	public int deleteMember(Integer mId) {
		return dao.deleteMember(mId);
	}

	@Transactional
	@Override
	public void changePassword(MemberBean mb, String newPw) {
		dao.changePassword(mb, newPw);
	}

	@Transactional
	@Override
	public MemberBean checkIdPassword(String account, String password) {
		return dao.checkIdPassword(account, password);
	}

	@Transactional
	@Override
	public boolean idExists(Integer mId) {
		return dao.idExists(mId);
	}

	@Transactional
	@Override
	public int addMember(MemberBean member) {
		// TODO Auto-generated method stub
		return dao.addMember(member);
	}

	@Transactional
	@Override
	public int addCreditCard(CreditCardBean card) {
		// TODO Auto-generated method stub
		return dao.addCreditCard(card);
	}

	@Transactional
	@Override
	public List<CreditCardBean> getCreditCardsBymId(Integer mId) {
		// TODO Auto-generated method stub
		return dao.getCreditCardsBymId(mId);
	}

	@Transactional
	@Override
	public CreditCardBean getCreditCardBycId(Integer cId) {
		// TODO Auto-generated method stub
		return dao.getCreditCardBycId(cId);
	}

	@Transactional
	@Override
	public MemberBean getMemberBymId(Integer mId) {
		// TODO Auto-generated method stub
		return dao.getMemberBymId(mId);
	}

	@Transactional
	@Override
	public MemberBean getMemberByGmail(String gmail) throws NoResultException, NonUniqueResultException {
		// TODO Auto-generated method stub
		return dao.getMemberByGmail(gmail);
	}

	@Transactional
	@Override
	public int addGmailMember(MemberBean member) {
		// TODO Auto-generated method stub
		return dao.addGmailMember(member);
	}

	@Transactional
	@Override
	public MemberBean getMemberByLine(String line) throws NoResultException, NonUniqueResultException {
		// TODO Auto-generated method stub
		return dao.getMemberByLine(line);
	}
	@Transactional
	@Override
	public int addLineMember(MemberBean member) {
		// TODO Auto-generated method stub
		return dao.addLineMember(member);
	}
	@Transactional
	@Override
	public void deleteCreditCard(Integer cId) {
		// TODO Auto-generated method stub
		dao.deleteCreditCard(cId);
	}
	@Transactional
	@Override
	public List<TaxIdBean> getTaxIdBymid(Integer mId) {
		// TODO Auto-generated method stub
		return dao.getTaxIdBymid(mId);
	}
	@Transactional
	@Override
	public TaxIdBean getTaxIdBytId(Integer tId) {
		// TODO Auto-generated method stub
		return dao.getTaxIdBytId(tId);
	}
	@Transactional
	@Override
	public int addTaxId(TaxIdBean tId) {
		// TODO Auto-generated method stub
		return dao.addTaxId(tId);
	}
	@Transactional
	@Override
	public void deleteTaxId(Integer tId) {
		// TODO Auto-generated method stub
		dao.deleteTaxId(tId);
	}
	@Transactional
	@Override
	public MemberBean updateVehicle(MemberBean mb) {
		// TODO Auto-generated method stub
		return dao.updateVehicle(mb);
	}
	@Transactional
	@Override
	public List<CouponBean> getCouponsBymId(Integer mId) {
		// TODO Auto-generated method stub
		return dao.getCouponsBymId(mId);
	}
	@Transactional
	@Override
	public int getCoupon(CouponBean cb) {
		// TODO Auto-generated method stub
		return dao.getCoupon(cb);
	}
	@Transactional
	@Override
	public void useCoupon(Integer cId) {
		// TODO Auto-generated method stub
		dao.useCoupon(cId);
	}
	@Transactional
	@Override
	public CouponBean getCouponBycId(Integer cId) {
		// TODO Auto-generated method stub
		return dao.getCouponBycId(cId);
	}
	@Transactional
	@Override
	public void resetCoupon(Integer cId) {
		// TODO Auto-generated method stub
		dao.resetCoupon(cId);
	}


}
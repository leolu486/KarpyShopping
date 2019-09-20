package com.web.store.service;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.NonUniqueResultException;

import com.web.store.model.CreditCardBean;
import com.web.store.model.MemberBean;

public interface MemberService {
	List<MemberBean> getAllMember();

	MemberBean getMemberByAccount(String account);

	MemberBean updateMember(MemberBean mb);

	int deleteMember(MemberBean mb);

	void changePassword(MemberBean mb, String newPw);

	int addMember(MemberBean member);

	MemberBean checkIdPassword(String account, String password);

	boolean idExists(Integer mId);

	int addCreditCard(CreditCardBean cId);

	List<CreditCardBean> getCreditCardsBymId(Integer mId);

	CreditCardBean getCreditCardBycId(Integer cId);

	MemberBean getMemberBymId(Integer mId);

	MemberBean getMemberByGmail(String gmail)  throws NoResultException, NonUniqueResultException;

	int addGmailMember(MemberBean member);
	
	MemberBean getMemberByLine(String line) throws NoResultException, NonUniqueResultException;
	
	int addLineMember(MemberBean member);

}
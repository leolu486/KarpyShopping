package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.MemberDao;
import com.web.store.model.MemberBean;
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
	public int updateMember(MemberBean mb) {
		return dao.updateMember(mb);
	}

	@Transactional
	@Override
	public int deleteMember(MemberBean mb) {
		return dao.deleteMember(mb);
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
	public void addMember(MemberBean member) {
		// TODO Auto-generated method stub
		dao.addMember(member);
	}

}
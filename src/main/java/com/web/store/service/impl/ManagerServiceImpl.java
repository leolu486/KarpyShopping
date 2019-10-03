package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ManagerDao;
import com.web.store.model.AdminMessageBean;
import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;
import com.web.store.service.ManagerService;
@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	ManagerDao dao;
	@Transactional
	@Override
	public List<ManagerBean> getAllManager() {
		// TODO Auto-generated method stub
		return dao.getAllManager();
	}
	@Transactional
	@Override
	public ManagerBean getManagerByAccount(String account) {
		return dao.getManagerByAccount(account);
	}
	@Transactional
	@Override
	public int addManager(ManagerBean manager) {
		// TODO Auto-generated method stub
		return dao.addManager(manager);
	}
	
	@Transactional
	@Override
	public int deleteManager(ManagerBean mb) {
		return dao.deleteManager(mb);
	}
	
	@Transactional
	@Override
	public ManagerBean checkIdPassword(String account, String password) {
		// TODO Auto-generated method stub
		return dao.checkIdPassword(account, password);
	}
	@Transactional
	@Override
	public void changePassWord(ManagerBean mb,String newPW) {
		// TODO Auto-generated method stub
		dao.changePassWord(mb,newPW);
	}
	@Transactional
	@Override
	public List<AdminMessageBean> getLastFiveMessage() {
		// TODO Auto-generated method stub
		return dao.getLastFiveMessage();
	}
	@Transactional
	@Override
	public int addMessage(AdminMessageBean ambean) {
		// TODO Auto-generated method stub
		return dao.addMessage(ambean);
	}
	@Transactional
	@Override
	public void deleteMessage(Integer amId) {
		// TODO Auto-generated method stub
		dao.deleteMessage(amId);
	}



}
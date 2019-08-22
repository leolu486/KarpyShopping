package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ManagerDao;
import com.web.store.model.ManagerBean;
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
	public void addManager(ManagerBean manager) {
		// TODO Auto-generated method stub
		dao.addManager(manager);
	}
	@Transactional
	@Override
	public boolean checkIdPassword(String account, String password) {
		// TODO Auto-generated method stub
		return dao.checkIdPassword(account, password);
	}
	@Transactional
	@Override
	public void changePassWord(String account, String oldPW, String newPW) {
		// TODO Auto-generated method stub
		dao.changePassWord(account, oldPW, newPW);
	}



}
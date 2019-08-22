package com.web.store.service;

import java.util.List;

import com.web.store.model.ManagerBean;

public interface ManagerService {

	List<ManagerBean> getAllManager();
	
	ManagerBean getManagerByAccount(String account);
	
	void addManager(ManagerBean manager);
	
	boolean checkIdPassword(String account, String password);

	void changePassWord(String account, String oldPW, String newPW);

}
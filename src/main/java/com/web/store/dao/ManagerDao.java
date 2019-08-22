package com.web.store.dao;

import java.util.List;

import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;

public interface ManagerDao {

	List<ManagerBean> getAllManager();
	
	ManagerBean getManagerByAccount(String account);
	
	void addManager(ManagerBean manager);
	
	boolean checkIdPassword(String account, String password);

	void changePassWord(String account, String oldPW, String newPW);
}
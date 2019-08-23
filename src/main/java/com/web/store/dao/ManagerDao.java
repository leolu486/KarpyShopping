package com.web.store.dao;

import java.util.List;

import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;

public interface ManagerDao {

	List<ManagerBean> getAllManager();
	
	ManagerBean getManagerByAccount(String account);
	
	void addManager(ManagerBean manager);
	
	ManagerBean checkIdPassword(String account, String password);

	void changePassWord(ManagerBean mb,String newPW);
}
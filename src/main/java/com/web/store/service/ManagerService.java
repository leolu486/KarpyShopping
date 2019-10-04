package com.web.store.service;

import java.util.List;

import com.web.store.model.AdminMessageBean;
import com.web.store.model.ManagerBean;
import com.web.store.model.MemberBean;

public interface ManagerService {

	List<ManagerBean> getAllManager();

	ManagerBean getManagerByAccount(String account);

	int addManager(ManagerBean manager);

	int deleteManager(Integer id);
	
	int deleteManager(ManagerBean mb);
		
	ManagerBean checkIdPassword(String account, String password);

	void changePassWord(ManagerBean mb, String newPW);

	List<AdminMessageBean> getLastFiveMessage();

	int addMessage(AdminMessageBean ambean);

	void deleteMessage(Integer amId);

}
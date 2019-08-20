package com.web.store.service;

import java.util.List;

import com.web.store.model.ManagerBean;

public interface ManagerService {

	ManagerBean select(Integer id);

	ManagerBean select(String name);

	List<ManagerBean> select();

	ManagerBean insertManager(ManagerBean bean);

	int delete(Integer id);

	long getRecordCounts();
	
	void close();

}
package com.web.store.dao;

import java.util.List;

import com.web.store.model.ManagerBean;

public interface ManagerDao {

	ManagerBean select(Integer id);

	ManagerBean select(String name);

	List<ManagerBean> select();

	ManagerBean insertManager(ManagerBean bean);

	Integer delete(Integer id);

	long getRecordCounts();
	
	void close();

}
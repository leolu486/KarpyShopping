package com.web.store.dao;

import java.util.List;

import com.web.store.model.HotSearchBean;

public interface HotSearchDao {
	
	List<HotSearchBean> getTop5();
	
	void checkExist(String searchBy); 

}

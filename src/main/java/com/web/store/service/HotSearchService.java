package com.web.store.service;

import java.util.List;

import com.web.store.model.HotSearchBean;

public interface HotSearchService {

List<HotSearchBean> getTop5();
	
void checkExist(String searchBy); 
	
}

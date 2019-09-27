package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.HotSearchDao;
import com.web.store.model.HotSearchBean;
import com.web.store.service.HotSearchService;

@Service
public class HotSearchServiceImpl implements HotSearchService{

	@Autowired
	HotSearchDao dao;

	@Transactional
	@Override
	public List<HotSearchBean> getTop5() {		
		return dao.getTop5();
	}

	@Transactional
	@Override
	public void checkExist(String searchBy) {
		dao.checkExist(searchBy);
	}
	
	
	

}

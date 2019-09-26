package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.HotSearchDao;
import com.web.store.model.HotSearchBean;

@Repository
public class HotSearchDaoImpl implements HotSearchDao {

	@Autowired
	SessionFactory factory;
	
	public HotSearchDaoImpl() {
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HotSearchBean> getTop5() {
		String hql = "FROM HotSearchBean ORDER BY searchCount DESC";
		List<HotSearchBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();

		list = session.createQuery(hql).setMaxResults(5).getResultList();

		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public void checkExist(String searchBy) {
		String hql = "FROM HotSearchBean WHERE searchBy = :searchBy";
		List<HotSearchBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();

		list = session.createQuery(hql).setParameter("searchBy", searchBy.toLowerCase()).getResultList();
		if(list.size() > 0) {
			HotSearchBean hb = list.get(0);
			hb.setSearchCount(hb.getSearchCount() + 1);
			session.update(hb);
		}else {
			HotSearchBean hb = new HotSearchBean();
			hb.setSearchBy(searchBy.toLowerCase());
			hb.setSearchCount(0);
			session.save(hb);
		}
	}

}

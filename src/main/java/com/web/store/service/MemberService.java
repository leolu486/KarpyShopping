package com.web.store.service;

import java.util.List;

import com.web.store.model.MemberBean;

public interface MemberService {

	MemberBean select(Integer mId);

	MemberBean select(String name);

	List<MemberBean> select();

	MemberBean insertMember(MemberBean bean);

	Integer delete(Integer mId);

	long getRecordCounts();
	

	void close();

	MemberBean checkAccountPassword(String userId, String password);

}
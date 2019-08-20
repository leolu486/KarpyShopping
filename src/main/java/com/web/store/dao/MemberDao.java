package com.web.store.dao;

import java.util.List;

import com.web.store.model.MemberBean;

public interface MemberDao {

	MemberBean select(Integer mId);

	MemberBean select(String name);

	List<MemberBean> select();

	MemberBean insertMember(MemberBean bean);
	
	MemberBean insertMember_With_memberImage(MemberBean bean);

	MemberBean checkAccountPassword(String userAccount, String password);
	
	Integer delete(Integer mId);

	long getRecordCounts();
	
	void close();





}
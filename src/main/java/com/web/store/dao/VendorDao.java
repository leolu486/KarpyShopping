package com.web.store.dao;

import java.util.List;

import com.web.store.model.VendorBean;

public interface VendorDao {

	VendorBean select(Integer vId);

	VendorBean select(String vname);

	List<VendorBean> select();

	VendorBean insertVendor(VendorBean bean);

	Integer delete(Integer vId);
	
	long getRecordCounts();
	
	void close();

}
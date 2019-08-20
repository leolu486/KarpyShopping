package com.web.store.service;

import java.util.List;

import com.web.store.model.VendorBean;

public interface VendorService {

	VendorBean select(Integer vId);

	VendorBean select(String vName);

	List<VendorBean> select();

	VendorBean insertVendor(VendorBean bean);

	Integer delete(Integer vId);

	long getRecordCounts();
	
	void close();

}
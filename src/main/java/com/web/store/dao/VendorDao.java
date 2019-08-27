package com.web.store.dao;

import java.util.List;

import com.web.store.model.VendorBean;

public interface VendorDao {

	List<VendorBean> getAllVendor();

	void addVendor(VendorBean vb);

	VendorBean getVendorByvname(String vname);
}
package com.web.store.service;

import java.util.List;

import com.web.store.model.VendorBean;

public interface VendorService {


	List<VendorBean> getAllVendor();

	void addVendor(VendorBean vb);

	VendorBean getVendorByvname(String vname);

}
package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.VendorDao;
import com.web.store.model.VendorBean;
import com.web.store.service.VendorService;

@Service
public class VendorServiceImpl implements VendorService {
	@Autowired
	VendorDao dao;

	@Transactional
	@Override
	public List<VendorBean> getAllVendor() {
		// TODO Auto-generated method stub
		return dao.getAllVendor();
	}

	@Transactional
	@Override
	public void addVendor(VendorBean vb) {
		// TODO Auto-generated method stub
		dao.addVendor(vb);
	}

	@Transactional
	@Override
	public VendorBean getVendorByvname(String vname) {
		// TODO Auto-generated method stub
		return dao.getVendorByvname(vname);
	}

	@Transactional
	@Override
	public VendorBean getVendorByvId(Integer vId) {
		// TODO Auto-generated method stub
		return dao.getVendorByvId(vId);
	}

	@Transactional
	@Override
	public void updateVendor(VendorBean vb) {
		dao.updateVendor(vb);

	}
	@Transactional
	@Override
	public void removeVendor(Integer vId) {
		// TODO Auto-generated method stub
		dao.removeVendor(vId);
	}

}
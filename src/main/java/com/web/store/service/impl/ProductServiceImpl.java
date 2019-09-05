package com.web.store.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ProductDao;
import com.web.store.dao.impl.ProductDaoImpl;
import com.web.store.model.ProductBean;
import com.web.store.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDao dao;

	@Transactional
	@Override
	public ProductBean getProductById(Integer pId) {	
		return dao.getProductById(pId);
	}

	@Transactional
	@Override
	public ProductBean getProductByName(String pname) {
		return dao.getProductByName(pname);
	}

	@Transactional
	@Override
	public List<ProductBean> getProductByVendor(Integer vId) {
		return dao.getProductByVendor(vId);
	}
	
	@Transactional
	@Override
	public List<ProductBean> getProductByVendorName(String vname) {
		return dao.getProductByVendorName(vname);
	}
	
	@Transactional
	@Override
	public List<ProductBean> getProductByCategory(String category) {
		return dao.getProductByCategory(category);
	}

	@Transactional
	@Override
	public List<ProductBean> getAllProducts() {
		return dao.getAllProducts();
	}

	@Transactional
	@Override
	public Double getProductRankAVGById(Integer pId) {
		return dao.getProductRankAVGById(pId);
	}

	@Transactional
	@Override
	public void addProduct(ProductBean bean) {
		dao.addProduct(bean);
	}

	@Transactional
	@Override
	public void updateProduct(ProductBean bean) {
		dao.updateProduct(bean);
	}

	@Transactional
	@Override
	public void deleteProduct(Integer pId) {
		dao.deleteProduct(pId);
	}
	

}
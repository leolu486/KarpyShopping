package com.web.store.service;

import java.util.List;

import com.web.store.model.ProductBean;

public interface ProductService {

	ProductBean select(Integer pId);

	ProductBean select(String pname);

	List<ProductBean> select();

	ProductBean insertProduct(ProductBean bean);

	Integer delete(Integer pId);

	long getRecordCounts();
	
	void close();

}
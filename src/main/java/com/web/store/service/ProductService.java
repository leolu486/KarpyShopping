package com.web.store.service;

import java.util.List;

import com.web.store.model.ProductBean;
import com.web.store.model.ProductImagesBean;

public interface ProductService {

	ProductBean getProductById(Integer pId);

	ProductBean getProductByName(String pname);

	List<ProductBean> getProductByVendor(Integer vId);

	List<ProductBean> getProductByCategory(String category);

	List<ProductBean> getAllProducts();

	Double getProductRankAVGById(Integer pId);

	void addProduct(ProductBean bean);

	void updateProduct(ProductBean bean);

	void deleteProduct(Integer pId);

	List<ProductBean> getProductByVendorName(String vname);

	void addProductImage(ProductImagesBean bean);

	ProductImagesBean getProductImagesById(Integer pId);

}
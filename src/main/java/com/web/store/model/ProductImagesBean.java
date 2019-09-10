package com.web.store.model;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name = "ProductImages")
public class ProductImagesBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer imageId;
	private Integer pId; // product id
	private Blob productImage;

	private ProductBean ProductBean;
	
	
	public ProductImagesBean() {
		
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getImageId() {
		return imageId;
	}

	public void setImageId(Integer imageId) {
		this.imageId = imageId;
	}

	public Integer getpId() {
		return pId;
	}

	/**
	 * @param pId the pId to set
	 */
	public void setpId(Integer pId) {
		this.pId = pId;
	}
	
	public Blob getProductImage() {
		return productImage;
	}

	public void setProductImage(Blob productImage) {
		this.productImage = productImage;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "PFK_ProductBean_Id")
	public ProductBean getProductBean() {
		return ProductBean;
	}

	public void setProductBean(ProductBean productBean) {
		ProductBean = productBean;
	}
	




}
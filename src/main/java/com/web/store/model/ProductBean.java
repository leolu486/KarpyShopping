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
@Table(name = "Product")
public class ProductBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer pId; // product id
	private String pname; // product name
	private Integer price; // product price
	private Integer vId; // vendor id
	private Integer amount; // amount
	private String category; // category
	private java.sql.Timestamp sdate; // storage date
	private java.sql.Timestamp expdate; // expired date
	private Double rankSum; //rank point summary
	private Integer rankCount; //rank user summary
	private String detail;


	private VendorBean vendorBean;
	
	private MultipartFile[]  productImageTemp;

	
	public ProductBean(Integer pId, String pname, Integer price, Integer vId, Integer amount, String category,
			String sdate, String expdate, Double rankSum, Integer rankCount) {
		this.pId = pId;
		this.pname = pname;
		this.price = price;
		this.vId = vId;
		this.amount = amount;
		this.category = category;
		this.sdate = new Timestamp(java.sql.Date.valueOf(sdate).getTime());
		this.expdate = new Timestamp(java.sql.Date.valueOf(expdate).getTime());
		this.rankSum = rankSum;
		this.rankCount = rankCount;	
	}
	
	public ProductBean(Integer pId, String pname, Integer price, Integer vId, Integer amount, String category,
			String sdate, Double rankSum, Integer rankCount) {
		this.pId = pId;
		this.pname = pname;
		this.price = price;
		this.vId = vId;
		this.amount = amount;
		this.category = category;
		this.sdate = new Timestamp(java.sql.Date.valueOf(sdate).getTime());
		this.rankSum = rankSum;
		this.rankCount = rankCount;	
	}

	public ProductBean(Integer pId, String pname, Integer price, VendorBean vendorBean, Integer amount, String category,
			String sdate, String expdate, Double rankSum, Integer rankCount) {
		this.pId = pId;
		this.pname = pname;
		this.price = price;
		this.vendorBean = vendorBean;
		this.amount = amount;
		this.category = category;
		this.sdate = new Timestamp(java.sql.Date.valueOf(sdate).getTime());
		this.expdate = new Timestamp(java.sql.Date.valueOf(expdate).getTime());
		this.rankSum = rankSum;
		this.rankCount = rankCount;
	}

	public ProductBean() {

	}

	@Override
	public String toString() {
		return "[" + pId + "," + pname + "," + price + "," + vId + "," + amount + "," + category + "," + sdate + ","
				+ expdate + "," + rankSum + "," + rankCount + "]";
	}

	/**
	 * @return the pId
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getpId() {
		return pId;
	}

	/**
	 * @param pId the pId to set
	 */
	public void setpId(Integer pId) {
		this.pId = pId;
	}

	/**
	 * @return the pname
	 */
	public String getPname() {
		return pname;
	}

	/**
	 * @param pname the pname to set
	 */
	public void setPname(String pname) {
		this.pname = pname;
	}

	/**
	 * @return the price
	 */
	public Integer getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(Integer price) {
		this.price = price;
	}

	/**
	 * @return the vId
	 */
	public Integer getvId() {
		return vId;
	}

	/**
	 * @param vId the vId to set
	 */
	public void setvId(Integer vId) {
		this.vId = vId;
	}

	/**
	 * @return the amount
	 */
	public Integer getAmount() {
		return amount;
	}

	/**
	 * @param amount the amount to set
	 */
	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}

	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}

	/**
	 * @return the sdate
	 */
	public java.sql.Timestamp getSdate() {
		return sdate;
	}

	/*
	 * @param sdate the sdate to set
	 */
	public void setSdate(java.sql.Timestamp sdate) {
		
		this.sdate = sdate;
	}

	/**
	 * @return the expdate
	 */
	public java.sql.Timestamp getExpdate() {
		return expdate;
	}

	/**
	 * @param expdate the expdate to set
	 */
	public void setExpdate(java.sql.Timestamp expdate) {
		this.expdate = expdate;
	}

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "FK_VendorBean_Id")
	public VendorBean getVendorBean() {
		return vendorBean;
	}

	public void setVendorBean(VendorBean vendorBean) {
		this.vendorBean = vendorBean;
	}

	public Double getRankSum() {
		return rankSum;
	}

	public void setRankSum(Double rankSum) {
		this.rankSum = rankSum;
	}

	public Integer getRankCount() {
		return rankCount;
	}

	public void setRankCount(Integer rankCount) {
		this.rankCount = rankCount;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Transient
	public MultipartFile[] getProductImageTemp() {
		return productImageTemp;
	}
	
	public void setProductImageTemp(MultipartFile[] productImageTemp) {
		this.productImageTemp = productImageTemp;
	}


}
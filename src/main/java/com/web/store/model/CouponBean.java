package com.web.store.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Coupon")
public class CouponBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cId; // coupon id
	private Integer mId; // member id
	private String category; // discount category
	private Double discount; // off
	private java.sql.Timestamp expdate; // coupon expired date
	private boolean status; //true:unused , false used
	private String token;	//coupon token

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public java.sql.Timestamp getExpdate() {
		return expdate;
	}

	public void setExpdate(java.sql.Timestamp expdate) {
		this.expdate = expdate;
	}
	
	
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "FK_MemberBean_Id")
	private MemberBean memberbean;
	
	public MemberBean getMemberbean() {
		return memberbean;
	}

	public void setMemberbean(MemberBean memberbean) {
		this.memberbean = memberbean;
	}

	@Override
	public String toString() {
		return "[cId:" + this.cId + ", mId:" + this.mId + ", category:" + this.category + ", discount:" + this.discount
				+ ", expdate:" + this.expdate + "]";
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

}
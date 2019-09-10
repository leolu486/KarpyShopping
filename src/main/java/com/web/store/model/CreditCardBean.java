package com.web.store.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CreditCard")
public class CreditCardBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cId;
	private Integer mId;
	private Integer cnumber; // CreditCard Number

	private String oname; // CreditCard name
	private String pin; // CreditCard pin
	private String cname; // CreditName
	private java.sql.Timestamp vdate; // CreditCard ValidDate

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

	public Integer getCnumber() {
		return cnumber;
	}

	public void setCnumber(Integer cnumber) {
		this.cnumber = cnumber;
	}

	public String getOname() {
		return oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public java.sql.Timestamp getVdate() {
		return vdate;
	}

	public void setVdate(java.sql.Timestamp vdate) {
		this.vdate = vdate;
	}

	@Override
	public String toString() {
		return "[" + cId + ", " + mId + ", " + cnumber + ", " + oname + ", " + pin + ", " + cname + ", " + vdate + "]";
	}

}
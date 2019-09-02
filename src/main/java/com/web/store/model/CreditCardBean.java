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
	private Integer Id; // CreditCard id
	private Integer mId;
	private Integer CNumber; // CreditCard Number
	private String OName; // CreditCard name
	private String Pin; // CreditCard pin
	private java.sql.Timestamp VDate; // CreditCard ValidDate

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public Integer getCNumber() {
		return CNumber;
	}

	public void setCNumber(Integer cNumber) {
		CNumber = cNumber;
	}

	public String getOName() {
		return OName;
	}

	public void setOName(String oName) {
		OName = oName;
	}

	public String getPin() {
		return Pin;
	}

	public void setPin(String pin) {
		Pin = pin;
	}

	public java.sql.Timestamp getVDate() {
		return VDate;
	}

	public void setVDate(java.sql.Timestamp vDate) {
		VDate = vDate;
	}

	public CreditCardBean() {

	}

}
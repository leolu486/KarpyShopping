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
@Table(name = "AdminMessage")
public class AdminMessageBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer amId; // seqno
	private Integer mId; // manager id
	private String name; //manager name
	private java.sql.Timestamp time; // leave message time
	private String message; //msg

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "FK_ManagerBean_Id")
	private ManagerBean managerBean;



	public ManagerBean getManagerBean() {
		return managerBean;
	}

	public void setManagerBean(ManagerBean managerBean) {
		this.managerBean = managerBean;
	}

	public Integer getAmId() {
		return amId;
	}

	public void setAmId(Integer amId) {
		this.amId = amId;
	}

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public java.sql.Timestamp getTime() {
		return time;
	}

	public void setTime(java.sql.Timestamp time) {
		this.time = time;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
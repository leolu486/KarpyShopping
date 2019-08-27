package com.web.store.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="Vendor")
public class VendorBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer vId; // vendor id
	private String vname; // vendor name
	private String addr; // vendor address
	private String tel; // vendor telephone
	private String email; // vendor email

	private Set<ProductBean> products = new LinkedHashSet<>();
	public VendorBean() {
		
	}
	
	public VendorBean(Integer vId, String vname, String addr, String tel, String email) {
		this.vId = vId;
		this.vname = vname;
		this.addr = addr;
		this.tel = tel;
		this.email = email;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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
	 * @return the vname
	 */
	public String getVname() {
		return vname;
	}

	/**
	 * @param vname the vname to set
	 */
	public void setVname(String vname) {
		this.vname = vname;
	}

	/**
	 * @return the addr
	 */
	public String getAddr() {
		return addr;
	}

	/**
	 * @param addr the addr to set
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}

	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel =tel;
	}


	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}


	public String toString() {
		return "[" + vId + "," + vname + "," + addr + "," + this.getTel() + "," + email + "]";
	}
	@OneToMany(mappedBy="vendorBean")
	public Set<ProductBean> getProducts() {
		return products;
	}

	public void setProducts(Set<ProductBean> products) {
		this.products = products;
	}

}
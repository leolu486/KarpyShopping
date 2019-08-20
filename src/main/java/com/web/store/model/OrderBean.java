package com.web.store.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "OrderTable")
public class OrderBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer oId; // Order ID
	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@ManyToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name="mId")
	MemberBean memberBean;
	
	private Timestamp odate; // Order Date
	private Integer price; // total
	private String status; // processing status

	@OneToMany(mappedBy="orderBean", cascade=CascadeType.ALL)
	private Set<OrderItemBean> items = new LinkedHashSet<>();
	
	public Integer getoId() {
		return oId;
	}

	public void setoId(Integer oId) {
		this.oId = oId;
	}

	public Timestamp getOdate() {
		return odate;
	}

	public void setOdate(Timestamp odate) {
		this.odate = odate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Set<OrderItemBean> getItems() {
		return items;
	}

	public void setItems(Set<OrderItemBean> items) {
		this.items = items;
	}



	
	public OrderBean() {
	}

	public OrderBean(Integer oId, Set<OrderItemBean> items, Timestamp date, Integer price, String status, MemberBean memberBean) {
		super();
		this.oId = oId;
		this.items = items;
		this.odate = date;
		this.price = price;
		this.status = status;
		this.memberBean = memberBean;
	}

	public String toString() {
		return "[" + oId + "," + items + ","+ odate + "," + price + "," + status + ","+memberBean+"]";
	}


}
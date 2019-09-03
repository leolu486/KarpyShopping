package com.web.store.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "OrderItems")
public class OrderItemBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer seqno; // 流水號
	private Integer orderNo;  //訂單號
	private Integer productId;  //商絣ID
	private String description;  //描述
	private Integer quantity;  //數量
	private Double unitPrice;  //單價
	private Double discount;  //折扣
	private Boolean mark;  // 標記
	@ManyToOne
	@JoinColumn(name = "FK_OrderBean_orderNo")
	private OrderBean orderBean;

	public OrderItemBean(Integer seqno, Integer orderNo, Integer productId, String description, Integer quantity,
			Double unitPrice, Double discount , Boolean mark) {
		super();
		this.seqno = seqno;
		this.orderNo = orderNo;
		this.productId = productId;
		this.description = description;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.discount = discount;
		this.mark = mark;
	}

	public OrderItemBean(Integer orderNo, Integer productId, String description, Integer quantity, Double unitPrice,
			Double discount , Boolean mark) {
		super();

		this.orderNo = orderNo;
		this.productId = productId;
		this.description = description;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.discount = discount;
		this.mark = mark;
	}
	public OrderItemBean() {

	}

	public Integer getSeqno() {
		return seqno;
	}

	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}

	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public OrderBean getOrderBean() {
		return orderBean;
	}

	public void setOrderBean(OrderBean orderBean) {
		this.orderBean = orderBean;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	
	public Boolean getmark() {
		return mark;                 
	}

	public void setmark(Boolean mark) {
		this.mark = mark;
	}
}
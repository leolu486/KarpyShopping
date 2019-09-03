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
	private Timestamp odate; // Order Date
	private Double price; // total
	private String status="未出貨"; // processing status
	private String tel;
	private String shippingNo="尚無單號"; // 新增貨單號碼
	private String consignee; //新增收貨人
	private String addr; //新增地址
	private Integer mId;
	

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="FK_mId")
	private MemberBean memberBean;
	
	@OneToMany(mappedBy="orderBean", cascade=CascadeType.ALL)
	private Set<OrderItemBean> items = new LinkedHashSet<>();
	
	public Integer getmId() {
		return mId;
	}
	
	public void setmId(Integer mId) {
		this.mId = mId;
	}
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	
	
	public MemberBean getMemberBean() {
		return memberBean;
	}

	public void setMemberBean(MemberBean memberBean) {
		this.memberBean = memberBean;
	}

	
	
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getShippingNo() {
		return shippingNo;
	}

	public void setShippingNo(String shippingNo) {
		this.shippingNo = shippingNo;
	}



	
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

	public OrderBean(Integer oId, Set<OrderItemBean> items, Timestamp date, Double price, String status, MemberBean memberBean) {
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
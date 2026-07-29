package com.rays.bean;

import java.util.Date;

public class OrderBean {
	private int id;
	private String ordername;
	private String orderPrice;
	private String orderQuanitity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrdername() {
		return ordername;
	}

	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}

	public String getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(String orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getOrderQuanitity() {
		return orderQuanitity;
	}

	public void setOrderQuanitity(String orderQuanitity) {
		this.orderQuanitity = orderQuanitity;
	}

	public Date getOrderDate() {
		return OrderDate;
	}

	public void setOrderDate(Date orderDate) {
		OrderDate = orderDate;
	}

	private Date OrderDate;

}

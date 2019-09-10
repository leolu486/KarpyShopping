package com.web.store.exception;

public class ProductStockException extends RuntimeException {
	
	private static final long serialVersionUID = 1L;
	
	Integer pId;
	Integer quantity;

	public ProductStockException() {
		
	}

	public ProductStockException(String message) {
		super(message);
		
	}
	public ProductStockException(String message,Integer pId, Integer quantity) {
		super(message);
		this.pId=pId;
		this.quantity=quantity;
		
	}

	public ProductStockException(Throwable cause) {
		super(cause);
	
	}

	public ProductStockException(String message, Throwable cause) {
		super(message, cause);
	
	}

	public ProductStockException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	

}

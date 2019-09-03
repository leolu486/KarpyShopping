package com.web.store.exception;

public class OrderModificationException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	Integer oId;
	

	public Integer getoId() {
		return oId;
	}

	public void setoId(Integer oId) {
		this.oId = oId;
	}

	public OrderModificationException() {
		
	}
	
	public OrderModificationException(String message,Integer oId) {
		super(message);
		this.oId = oId;
	}

	public OrderModificationException(String message) {
		super(message);		
	}

	public OrderModificationException(Throwable cause) {
		super(cause);		
	}

	public OrderModificationException(String message, Throwable cause) {
		super(message, cause);	
	}

	public OrderModificationException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);	
	}

}

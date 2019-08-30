package com.web.store.exception;

public class ProductNotFoundException extends RuntimeException {
	
	Integer pId;
	String pname;

	private static final long serialVersionUID = 1L;
	
	public ProductNotFoundException(String message, Integer pId) {
		super(message);
		this.pId = pId;
	}
	
	public ProductNotFoundException(String message, String pname) {
		super(message);
		this.pname = pname;
	}

	public ProductNotFoundException() {
		// TODO Auto-generated constructor stub
	}

	public ProductNotFoundException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public ProductNotFoundException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public ProductNotFoundException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public ProductNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}

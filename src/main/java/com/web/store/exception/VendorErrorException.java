package com.web.store.exception;

public class VendorErrorException extends RuntimeException {
	String vname;

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public VendorErrorException() {
		// TODO Auto-generated constructor stub
	}

	public VendorErrorException(String message, String vname) {
		// TODO Auto-generated constructor stub
		super(message);
		this.vname = vname;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public VendorErrorException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public VendorErrorException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public VendorErrorException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public VendorErrorException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}

package com.web.store.exception;

public class ManagerNotFoundException extends RuntimeException {
	String account;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ManagerNotFoundException() {
		// TODO Auto-generated constructor stub
	}

	public ManagerNotFoundException(String message, String account) {
		// TODO Auto-generated constructor stub
		super(message);
		this.account = account;
	}

	public ManagerNotFoundException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public ManagerNotFoundException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public ManagerNotFoundException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public ManagerNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}

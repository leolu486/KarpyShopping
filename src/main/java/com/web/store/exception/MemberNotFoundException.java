package com.web.store.exception;

public class MemberNotFoundException extends RuntimeException {
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

	public MemberNotFoundException() {
		// TODO Auto-generated constructor stub
	}

	public MemberNotFoundException(String message, String account) {
		// TODO Auto-generated constructor stub
		super(message);
		this.account = account;
	}

	public MemberNotFoundException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public MemberNotFoundException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	public MemberNotFoundException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public MemberNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

}

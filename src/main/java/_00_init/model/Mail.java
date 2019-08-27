package _00_init.model;

public class Mail {
	private String sender;
	private String sPassword;
	private String receiver;
	private String subject;
	private String content;

	public Mail() {
	}

	
	public String getSender() {
		return sender;
	}


	public void setSender(String sender) {
		this.sender = sender;
	}


	public String getsPassword() {
		return sPassword;
	}


	public void setsPassword(String sPassword) {
		this.sPassword = sPassword;
	}


	public String getReceiver() {
		return receiver;
	}


	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


}

package com.websocket.model;

public class Message {

	private String from; // message.from
	private String to; // message.to
	private String content; // message.content
	private String system_msg; // message.system_msg
	private Integer from_id;// memberId;

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSystem_msg() {
		return system_msg;
	}

	public void setSystem_msg(String system_msg) {
		this.system_msg = system_msg;
	}

	public Integer getFrom_id() {
		return from_id;
	}

	public void setFrom_id(Integer from_id) {
		this.from_id = from_id;
	}


	// standard constructors, getters, setters
}

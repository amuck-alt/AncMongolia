package com.crewfactory.main.domain;

public class MessageDomain {
	
	private String msg;
	private String reurl;
	private String home;
	private String section;
	
	public MessageDomain() {}
	
	
	public String getSection() {
		return section;
	}


	public void setSection(String section) {
		this.section = section;
	}


	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getReurl() {
		return reurl;
	}
	public void setReurl(String reurl) {
		this.reurl = reurl;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	
	

}

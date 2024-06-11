package com.crewfactory.main.domain;

import java.util.Date;

public class AirlineDomain {
	
	private int idx;
	private String section;
	private String code;
	private String name;
	private String path;
	private String regid;
	private String regip;
	private Date regdate;
	
	public AirlineDomain() {}

	
	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getRegid() {
		return regid;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public String getRegip() {
		return regip;
	}

	public void setRegip(String regip) {
		this.regip = regip;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "AirlineDomain [idx=" + idx + ", section=" + section + ", code=" + code + ", name=" + name + ", path="
				+ path + ", regid=" + regid + ", regip=" + regip + ", regdate=" + regdate + "]";
	}
	
	

}

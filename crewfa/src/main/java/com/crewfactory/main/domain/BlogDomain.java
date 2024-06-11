package com.crewfactory.main.domain;

import java.util.Date;

public class BlogDomain {
	
	private int idx;
	private String section;
	private String topblog;
	private String openyn;
	private String thumbnail;
	private String title;
	private String content;
	private String taglib;
	private int likely;
	private int visit;
	private String description;
	private String regid;
	private String regip;
	private Date regdate;
	private String code;
	private String loginyn;
	
	public BlogDomain() {}
	
	

	public String getLoginyn() {
		return loginyn;
	}



	public void setLoginyn(String loginyn) {
		this.loginyn = loginyn;
	}



	public String getCode() {
		return code;
	}



	public void setCode(String code) {
		this.code = code;
	}



	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getTopblog() {
		return topblog;
	}

	public void setTopblog(String topblog) {
		this.topblog = topblog;
	}

	public String getOpenyn() {
		return openyn;
	}

	public void setOpenyn(String openyn) {
		this.openyn = openyn;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTaglib() {
		return taglib;
	}

	public void setTaglib(String taglib) {
		this.taglib = taglib;
	}

	public int getLikely() {
		return likely;
	}

	public void setLikely(int likely) {
		this.likely = likely;
	}

	public int getVisit() {
		return visit;
	}

	public void setVisit(int visit) {
		this.visit = visit;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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
}

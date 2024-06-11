package com.crewfactory.main.domain;

import java.util.Date;

public class RecruitDomain {
	
	private int idx;
	private String section;
	private String airline;
	private String path;
	private String description;
	private String title;
	private String content;
	private String steptitle;
	private String stepdetail;
	private String regid;
	private String regip;
	private Date regdate;
	private String visit;
	
	public RecruitDomain() {}

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

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public String getSteptitle() {
		return steptitle;
	}

	public void setSteptitle(String steptitle) {
		this.steptitle = steptitle;
	}

	public String getStepdetail() {
		return stepdetail;
	}

	public void setStepdetail(String stepdetail) {
		this.stepdetail = stepdetail;
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

	public String getVisit() {
		return visit;
	}

	public void setVisit(String visit) {
		this.visit = visit;
	}

	@Override
	public String toString() {
		return "RecruitDomain [idx=" + idx + ", section=" + section + ", airline=" + airline + ", path=" + path
				+ ", description=" + description + ", title=" + title + ", content=" + content + ", steptitle="
				+ steptitle + ", stepdetail=" + stepdetail + ", regid=" + regid + ", regip=" + regip + ", regdate="
				+ regdate + ", visit=" + visit + "]";
	}

	
}

package com.crewfactory.main.domain;

import java.util.Date;

public class AnnounceDomain {

	private int idx;
	private String section;
	private String title;
	private String content;
	private String regid;
	private String regip;
	private Date   regdate;
	private int visit;
	private int total;
	private String description;
	private String thumbnail;
	private String regteam;
	private String sector;
	
	public AnnounceDomain() {}

	public String getRegteam() {
		return regteam;
	}

	public void setRegteam(String regteam) {
		this.regteam = regteam;
	}

	public String getSector() {
		return sector;
	}

	public void setSector(String sector) {
		this.sector = sector;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public int getVisit() {
		return visit;
	}

	public void setVisit(int visit) {
		this.visit = visit;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "NewsDomain [idx=" + idx + ", section=" + section + ", title=" + title + ", content=" + content
				+ ", regid=" + regid + ", regip=" + regip + ", regdate=" + regdate + ", visit=" + visit + "]";
	}
	
}

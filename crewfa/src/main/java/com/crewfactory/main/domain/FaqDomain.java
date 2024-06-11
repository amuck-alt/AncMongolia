package com.crewfactory.main.domain;

import java.util.Date;

public class FaqDomain {
	
	private int idx;
	private String section;
	private String keyword;
	private String question;
	private String title;
	private String content;
	private String regid;
	private String regip;
	private Date regdate;
	private int visit;
	private String description;
	
	private String search;
	
	public FaqDomain() {}
	
	

	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
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

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
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



	@Override
	public String toString() {
		return "FaqDomain [idx=" + idx + ", section=" + section + ", keyword=" + keyword + ", question=" + question
				+ ", title=" + title + ", content=" + content + ", regid=" + regid + ", regip=" + regip + ", regdate="
				+ regdate + ", visit=" + visit + ", search=" + search + "]";
	}	
	
}

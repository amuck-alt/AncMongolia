package com.crewfactory.main.domain;

import java.util.Date;

public class ProfessorDomain {
	
	private int idx;
	private String openidx;
	private String openpos;
	private String thumbnail;
	private String proname;
	private String ranks;
	private String subject;
	private String sentence;
	private String schedule;
	private String classnm;
	private String history;
	private String regip;
	private Date regdate;
	private String regid;
	private String section;
	
	public ProfessorDomain() {}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getOpenidx() {
		return openidx;
	}

	public void setOpenidx(String openidx) {
		this.openidx = openidx;
	}

	public String getOpenpos() {
		return openpos;
	}

	public void setOpenpos(String openpos) {
		this.openpos = openpos;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getProname() {
		return proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public String getRanks() {
		return ranks;
	}

	public void setRanks(String ranks) {
		this.ranks = ranks;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSentence() {
		return sentence;
	}

	public void setSentence(String sentence) {
		this.sentence = sentence;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getClassnm() {
		return classnm;
	}

	public void setClassnm(String classnm) {
		this.classnm = classnm;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
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

	public String getRegid() {
		return regid;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	@Override
	public String toString() {
		return "ProfessorDomain [idx=" + idx + ", openidx=" + openidx + ", openpos=" + openpos + ", thumbnail="
				+ thumbnail + ", proname=" + proname + ", ranks=" + ranks + ", subject=" + subject + ", sentence="
				+ sentence + ", schedule=" + schedule + ", classnm=" + classnm + ", history=" + history + ", regip="
				+ regip + ", regdate=" + regdate + ", regid=" + regid + ", section=" + section + "]";
	}


}

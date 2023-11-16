package com.crewfactory.main.domain;

import java.util.Date;

public class CKRecruitDomain {
	
	private int idx;
	private int num;
	private int visit;
	private String thumbnail;
	private String title;
	private String stday;
	private String sttime;
	private String endday;
	private String endtime;
	private String stdaytime;
	private String enddaytime;
	private String nowdaytime;
	private String description;
	private String content;
	private String regid;
	private Date   regdate;
	private String filename;
	private String filepath;
	private String resumeyn;
	
	public CKRecruitDomain() {}

	



	public String getResumeyn() {
		return resumeyn;
	}





	public void setResumeyn(String resumeyn) {
		this.resumeyn = resumeyn;
	}





	public String getFilename() {
		return filename;
	}





	public void setFilename(String filename) {
		this.filename = filename;
	}





	public String getFilepath() {
		return filepath;
	}





	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}





	public String getNowdaytime() {
		return nowdaytime;
	}





	public void setNowdaytime(String nowdaytime) {
		this.nowdaytime = nowdaytime;
	}





	public String getStdaytime() {
		return stdaytime;
	}


	public void setStdaytime(String stdaytime) {
		this.stdaytime = stdaytime;
	}


	public String getEnddaytime() {
		return enddaytime;
	}


	public void setEnddaytime(String enddaytime) {
		this.enddaytime = enddaytime;
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public int getVisit() {
		return visit;
	}


	public void setVisit(int visit) {
		this.visit = visit;
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


	public String getStday() {
		return stday;
	}


	public void setStday(String stday) {
		this.stday = stday;
	}


	public String getSttime() {
		return sttime;
	}


	public void setSttime(String sttime) {
		this.sttime = sttime;
	}


	public String getEndday() {
		return endday;
	}


	public void setEndday(String endday) {
		this.endday = endday;
	}


	public String getEndtime() {
		return endtime;
	}


	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
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


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "CKRecruitDomain [idx=" + idx + ", num=" + num + ", visit=" + visit + ", thumbnail=" + thumbnail
				+ ", title=" + title + ", stday=" + stday + ", sttime=" + sttime + ", endday=" + endday + ", endtime="
				+ endtime + ", stdaytime=" + stdaytime + ", enddaytime=" + enddaytime + ", nowdaytime=" + nowdaytime
				+ ", description=" + description + ", content=" + content + ", regid=" + regid + ", regdate=" + regdate
				+ ", filename=" + filename + ", filepath=" + filepath + ", getFilename()=" + getFilename()
				+ ", getFilepath()=" + getFilepath() + ", getNowdaytime()=" + getNowdaytime() + ", getStdaytime()="
				+ getStdaytime() + ", getEnddaytime()=" + getEnddaytime() + ", getIdx()=" + getIdx() + ", getNum()="
				+ getNum() + ", getVisit()=" + getVisit() + ", getThumbnail()=" + getThumbnail() + ", getTitle()="
				+ getTitle() + ", getStday()=" + getStday() + ", getSttime()=" + getSttime() + ", getEndday()="
				+ getEndday() + ", getEndtime()=" + getEndtime() + ", getDescription()=" + getDescription()
				+ ", getContent()=" + getContent() + ", getRegid()=" + getRegid() + ", getRegdate()=" + getRegdate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	

}

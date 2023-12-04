package com.crewfactory.main.domain;

public class CKInterviewDomain {
	
	private int idx;
	private int recruitidx;
	private String itvcode;
	private String limitcount;
	private String itvlocation;
	private String itvday;
	private String itvtime;
	private String itvtimeend;
	private String mngname;
	private String mngtel;
	private String mngmemo;
	
	private int intvcount;
	
	public CKInterviewDomain () {}

	public String getItvtimeend() {
		return itvtimeend;
	}

	public void setItvtimeend(String itvtimeend) {
		this.itvtimeend = itvtimeend;
	}

	public int getIntvcount() {
		return intvcount;
	}

	public void setIntvcount(int intvcount) {
		this.intvcount = intvcount;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getRecruitidx() {
		return recruitidx;
	}

	public void setRecruitidx(int recruitidx) {
		this.recruitidx = recruitidx;
	}

	public String getItvcode() {
		return itvcode;
	}

	public void setItvcode(String itvcode) {
		this.itvcode = itvcode;
	}

	public String getLimitcount() {
		return limitcount;
	}

	public void setLimitcount(String limitcount) {
		this.limitcount = limitcount;
	}

	public String getItvlocation() {
		return itvlocation;
	}

	public void setItvlocation(String itvlocation) {
		this.itvlocation = itvlocation;
	}

	public String getItvday() {
		return itvday;
	}

	public void setItvday(String itvday) {
		this.itvday = itvday;
	}

	public String getItvtime() {
		return itvtime;
	}

	public void setItvtime(String itvtime) {
		this.itvtime = itvtime;
	}

	public String getMngname() {
		return mngname;
	}

	public void setMngname(String mngname) {
		this.mngname = mngname;
	}

	public String getMngtel() {
		return mngtel;
	}

	public void setMngtel(String mngtel) {
		this.mngtel = mngtel;
	}

	public String getMngmemo() {
		return mngmemo;
	}

	public void setMngmemo(String mngmemo) {
		this.mngmemo = mngmemo;
	}

	@Override
	public String toString() {
		return "InterviewDomain [idx=" + idx + ", recruitidx=" + recruitidx + ", itvcode=" + itvcode + ", limitcount="
				+ limitcount + ", itvlocation=" + itvlocation + ", itvday=" + itvday + ", itvtime=" + itvtime
				+ ", mngname=" + mngname + ", mngtel=" + mngtel + ", mngmemo=" + mngmemo + "]";
	}
	
	

}

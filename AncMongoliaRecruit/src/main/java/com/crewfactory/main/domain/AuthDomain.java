package com.crewfactory.main.domain;

import java.util.Date;

public class AuthDomain {
	
	private int idx;
	private String section;
	private String team;
	private String userid;
	private String usernm;
	private String userpw;
	private Date regdate;
	private Date recdate;
	
	public AuthDomain() {
		
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
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

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsernm() {
		return usernm;
	}

	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getRecdate() {
		return recdate;
	}

	public void setRecdate(Date recdate) {
		this.recdate = recdate;
	}

	@Override
	public String toString() {
		return "AuthDomain [idx=" + idx + ", section=" + section + ", team=" + team + ", userid=" + userid + ", usernm="
				+ usernm + ", userpw=" + userpw + ", regdate=" + regdate + ", recdate=" + recdate + "]";
	}
	
	

}

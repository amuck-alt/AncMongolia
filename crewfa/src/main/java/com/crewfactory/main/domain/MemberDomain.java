package com.crewfactory.main.domain;

import java.util.Date;

public class MemberDomain {
	
	private int idx;			// primary key
	private String sect;		// 가입방식
	private String status;		// 상태
	private String userid;		// 아이디
	private String userpw;		// 비번
	private String nickname;	// 별명
	private String usernm;		// 이름
	private String email;		// 이메일
	private String gender;		// 성별
	private String age;			// 나이
	private String birthday;	// 생일
	private String profile;		// 프로필사진경로
	private String regdate;		// 등록일자
	private String path;		// 가입경로
	private String domain;		// 가입도메인
	private String mobile;
	private String regip;
	private String manager;
	private String team;
	private String smemo;
	private String hopse;
	
	public MemberDomain() {}

	public String getHopse() {
		return hopse;
	}

	public void setHopse(String hopse) {
		this.hopse = hopse;
	}

	public String getSmemo() {
		return smemo;
	}

	public void setSmemo(String smemo) {
		this.smemo = smemo;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getRegip() {
		return regip;
	}

	public void setRegip(String regip) {
		this.regip = regip;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getSect() {
		return sect;
	}

	public void setSect(String sect) {
		this.sect = sect;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUsernm() {
		return usernm;
	}

	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	@Override
	public String toString() {
		return "MemberDomain [idx=" + idx + ", sect=" + sect + ", status=" + status + ", userid=" + userid + ", userpw="
				+ userpw + ", nickname=" + nickname + ", usernm=" + usernm + ", email=" + email + ", gender=" + gender
				+ ", age=" + age + ", birthday=" + birthday + ", profile=" + profile + ", regdate=" + regdate
				+ ", path=" + path + ", domain=" + domain + ", mobile=" + mobile + ", regip=" + regip + ", manager="
				+ manager + "]";
	}


}

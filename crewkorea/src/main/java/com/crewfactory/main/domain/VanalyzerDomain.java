package com.crewfactory.main.domain;

public class VanalyzerDomain {
	private String domain;
	private String ipaddr;
	private String path;
	private String sector;
	private String keyword;
	private String agent;
	private String regdate;
	private String today;
	private String area;
	private String current;
	private int counsel;
	private int member;
	private int total_naver_keyword;
	private int total_naver_search;
	private int total_naver_blog;
	private int total_naver_cafe;
	private int total_naver_kin;
	private int total_google;
	private int total_daum;
	private int total_sns;
	
	public VanalyzerDomain () {}

	public int getTotal_naver_kin() {
		return total_naver_kin;
	}

	public void setTotal_naver_kin(int total_naver_kin) {
		this.total_naver_kin = total_naver_kin;
	}

	public int getMember() {
		return member;
	}

	public void setMember(int member) {
		this.member = member;
	}

	public int getCounsel() {
		return counsel;
	}

	public void setCounsel(int counsel) {
		this.counsel = counsel;
	}

	public int getTotal_google() {
		return total_google;
	}

	public void setTotal_google(int total_google) {
		this.total_google = total_google;
	}

	public int getTotal_daum() {
		return total_daum;
	}

	public void setTotal_daum(int total_daum) {
		this.total_daum = total_daum;
	}

	public int getTotal_sns() {
		return total_sns;
	}

	public void setTotal_sns(int total_sns) {
		this.total_sns = total_sns;
	}

	public int getTotal_naver_keyword() {
		return total_naver_keyword;
	}

	public void setTotal_naver_keyword(int total_naver_keyword) {
		this.total_naver_keyword = total_naver_keyword;
	}

	public int getTotal_naver_search() {
		return total_naver_search;
	}

	public void setTotal_naver_search(int total_naver_search) {
		this.total_naver_search = total_naver_search;
	}

	public int getTotal_naver_blog() {
		return total_naver_blog;
	}

	public void setTotal_naver_blog(int total_naver_blog) {
		this.total_naver_blog = total_naver_blog;
	}

	public int getTotal_naver_cafe() {
		return total_naver_cafe;
	}

	public void setTotal_naver_cafe(int total_naver_cafe) {
		this.total_naver_cafe = total_naver_cafe;
	}

	public String getCurrent() {
		return current;
	}

	public void setCurrent(String current) {
		this.current = current;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getIpaddr() {
		return ipaddr;
	}

	public void setIpaddr(String ipaddr) {
		this.ipaddr = ipaddr;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getSector() {
		return sector;
	}

	public void setSector(String sector) {
		this.sector = sector;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "VanalyzerDomain [domain=" + domain + ", ipaddr=" + ipaddr + ", path=" + path + ", sector=" + sector
				+ ", keyword=" + keyword + ", agent=" + agent + ", regdate=" + regdate + "]";
	}
	
	
}

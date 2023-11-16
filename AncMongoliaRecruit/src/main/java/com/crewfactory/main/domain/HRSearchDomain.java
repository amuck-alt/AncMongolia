package com.crewfactory.main.domain;

public class HRSearchDomain {
	
	private String srhcatenum;
	private String srhkorname;
	private String srhphoneagency;
	private String srhphonefirst;
	private String srhphonesecond;
	private String srhEmail;
	private String srhBirthYear;
	private String srhBirthMonth;
	private String srhBirthDay;
	
	public HRSearchDomain() {}

	public String getSrhEmail() {
		return srhEmail;
	}

	public void setSrhEmail(String srhEmail) {
		this.srhEmail = srhEmail;
	}

	public String getSrhBirthYear() {
		return srhBirthYear;
	}

	public void setSrhBirthYear(String srhBirthYear) {
		this.srhBirthYear = srhBirthYear;
	}

	public String getSrhBirthMonth() {
		return srhBirthMonth;
	}

	public void setSrhBirthMonth(String srhBirthMonth) {
		this.srhBirthMonth = srhBirthMonth;
	}

	public String getSrhBirthDay() {
		return srhBirthDay;
	}

	public void setSrhBirthDay(String srhBirthDay) {
		this.srhBirthDay = srhBirthDay;
	}

	public String getSrhcatenum() {
		return srhcatenum;
	}

	public void setSrhcatenum(String srhcatenum) {
		this.srhcatenum = srhcatenum;
	}

	public String getSrhkorname() {
		return srhkorname;
	}

	public void setSrhkorname(String srhkorname) {
		this.srhkorname = srhkorname;
	}

	public String getSrhphoneagency() {
		return srhphoneagency;
	}

	public void setSrhphoneagency(String srhphoneagency) {
		this.srhphoneagency = srhphoneagency;
	}

	public String getSrhphonefirst() {
		return srhphonefirst;
	}

	public void setSrhphonefirst(String srhphonefirst) {
		this.srhphonefirst = srhphonefirst;
	}

	public String getSrhphonesecond() {
		return srhphonesecond;
	}

	public void setSrhphonesecond(String srhphonesecond) {
		this.srhphonesecond = srhphonesecond;
	}

	@Override
	public String toString() {
		return "HRSearchDomain [srhcatenum=" + srhcatenum + ", srhkorname=" + srhkorname + ", srhphoneagency="
				+ srhphoneagency + ", srhphonefirst=" + srhphonefirst + ", srhphonesecond=" + srhphonesecond + "]";
	}

}

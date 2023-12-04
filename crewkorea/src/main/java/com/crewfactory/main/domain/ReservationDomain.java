package com.crewfactory.main.domain;

import java.util.Date;

public class ReservationDomain {
	
	private int idx;
	private String cons_status;
	private String cus_name;
	private String cus_age;
	private String cus_mobile;
	private String rec_manager;
	private String cons_day;
	private String cons_time;
	private String cons_manager;
	private String cons_team;
	private String rec_manager_nm;
	private String cons_manager_nm;
	private String regid;
	private Date regdate;
	private Date updatedate;
	
	private String consultidx;
	private String consultcode;
	private String note;
	
	private String customer;
	private String cons_startday;
	private String cons_endday;
	
		
	public String getCons_startday() {
		return cons_startday;
	}
	public void setCons_startday(String cons_startday) {
		this.cons_startday = cons_startday;
	}
	public String getCons_endday() {
		return cons_endday;
	}
	public void setCons_endday(String cons_endday) {
		this.cons_endday = cons_endday;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getConsultcode() {
		return consultcode;
	}
	public void setConsultcode(String consultcode) {
		this.consultcode = consultcode;
	}
	public String getConsultidx() {
		return consultidx;
	}
	public void setConsultidx(String consultidx) {
		this.consultidx = consultidx;
	}
	
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getRec_manager_nm() {
		return rec_manager_nm;
	}
	public void setRec_manager_nm(String rec_manager_nm) {
		this.rec_manager_nm = rec_manager_nm;
	}
	public String getCus_age() {
		return cus_age;
	}
	public void setCus_age(String cus_age) {
		this.cus_age = cus_age;
	}
	public String getCons_team() {
		return cons_team;
	}
	public void setCons_team(String cons_team) {
		this.cons_team = cons_team;
	}
	public String getCons_manager_nm() {
		return cons_manager_nm;
	}
	public void setCons_manager_nm(String cons_manager_nm) {
		this.cons_manager_nm = cons_manager_nm;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCons_status() {
		return cons_status;
	}
	public void setCons_status(String cons_status) {
		this.cons_status = cons_status;
	}
	public String getCus_name() {
		return cus_name;
	}
	public void setCus_name(String cus_name) {
		this.cus_name = cus_name;
	}
	public String getCus_mobile() {
		return cus_mobile;
	}
	public void setCus_mobile(String cus_mobile) {
		this.cus_mobile = cus_mobile;
	}
	public String getRec_manager() {
		return rec_manager;
	}
	public void setRec_manager(String rec_manager) {
		this.rec_manager = rec_manager;
	}
	public String getCons_day() {
		return cons_day;
	}
	public void setCons_day(String cons_day) {
		this.cons_day = cons_day;
	}
	public String getCons_time() {
		return cons_time;
	}
	public void setCons_time(String cons_time) {
		this.cons_time = cons_time;
	}
	public String getCons_manager() {
		return cons_manager;
	}
	public void setCons_manager(String cons_manager) {
		this.cons_manager = cons_manager;
	}
	public String getRegid() {
		return regid;
	}
	public void setRegid(String regid) {
		this.regid = regid;
	}
	
	@Override
	public String toString() {
		return "ReservationDomain [idx=" + idx + ", cons_status=" + cons_status + ", cus_name=" + cus_name
				+ ", cus_age=" + cus_age + ", cus_mobile=" + cus_mobile + ", rec_manager=" + rec_manager + ", cons_day="
				+ cons_day + ", cons_time=" + cons_time + ", cons_manager=" + cons_manager + ", cons_team=" + cons_team
				+ ", rec_manager_nm=" + rec_manager_nm + ", cons_manager_nm=" + cons_manager_nm + ", regid=" + regid
				+ ", regdate=" + regdate + ", consultidx=" + consultidx + ", consultcode=" + consultcode + ", note="
				+ note + "]";
	}
	
	

}

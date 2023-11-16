package com.crewfactory.main.domain;

public class IPBlockDomain {
	
	private int idx;
	private String ipaddr;
	private String blockyn;
	private String memo;
	private String regid;
	private String regdate;
	
	public IPBlockDomain() {}
	
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getIpaddr() {
		return ipaddr;
	}

	public void setIpaddr(String ipaddr) {
		this.ipaddr = ipaddr;
	}

	public String getBlockyn() {
		return blockyn;
	}

	public void setBlockyn(String blockyn) {
		this.blockyn = blockyn;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getRegid() {
		return regid;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
}

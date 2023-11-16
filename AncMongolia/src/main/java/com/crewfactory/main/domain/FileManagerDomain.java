package com.crewfactory.main.domain;


public class FileManagerDomain {
	
	private String path;
	private String name;
	private Long size;
	
	public FileManagerDomain(String path, String name, Long size) {
		this.path = path;
		this.name = name;
		this.size = size;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	
		
}

package com.lero.model;

public class Fileload {
	private int fileloadId;
	private String fileloadName;
	private String detail;
	
	
	public Fileload() {
	}
	
	public Fileload(String fileloadName, String detail) {
		this.fileloadName = fileloadName;
		this.detail = detail;
	}
	
	
	public int getFileloadId() {
		return fileloadId;
	}
	public void setFileloadId(int fileloadId) {
		this.fileloadId = fileloadId;
	}
	public String getFileloadName() {
		return fileloadName;
	}
	public void setFileloadName(String fileloadName) {
		this.fileloadName = fileloadName;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	
}

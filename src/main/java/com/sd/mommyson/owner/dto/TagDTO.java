package com.sd.mommyson.owner.dto;

public class TagDTO {

	private int tagNo;
	private String tagName;
	private String status;
	
	public TagDTO() {}

	public TagDTO(int tagNo, String tagName, String status) {
		super();
		this.tagNo = tagNo;
		this.tagName = tagName;
		this.status = status;
	}

	public int getTagNo() {
		return tagNo;
	}

	public void setTagNo(int tagNo) {
		this.tagNo = tagNo;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "TagDTO [tagNo=" + tagNo + ", tagName=" + tagName + ", status=" + status + "]";
	}
	
}

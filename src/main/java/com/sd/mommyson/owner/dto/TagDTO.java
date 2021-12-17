package com.sd.mommyson.owner.dto;

import com.sd.mommyson.manager.dto.HotKeywordDTO;

public class TagDTO {

	private int tagNo;
	private String tagName;
	private String status;
	private HotKeywordDTO hotKeyword;
	
	public TagDTO() {}

	public TagDTO(int tagNo, String tagName, String status, HotKeywordDTO hotKeyword) {
		super();
		this.tagNo = tagNo;
		this.tagName = tagName;
		this.status = status;
		this.hotKeyword = hotKeyword;
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

	public HotKeywordDTO getHotKeyword() {
		return hotKeyword;
	}

	public void setHotKeyword(HotKeywordDTO hotKeyword) {
		this.hotKeyword = hotKeyword;
	}

	@Override
	public String toString() {
		return "TagDTO [tagNo=" + tagNo + ", tagName=" + tagName + ", status=" + status + ", hotKeyword=" + hotKeyword
				+ "]";
	}

	
}

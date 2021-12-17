package com.sd.mommyson.manager.dto;

public class HotKeywordDTO {

	private int hotNo;
	private String hotContent;
	private int tagNo;
	
	public HotKeywordDTO() {
		// TODO Auto-generated constructor stub
	}

	public HotKeywordDTO(int hotNo, String hotContent, int tagNo) {
		super();
		this.hotNo = hotNo;
		this.hotContent = hotContent;
		this.tagNo = tagNo;
	}

	public int getHotNo() {
		return hotNo;
	}

	public void setHotNo(int hotNo) {
		this.hotNo = hotNo;
	}

	public String getHotContent() {
		return hotContent;
	}

	public void setHotContent(String hotContent) {
		this.hotContent = hotContent;
	}

	public int getTagNo() {
		return tagNo;
	}

	public void setTagNo(int tagNo) {
		this.tagNo = tagNo;
	}

	@Override
	public String toString() {
		return "HotKeywordDTO [hotNo=" + hotNo + ", hotContent=" + hotContent + ", tagNo=" + tagNo + "]";
	}
	
	
}

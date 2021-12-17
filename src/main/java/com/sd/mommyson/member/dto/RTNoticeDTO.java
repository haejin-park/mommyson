package com.sd.mommyson.member.dto;

import java.sql.Timestamp;

public class RTNoticeDTO {

	private int noticeCode;
	private int memCode;
	private String noticeContent;
	private Timestamp noticeTime;
	
	public RTNoticeDTO() {}

	public RTNoticeDTO(int noticeCode, int memCode, String noticeContent, Timestamp noticeTime) {
		super();
		this.noticeCode = noticeCode;
		this.memCode = memCode;
		this.noticeContent = noticeContent;
		this.noticeTime = noticeTime;
	}

	public int getNoticeCode() {
		return noticeCode;
	}

	public void setNoticeCode(int noticeCode) {
		this.noticeCode = noticeCode;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Timestamp getNoticeTime() {
		return noticeTime;
	}

	public void setNoticeTime(Timestamp noticeTime) {
		this.noticeTime = noticeTime;
	}

	@Override
	public String toString() {
		return "RTNoticeDTO [noticeCode=" + noticeCode + ", memCode=" + memCode + ", noticeContent=" + noticeContent
				+ ", noticeTime=" + noticeTime + "]";
	}
	
	
}

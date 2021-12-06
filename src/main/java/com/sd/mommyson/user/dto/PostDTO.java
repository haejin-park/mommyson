package com.sd.mommyson.user.dto;

import java.sql.Date;

public class PostDTO {

	private int postNo;
	private String boardCode;
	private String postTitle;
	private int memCode;
	private String postContent;
	private java.sql.Date postDate;
	private String ansStatus;
	private int QuestionNo;
	private String Status;
	public PostDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PostDTO(int postNo, String boardCode, String postTitle, int memCode, String postContent, Date postDate,
			String ansStatus, int questionNo, String status) {
		super();
		this.postNo = postNo;
		this.boardCode = boardCode;
		this.postTitle = postTitle;
		this.memCode = memCode;
		this.postContent = postContent;
		this.postDate = postDate;
		this.ansStatus = ansStatus;
		QuestionNo = questionNo;
		Status = status;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public int getMemCode() {
		return memCode;
	}
	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public java.sql.Date getPostDate() {
		return postDate;
	}
	public void setPostDate(java.sql.Date postDate) {
		this.postDate = postDate;
	}
	public String getAnsStatus() {
		return ansStatus;
	}
	public void setAnsStatus(String ansStatus) {
		this.ansStatus = ansStatus;
	}
	public int getQuestionNo() {
		return QuestionNo;
	}
	public void setQuestionNo(int questionNo) {
		QuestionNo = questionNo;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	@Override
	public String toString() {
		return "PostDTO [postNo=" + postNo + ", boardCode=" + boardCode + ", postTitle=" + postTitle + ", memCode="
				+ memCode + ", postContent=" + postContent + ", postDate=" + postDate + ", ansStatus=" + ansStatus
				+ ", QuestionNo=" + QuestionNo + ", Status=" + Status + "]";
	}

	
}

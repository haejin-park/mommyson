package com.sd.mommyson.manager.dto;

import java.sql.Date;

import com.sd.mommyson.member.dto.MemberDTO;

/**
 * @author junheekim
 *
 */
public class PostDTO {
	
	private int postNo;				// 게시판 번호
	private String boardCode;		// 게시판 코드
	private String postTitle;		// 제목
	private int memCode;		    // 작성자(코드)
	private String postContent; 	// 내용
	private java.sql.Date postDate; // 작성일
	private String ansStatus;		// 답변여부
	private int queNo;				// 질문번호
	private String status;		    // 답변상태(여기서는 N으로만 사용한다.)
	private int viewCnt;			// 조회수
	private String ansContent;		// 답변 내용
	private MemberDTO member;		

	public PostDTO() {
		super();
	}

	public PostDTO(int postNo, String boardCode, String postTitle, int memCode, String postContent, Date postDate,
			String ansStatus, int queNo, String status, int viewCnt, String ansContent, MemberDTO member) {
		super();
		this.postNo = postNo;
		this.boardCode = boardCode;
		this.postTitle = postTitle;
		this.memCode = memCode;
		this.postContent = postContent;
		this.postDate = postDate;
		this.ansStatus = ansStatus;
		this.queNo = queNo;
		this.status = status;
		this.viewCnt = viewCnt;
		this.ansContent = ansContent;
		this.member = member;
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

	public int getQueNo() {
		return queNo;
	}

	public void setQueNo(int queNo) {
		this.queNo = queNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getAnsContent() {
		return ansContent;
	}

	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}

	public MemberDTO getMember() {
		return member;
	}

	public void setMember(MemberDTO member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "PostDTO [postNo=" + postNo + ", boardCode=" + boardCode + ", postTitle=" + postTitle + ", memCode="
				+ memCode + ", postContent=" + postContent + ", postDate=" + postDate + ", ansStatus=" + ansStatus
				+ ", queNo=" + queNo + ", status=" + status + ", viewCnt=" + viewCnt + ", ansContent=" + ansContent
				+ ", member=" + member + "]";
	}
	
}

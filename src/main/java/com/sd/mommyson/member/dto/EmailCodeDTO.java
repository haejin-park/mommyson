package com.sd.mommyson.member.dto;

public class EmailCodeDTO {

	private int code;
	private int memCode;
	private int emailCode;
	private String email;
	public EmailCodeDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmailCodeDTO(int code, int memCode, int emailCode, String email) {
		super();
		this.code = code;
		this.memCode = memCode;
		this.emailCode = emailCode;
		this.email = email;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getMemCode() {
		return memCode;
	}
	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}
	public int getEmailCode() {
		return emailCode;
	}
	public void setEmailCode(int emailCode) {
		this.emailCode = emailCode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "EmailCodeDTO [code=" + code + ", memCode=" + memCode + ", emailCode=" + emailCode + ", email=" + email
				+ "]";
	}
	
	
	
	
	
	
}
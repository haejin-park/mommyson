package com.sd.mommyson.member.dto;

public class AuthDTO {

	private int code;
	private String auth;
	
	public AuthDTO() {}

	public AuthDTO(int code, String auth) {
		super();
		this.code = code;
		this.auth = auth;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "AuthDTO [code=" + code + ", auth=" + auth + "]";
	}
	
	
}

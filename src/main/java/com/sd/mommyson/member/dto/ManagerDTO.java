package com.sd.mommyson.member.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class ManagerDTO {

	private int memCode;
	private Timestamp lastLogin;
	private AuthDTO authDTO;
	
	public ManagerDTO() {}

	public ManagerDTO(int memCode, Timestamp lastLogin, AuthDTO authDTO) {
		super();
		this.memCode = memCode;
		this.lastLogin = lastLogin;
		this.authDTO = authDTO;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public Timestamp getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Timestamp lastLogin) {
		this.lastLogin = lastLogin;
	}

	public AuthDTO getAuthDTO() {
		return authDTO;
	}

	public void setAuthDTO(AuthDTO authDTO) {
		this.authDTO = authDTO;
	}

	@Override
	public String toString() {
		return "ManagerDTO [memCode=" + memCode + ", lastLogin=" + lastLogin + ", authDTO=" + authDTO + "]";
	}

	

}

   


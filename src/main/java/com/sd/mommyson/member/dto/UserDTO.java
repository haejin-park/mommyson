package com.sd.mommyson.member.dto;

public class UserDTO {

	private String memCode;
	private String name;
	private int repCount;
	
	public UserDTO() {}

	public UserDTO(String memCode, String name, int repCount) {
		super();
		this.memCode = memCode;
		this.name = name;
		this.repCount = repCount;
	}

	public String getMemCode() {
		return memCode;
	}

	public void setMemCode(String memCode) {
		this.memCode = memCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRepCount() {
		return repCount;
	}

	public void setRepCount(int repCount) {
		this.repCount = repCount;
	}

	@Override
	public String toString() {
		return "UserDTO [memCode=" + memCode + ", name=" + name + ", repCount=" + repCount + "]";
	}

	
	
}

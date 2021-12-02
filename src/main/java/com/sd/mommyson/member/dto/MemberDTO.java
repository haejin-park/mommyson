package com.sd.mommyson.member.dto;

import java.sql.Date;

public class MemberDTO {

	private int memCode;
	private String email;
	private String memPwd;
	private String address;
	private String postCode;
	private String dAddress;
	private String phone;
	private String memType;
	private String locationCode;
	private String nickname;
	private String memId;
	private Date enrollDate;
	private String isDeleted;
	private UserDTO user;
	private CeoDTO ceo;
	
	public MemberDTO() {}

	public MemberDTO(int memCode, String email, String memPwd, String address, String postCode, String dAddress,
			String phone, String memType, String locationCode, String nickname, String memId, Date enrollDate,
			String isDeleted, UserDTO user, CeoDTO ceo) {
		super();
		this.memCode = memCode;
		this.email = email;
		this.memPwd = memPwd;
		this.address = address;
		this.postCode = postCode;
		this.dAddress = dAddress;
		this.phone = phone;
		this.memType = memType;
		this.locationCode = locationCode;
		this.nickname = nickname;
		this.memId = memId;
		this.enrollDate = enrollDate;
		this.isDeleted = isDeleted;
		this.user = user;
		this.ceo = ceo;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getdAddress() {
		return dAddress;
	}

	public void setdAddress(String dAddress) {
		this.dAddress = dAddress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMemType() {
		return memType;
	}

	public void setMemType(String memType) {
		this.memType = memType;
	}

	public String getLocationCode() {
		return locationCode;
	}

	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public CeoDTO getCeo() {
		return ceo;
	}

	public void setCeo(CeoDTO ceo) {
		this.ceo = ceo;
	}

	@Override
	public String toString() {
		return "MemberDTO [memCode=" + memCode + ", email=" + email + ", memPwd=" + memPwd + ", address=" + address
				+ ", postCode=" + postCode + ", dAddress=" + dAddress + ", phone=" + phone + ", memType=" + memType
				+ ", locationCode=" + locationCode + ", nickname=" + nickname + ", memId=" + memId + ", enrollDate="
				+ enrollDate + ", isDeleted=" + isDeleted + ", user=" + user + ", ceo=" + ceo + "]";
	}
}

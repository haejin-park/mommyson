package com.sd.mommyson.member.dto;

import com.sd.mommyson.owner.dto.MembershipAndStoreDTO;

public class StoreDTO {

	private String storeName;
	private String storeImg;
	private String storeInfo;
	private float grade;
	private int delCost;
	private String workTime;
	private int memCode;
	private int rvCount;
	private String statusYN;
	private MembershipAndStoreDTO membershipAndStore;
	
	public StoreDTO() {

	}

	public StoreDTO(String storeName, String storeImg, String storeInfo, float grade, int delCost, String workTime,
			int memCode, int rvCount, String statusYN, MembershipAndStoreDTO membershipAndStore) {
		super();
		this.storeName = storeName;
		this.storeImg = storeImg;
		this.storeInfo = storeInfo;
		this.grade = grade;
		this.delCost = delCost;
		this.workTime = workTime;
		this.memCode = memCode;
		this.rvCount = rvCount;
		this.statusYN = statusYN;
		this.membershipAndStore = membershipAndStore;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreImg() {
		return storeImg;
	}

	public void setStoreImg(String storeImg) {
		this.storeImg = storeImg;
	}

	public String getStoreInfo() {
		return storeInfo;
	}

	public void setStoreInfo(String storeInfo) {
		this.storeInfo = storeInfo;
	}

	public float getGrade() {
		return grade;
	}

	public void setGrade(float grade) {
		this.grade = grade;
	}

	public int getDelCost() {
		return delCost;
	}

	public void setDelCost(int delCost) {
		this.delCost = delCost;
	}

	public String getWorkTime() {
		return workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public int getRvCount() {
		return rvCount;
	}

	public void setRvCount(int rvCount) {
		this.rvCount = rvCount;
	}

	public String getStatusYN() {
		return statusYN;
	}

	public void setStatusYN(String statusYN) {
		this.statusYN = statusYN;
	}

	public MembershipAndStoreDTO getMembershipAndStore() {
		return membershipAndStore;
	}

	public void setMembershipAndStore(MembershipAndStoreDTO membershipAndStore) {
		this.membershipAndStore = membershipAndStore;
	}

	@Override
	public String toString() {
		return "StoreDTO [storeName=" + storeName + ", storeImg=" + storeImg + ", storeInfo=" + storeInfo + ", grade="
				+ grade + ", delCost=" + delCost + ", workTime=" + workTime + ", memCode=" + memCode + ", rvCount="
				+ rvCount + ", statusYN=" + statusYN + ", membershipAndStore=" + membershipAndStore + "]";
	}

	
}

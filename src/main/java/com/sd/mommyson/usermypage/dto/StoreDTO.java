package com.sd.mommyson.usermypage.dto;

public class StoreDTO {

	private String storeName;
	private String storeImg;
	private String storeInfo;
	private float grade;
	private int delCost;
	private String workTime;
	private int ceoCode;
	private int rvCount;
	private String statusYN;
	
	
	public StoreDTO() {

	}


	public StoreDTO(String storeName, String storeImg, String storeInfo, float grade, int delCost, String workTime,
			int ceoCode, int rvCount, String statusYN) {
		super();
		this.storeName = storeName;
		this.storeImg = storeImg;
		this.storeInfo = storeInfo;
		this.grade = grade;
		this.delCost = delCost;
		this.workTime = workTime;
		this.ceoCode = ceoCode;
		this.rvCount = rvCount;
		this.statusYN = statusYN;
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


	public int getCeoCode() {
		return ceoCode;
	}


	public void setCeoCode(int ceoCode) {
		this.ceoCode = ceoCode;
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


	@Override
	public String toString() {
		return "StoreDTO [storeName=" + storeName + ", storeImg=" + storeImg + ", storeInfo=" + storeInfo + ", grade="
				+ grade + ", delCost=" + delCost + ", workTime=" + workTime + ", ceoCode=" + ceoCode + ", rvCount="
				+ rvCount + ", statusYN=" + statusYN + "]";
	}

	
}

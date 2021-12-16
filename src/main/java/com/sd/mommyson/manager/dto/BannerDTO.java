package com.sd.mommyson.manager.dto;

public class BannerDTO {

	private int bnCode;
	private String bnName;
	private String bnImg;
	private String bnStatus;
	private int bnOrder;
	
	public BannerDTO() {
		// TODO Auto-generated constructor stub
	}

	public BannerDTO(int bnCode, String bnName, String bnImg, String bnStatus, int bnOrder) {
		super();
		this.bnCode = bnCode;
		this.bnName = bnName;
		this.bnImg = bnImg;
		this.bnStatus = bnStatus;
		this.bnOrder = bnOrder;
	}

	public int getBnCode() {
		return bnCode;
	}

	public void setBnCode(int bnCode) {
		this.bnCode = bnCode;
	}

	public String getBnName() {
		return bnName;
	}

	public void setBnName(String bnName) {
		this.bnName = bnName;
	}

	public String getBnImg() {
		return bnImg;
	}

	public void setBnImg(String bnImg) {
		this.bnImg = bnImg;
	}

	public String getBnStatus() {
		return bnStatus;
	}

	public void setBnStatus(String bnStatus) {
		this.bnStatus = bnStatus;
	}

	public int getBnOrder() {
		return bnOrder;
	}

	public void setBnOrder(int bnOrder) {
		this.bnOrder = bnOrder;
	}

	@Override
	public String toString() {
		return "BannerDTO [bnCode=" + bnCode + ", bnName=" + bnName + ", bnImg=" + bnImg + ", bnStatus=" + bnStatus
				+ ", bnOrder=" + bnOrder + "]";
	}
	
	
}

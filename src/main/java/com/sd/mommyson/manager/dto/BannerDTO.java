package com.sd.mommyson.manager.dto;

public class BannerDTO {

	private int bnCode;
	private String bnName;
	private String bnStatus;
	private int bnOrder;
	
	public BannerDTO() {
		// TODO Auto-generated constructor stub
	}

	public BannerDTO(int bnCode, String bnName, String bnStatus, int bnOrder) {
		super();
		this.bnCode = bnCode;
		this.bnName = bnName;
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
		return "BannerDTO [bnCode=" + bnCode + ", bnName=" + bnName + ", bnStatus=" + bnStatus + ", bnOrder=" + bnOrder
				+ "]";
	}

	
}

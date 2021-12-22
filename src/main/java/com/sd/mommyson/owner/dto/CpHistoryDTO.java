package com.sd.mommyson.owner.dto;

public class CpHistoryDTO {
	
	private int cpNum;
	private int cpCode;
	private int memCode;
	private String giveDate;
	private String useStatus;
	private String cpName;
	private String nickName;
	
	public CpHistoryDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CpHistoryDTO(int cpNum, int cpCode, int memCode, String giveDate, String useStatus, String cpName,
			String nickName) {
		super();
		this.cpNum = cpNum;
		this.cpCode = cpCode;
		this.memCode = memCode;
		this.giveDate = giveDate;
		this.useStatus = useStatus;
		this.cpName = cpName;
		this.nickName = nickName;
	}

	public int getCpNum() {
		return cpNum;
	}

	public void setCpNum(int cpNum) {
		this.cpNum = cpNum;
	}

	public int getCpCode() {
		return cpCode;
	}

	public void setCpCode(int cpCode) {
		this.cpCode = cpCode;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getGiveDate() {
		return giveDate;
	}

	public void setGiveDate(String giveDate) {
		this.giveDate = giveDate;
	}

	public String getUseStatus() {
		return useStatus;
	}

	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}

	public String getcpName() {
		return cpName;
	}

	public void setcpName(String cpName) {
		this.cpName = cpName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Override
	public String toString() {
		return "CpHistoryDTO [cpNum=" + cpNum + ", cpCode=" + cpCode + ", memCode=" + memCode + ", giveDate=" + giveDate
				+ ", useStatus=" + useStatus + ", cpName=" + cpName + ", nickName=" + nickName + "]";
	}

	
}

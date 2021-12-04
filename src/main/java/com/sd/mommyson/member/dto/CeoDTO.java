package com.sd.mommyson.member.dto;

import java.sql.Date;

public class CeoDTO {

	private int memCode;
	private String account;
	private String name;
	private String no;
	private StoreDTO store;
	
	public CeoDTO() {}

	public CeoDTO(int memCode, String account, String name, String no, StoreDTO store) {
		super();
		this.memCode = memCode;
		this.account = account;
		this.name = name;
		this.no = no;
		this.store = store;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public StoreDTO getStore() {
		return store;
	}

	public void setStore(StoreDTO store) {
		this.store = store;
	}

	@Override
	public String toString() {
		return "CeoDTO [memCode=" + memCode + ", account=" + account + ", name=" + name
				+ ", no=" + no + ", store=" + store + "]";
	}

}

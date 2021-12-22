package com.sd.mommyson.user.dto;

public class CartDTO {

	private int memCode;
	private int cartCode; 
	private int amount;
	private int totalPrice; //총 제품금액 
	private String storeName;//STORE_TBL에 있음
	private String storeImg; //STORE_TBL에 있음
	private int sdCode; //PRODUCT_TBL에 있음
	private int sdName; //PRODUCT_TBL에 있음
	private int price;  //PRODUCT_TBL에 있음


	public CartDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public CartDTO(int memCode, int cartCode, String storeName, String storeImg, int sdCode, int sdName, int price,
			int amount, int totalPrice) {
		super();
		this.memCode = memCode;
		this.cartCode = cartCode;
		this.storeName = storeName;
		this.storeImg = storeImg;
		this.sdCode = sdCode;
		this.sdName = sdName;
		this.price = price;
		this.amount = amount;
		this.totalPrice = totalPrice;
	}


	public int getMemCode() {
		return memCode;
	}


	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}


	public int getCartCode() {
		return cartCode;
	}


	public void setCartCode(int cartCode) {
		this.cartCode = cartCode;
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


	public int getSdCode() {
		return sdCode;
	}


	public void setSdCode(int sdCode) {
		this.sdCode = sdCode;
	}


	public int getSdName() {
		return sdName;
	}


	public void setSdName(int sdName) {
		this.sdName = sdName;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public int getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}


	@Override
	public String toString() {
		return "CartDTO [memCode=" + memCode + ", cartCode=" + cartCode + ", storeName=" + storeName + ", storeImg="
				+ storeImg + ", sdCode=" + sdCode + ", sdName=" + sdName + ", price=" + price + ", amount=" + amount
				+ ", totalPrice=" + totalPrice + "]";
	}


}


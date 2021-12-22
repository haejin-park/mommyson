package com.sd.mommyson.user.dto;

public class CartDTO {

	private int memCode;
	private int cartCode; 
	private int amount;
	private int totalPrice; //총 제품금액 
	private String storeName;//STORE_TBL에 있음
	private String storeImg; //STORE_TBL에 있음
	private int sdCode; //PRODUCT_TBL에 있음
	private String sdName; //PRODUCT_TBL에 있음
	private String sdImg;
	private int price;  //PRODUCT_TBL에 있음


	public CartDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public CartDTO(int memCode, int cartCode, int amount, int totalPrice, String storeName, String storeImg, int sdCode,
			String sdName, String sdImg, int price) {
		super();
		this.memCode = memCode;
		this.cartCode = cartCode;
		this.amount = amount;
		this.totalPrice = totalPrice;
		this.storeName = storeName;
		this.storeImg = storeImg;
		this.sdCode = sdCode;
		this.sdName = sdName;
		this.sdImg = sdImg;
		this.price = price;
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


	public String getSdName() {
		return sdName;
	}


	public void setSdName(String sdName) {
		this.sdName = sdName;
	}


	public String getSdImg() {
		return sdImg;
	}


	public void setSdImg(String sdImg) {
		this.sdImg = sdImg;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "CartDTO [memCode=" + memCode + ", cartCode=" + cartCode + ", amount=" + amount + ", totalPrice="
				+ totalPrice + ", storeName=" + storeName + ", storeImg=" + storeImg + ", sdCode=" + sdCode
				+ ", sdName=" + sdName + ", sdImg=" + sdImg + ", price=" + price + "]";
	}





}


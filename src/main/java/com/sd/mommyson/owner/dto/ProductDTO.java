package com.sd.mommyson.owner.dto;

import java.sql.Date;

public class ProductDTO {

	private int sdCode;
	private String sdName;
	private Date mDate;
	private int price;
	private String ingredient;
	private String volume;
	private String sdImg;
	private String category;
	private float discountRate;
	private int memCode;
	private String orderableStatus;
	private int eDate;
	private String categoryCode;
	private String storageMethod;
	private String detail;
	private String isDeleted;
	private String storeName;
	
	
	public ProductDTO() {

	}


	public ProductDTO(int sdCode, String sdName, Date mDate, int price, String ingredient, String volume, String sdImg,
			String category, float discountRate, int memCode, String orderableStatus, int eDate, String categoryCode,
			String storageMethod, String detail, String isDeleted, String storeName) {
		super();
		this.sdCode = sdCode;
		this.sdName = sdName;
		this.mDate = mDate;
		this.price = price;
		this.ingredient = ingredient;
		this.volume = volume;
		this.sdImg = sdImg;
		this.category = category;
		this.discountRate = discountRate;
		this.memCode = memCode;
		this.orderableStatus = orderableStatus;
		this.eDate = eDate;
		this.categoryCode = categoryCode;
		this.storageMethod = storageMethod;
		this.detail = detail;
		this.isDeleted = isDeleted;
		this.storeName = storeName;
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


	public Date getmDate() {
		return mDate;
	}


	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getIngredient() {
		return ingredient;
	}


	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}


	public String getVolume() {
		return volume;
	}


	public void setVolume(String volume) {
		this.volume = volume;
	}


	public String getSdImg() {
		return sdImg;
	}


	public void setSdImg(String sdImg) {
		this.sdImg = sdImg;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public float getDiscountRate() {
		return discountRate;
	}


	public void setDiscountRate(float discountRate) {
		this.discountRate = discountRate;
	}


	public int getMemCode() {
		return memCode;
	}


	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}


	public String getOrderableStatus() {
		return orderableStatus;
	}


	public void setOrderableStatus(String orderableStatus) {
		this.orderableStatus = orderableStatus;
	}


	public int geteDate() {
		return eDate;
	}


	public void seteDate(int eDate) {
		this.eDate = eDate;
	}


	public String getCategoryCode() {
		return categoryCode;
	}


	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}


	public String getStorageMethod() {
		return storageMethod;
	}


	public void setStorageMethod(String storageMethod) {
		this.storageMethod = storageMethod;
	}


	public String getDetail() {
		return detail;
	}


	public void setDetail(String detail) {
		this.detail = detail;
	}


	public String getIsDeleted() {
		return isDeleted;
	}


	public void setIsDeleted(String isDeleted) {
		this.isDeleted = isDeleted;
	}


	public String getStoreName() {
		return storeName;
	}


	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}


	@Override
	public String toString() {
		return "ProductDTO [sdCode=" + sdCode + ", sdName=" + sdName + ", mDate=" + mDate + ", price=" + price
				+ ", ingredient=" + ingredient + ", volume=" + volume + ", sdImg=" + sdImg + ", category=" + category
				+ ", discountRate=" + discountRate + ", memCode=" + memCode + ", orderableStatus=" + orderableStatus
				+ ", eDate=" + eDate + ", categoryCode=" + categoryCode + ", storageMethod=" + storageMethod
				+ ", detail=" + detail + ", isDeleted=" + isDeleted + ", storeName=" + storeName + "]";
	}
	
	
}

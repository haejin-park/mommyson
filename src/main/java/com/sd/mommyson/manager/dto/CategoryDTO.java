package com.sd.mommyson.manager.dto;

public class CategoryDTO {

	private String categoryCode;
	private String categoryName;
	private String status;
	
	public CategoryDTO() {
		// TODO Auto-generated constructor stub
	}

	public CategoryDTO(String categoryCode, String categoryName, String status) {
		super();
		this.categoryCode = categoryCode;
		this.categoryName = categoryName;
		this.status = status;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "CategoryDTO [categoryCode=" + categoryCode + ", categoryName=" + categoryName + ", status=" + status
				+ "]";
	}

	
}

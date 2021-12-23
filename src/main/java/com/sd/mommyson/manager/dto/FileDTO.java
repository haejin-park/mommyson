package com.sd.mommyson.manager.dto;

public class FileDTO {

	private int fileCode;
	private String fileName;
	private int postNo;
	private String fileType;
	
	public FileDTO() {
		super();
	}

	public FileDTO(int fileCode, String fileName, int postNo, String fileType) {
		super();
		this.fileCode = fileCode;
		this.fileName = fileName;
		this.postNo = postNo;
		this.fileType = fileType;
	}

	public int getFileCode() {
		return fileCode;
	}

	public void setFileCode(int fileCode) {
		this.fileCode = fileCode;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	@Override
	public String toString() {
		return "FileDTO [fileCode=" + fileCode + ", fileName=" + fileName + ", postNo=" + postNo + ", fileType="
				+ fileType + "]";
	}
	
}
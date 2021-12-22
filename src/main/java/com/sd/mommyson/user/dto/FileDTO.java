package com.sd.mommyson.user.dto;

public class FileDTO {

	private int fileCode;//FILE_CODE
	private String fileName;//FILE_NAME
	private int postNo;//POST_NO
	private String fileType;//FILE_TYPE
	
	public FileDTO() {
		super();
		// TODO Auto-generated constructor stub
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

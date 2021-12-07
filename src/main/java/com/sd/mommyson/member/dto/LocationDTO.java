package com.sd.mommyson.member.dto;

public class LocationDTO{

	private String locationCode;
	private String locationName;
	
	public LocationDTO() {}

	public LocationDTO(String locationCode, String locationName) {
		super();
		this.locationCode = locationCode;
		this.locationName = locationName;
	}

	public String getLocationCode() {
		return locationCode;
	}

	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	@Override
	public String toString() {
		return "LocationDTO [locationCode=" + locationCode + ", locationName=" + locationName + "]";
	}
	
	
}

package com;

public class Rider {
	private int rId ;
	private String rUserName;
	private String rNIC;
	private String rPhone;
	private String rAddress;
	private String rEmail;
	private String rPassword;
	private int noOfRides;
	
	public Rider(int rId, String rUserName, String rNIC, String rPhone, String rAddress, String rEmail,
			String rPassword,int noOfRides) {
		this.rId = rId;
		this.rUserName = rUserName;
		this.rNIC = rNIC;
		this.rPhone = rPhone;
		this.rAddress = rAddress;
		this.rEmail = rEmail;
		this.rPassword = rPassword;
		this.noOfRides = noOfRides;
	}

	public int getrId() {
		return rId;
	}
	
	public String getrUserName() {
		return rUserName;
	}
	
	public String getrNIC() {
		return rNIC;
	}
	
	public String getrAddress() {
		return rAddress;
	}

	public String getrPhone() {
		return rPhone;
	}

	
	public String getrEmail() {
		return rEmail;
	}

	public String getrPassword() {
		return rPassword;
	}
	
	public int getnoOfRides() {
		return noOfRides;
	}

	
	
	
}

package com;

import java.sql.Time;
import java.util.Date;

public class Ride {
	private int rideId;
	private String pickup;
	private String drop;
	private String status;
	private String vehiType;
	private float rFee;
	private String paymentM;
	private Time rTime;
	private Time sTime;
	private Time eTime;
	private Date rDate;
	private int riderId;
	private int driverId;
	
	public Ride(int rideId, String pickup, String drop, String status, String vehiType, float rFee, String paymentM, Time rTime,
			Time sTime, Time eTime,Date rDate, int riderId, int driverId) {
		super();
		this.rideId = rideId;
		this.pickup = pickup;
		this.drop = drop;
		this.status = status;
		this.vehiType = vehiType;
		this.rFee = rFee;
		this.paymentM = paymentM;
		this.rTime = rTime;
		this.sTime = sTime;
		this.eTime = eTime;
		this.rDate = rDate;
		this.riderId = riderId;
		this.driverId = driverId;
	}

	public int getRideId() {
		return rideId;
	}

	public String getPickup() {
		return pickup;
	}

	public String getDrop() {
		return drop;
	}

	public String getStatus() {
		return status;
	}

	public String getvehiType() {
		return vehiType;
	}
	
	public float getrFee() {
		return rFee;
	}

	public String getPaymentM() {
		return paymentM;
	}

	public Time getrTime() {
		return rTime;
	}

	public Time getsTime() {
		return sTime;
	}

	public Time geteTime() {
		return eTime;
	}

	public Date getrDate() {
		return rDate;
	}

	public int getRiderId() {
		return riderId;
	}

	public int getDriverId() {
		return driverId;
	}
	
}

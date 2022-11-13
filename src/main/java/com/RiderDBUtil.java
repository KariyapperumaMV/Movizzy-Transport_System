package com;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class RiderDBUtil {
	private static boolean isSuccess = false;
	private static Connection con = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	//validate - rider
	public static boolean validate(String username, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "select * from rider where rName='"+username+"' and rPassword='"+password+"'";
			rs = state.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//get rider id
	public static int getRiderId(String userName, String password) {
		
		//ArrayList<Rider> rider = new ArrayList<>();
		int rId = 0;
		
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "select * from rider where rName='"+userName+"'and rPassword='"+password+"'";
			rs = state.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				rId = id;
			}
			
		} catch (Exception e) {
			
		}
		
		return rId;	
	}

	
	//register - rider
	public static boolean insertRider(String userName, String NIC, String address, String phone, String email, String password){
		
		//creating statement
		try {
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			//sql-query
			String sql = "Insert into rider values (0,'"+userName+"','"+NIC+"','"+address+"','"+phone+"','"+email+"','"+password+"')";
			
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//newRide - rider
	public static boolean newRide(int rider, String pLoca, String dLoca,String vehiType, String method) {
				
		//creating statement
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			LocalTime time = LocalTime.now();
			LocalDate day  = LocalDate.now();
			
			String sql ="insert into ride(pickupL, dropL, requestT, vehiType, date, riderId,payment) values ('"+pLoca+"','"+dLoca+"', '"+time+"','"+vehiType+"','"+day+"', '"+rider+"','"+method+"')";
			
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//get rider account details
	public static List<Rider> getRiderDetails(int riderId) {
			
		ArrayList<Rider> rider = new ArrayList<>();
			
		try {
				
			con = DBConnect.getConnection();
			state = con.createStatement();
			int noRides = 0;
			
			//getting no of rides
			String sql ="select count(*) from ride where riderId = '"+riderId+"' ";
			rs = state.executeQuery(sql);
			
			while (rs.next()) {
				noRides = rs.getInt(1);
			}
			
			//getting rider details
			String sql2 = "select * from rider where rId= '"+riderId+"' ";
			rs = state.executeQuery(sql2);
				
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String addr = rs.getString(4);;
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String pass = rs.getString(7);
				
				Rider r = new Rider(id , name, nic, phone, addr, email, pass, noRides);
				rider.add(r);
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
			return rider;	
		}
	//update rider details
	public static boolean updateRider(String id, String name, String nic, String phone, String address, String email, String password) {
		//create statement
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			String sql = "update rider set rName = '"+name+"', rNIC = '"+nic+"' , rPhone = '"+phone+"', rAddress = '"+address+"', rEmail = '"+email+"', rPassword = '"+password+"' where rId = '"+id+"'";
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//delete account
	public static boolean deleteRider(String riderId) {
		int convId = Integer.parseInt(riderId);
		//create statement
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			//deleting all ride  details
			String sql1 = "delete from ride where riderId = '"+convId+"' ";
			int rs = state.executeUpdate(sql1);
			
			
			String sql2 = "delete from rider where rId = '"+convId+"' ";
			rs = state.executeUpdate(sql2);
				
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}   
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//get ride details
	public static List<Ride> getRideRides(int rideId) {
		
		ArrayList<Ride> ride = new ArrayList<>();
			
		try {
				
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			//getting ride details
			String sql1 = "select * from ride where riderId= '"+rideId+"' ";
			rs = state.executeQuery(sql1);
				
			while (rs.next()) {
				int id = rs.getInt(1);
				String pick = rs.getString(2);
				String drop = rs.getString(3);
				String status = rs.getString(4);
				String vehiType = rs.getString(5);
				int charge = rs.getInt(6);
				String methodP = rs.getString(7);
				Time request = rs.getTime(8);
				Time start = rs.getTime(9);
				Time end = rs.getTime(10);
				Date date = rs.getDate(11);
				int rider = rs.getInt(12);
				int driver = rs.getInt(13);
				
				Ride r = new Ride(id, pick, drop, status, vehiType, charge, methodP, request, start, end, date, rider, driver);
				ride.add(r);
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
			return ride;	
		}
}

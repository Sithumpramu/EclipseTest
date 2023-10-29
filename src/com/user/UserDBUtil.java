package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static boolean isSuccess;
	
	public static List<LoginUser> validate(String Email, String password)
	{
		ArrayList<LoginUser> LogUser = new ArrayList<>();
		
		//create database connection to validate login details
		String url="jdbc:mysql://localhost:3306/online_grocery_ordering_system";
		String user="root";
		String pass="QADIRA";
		
		//validate
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "Select * from login_user where Email='"+Email+"' and Password='"+password+"'   ";
			
			ResultSet RS = stmt.executeQuery(sql);
			
			if(RS.next())
			{
				int id= RS.getInt(1);
				String fname=RS.getString(2);
				String lname=RS.getString(3);
				String mail=RS.getString(4);
				String mobile=RS.getString(5);
				String pword=RS.getString(6);
				
				LoginUser U = new LoginUser(id,fname,lname,mail,mobile,pword);
				
				LogUser.add(U);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return LogUser;
	}

	public static boolean insertUser(String fname,String lname ,String Email, String mobile, String password)
	{
		boolean isSuccess = false;
		
		//create database connection to register the user
		String url="jdbc:mysql://localhost:3306/online_grocery_ordering_system";
		String user="root";
		String pass="QADIRA";
		
		//insert the registration details
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into login_user values (0,'"+fname+"','"+lname+"','"+Email+"','"+mobile+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static boolean updateUser(String id,String fname,String lname ,String Email, String mobile, String password)
	{
		//create database connection to update the user
				String url="jdbc:mysql://localhost:3306/online_grocery_ordering_system";
				String user="root";
				String pass="QADIRA";
				
				
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql= "update login_user set FName='"+fname+"', LName='"+lname+"', Email='"+Email+"',Mobile='"+mobile+"',Password='"+password+"' "
					+ "where UserID='"+id+"' ";
			
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0)
			{
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static List<LoginUser> getUserDetails(String ID)
	{
		int convertedID = Integer.parseInt(ID);
		
		ArrayList<LoginUser> Loguser = new ArrayList<>();
		
		//create database connection to retrieve data
		String url="jdbc:mysql://localhost:3306/online_grocery_ordering_system";
		String user="root";
		String pass="QADIRA";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from login_user where UserID='"+convertedID+"' ";
			ResultSet rs=stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id=rs.getInt(1);
				String fname=rs.getString(2);
				String lname=rs.getString(3);
				String Email=rs.getString(4);
				String mobile=rs.getString(5);
				String password=rs.getString(6);
				
				LoginUser U = new LoginUser(id,fname,lname,Email,mobile,password);
				
				Loguser.add(U);
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return Loguser;
	}
	
	public static boolean deleteUser(String ID)
	{
		int conID = Integer.parseInt(ID);
		
		//create database connection to delete data
		String url="jdbc:mysql://localhost:3306/online_grocery_ordering_system";
		String user="root";
		String pass="QADIRA";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql= "delete from login_user where UserID='"+conID+"' ";
			int r = stmt.executeUpdate(sql);
			
			if(r>0)
			{
				isSuccess=true;
			}
			else
			{
				isSuccess=false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
}


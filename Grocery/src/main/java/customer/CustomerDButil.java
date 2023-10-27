package customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDButil {

	public static Customer Validate(String uname, String pw){
		

		Customer c = new Customer();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/new_schemagrocery";
		String user = "root";
		String password = "KMDSsql2023##";
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			String sql = "select * from Login_User where UserID = '"+uname+"' and Password = '"+pw+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				int mobile = rs.getInt(5);
				String pwd = rs.getString(6);
				
				//Customer c =new Customer(id,fname,lname,email,mobile,pwd);//
				c.setUsername(rs.getInt(1));
				c.setFNAme(rs.getString(2));
				c.setLName(rs.getString(3));
				c.setEmail(rs.getString(4));
				c.setModile(rs.getInt(5));
				c.setPW(rs.getString(6));
				
			}
			
		    }catch(Exception e) {
			    e.printStackTrace();
		    }
		
		return c;
	}
}

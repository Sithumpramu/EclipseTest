package groceryStore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDButill {

public static boolean insertItem(int CID,String name, double price , int quantity,int restock ) {
			boolean isSuccess = false;
			

			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DBConnect.getConnection();
				Statement stmt= con.createStatement();
				String sql="insert into item values(Cid,"+name+",price,quantity,restock)";
				int rs= stmt.executeUpdate(sql);
				
				if(rs>0){
				isSuccess=true;
			}else {
				isSuccess=false;
			}}
				
			catch(Exception e){
				e.printStackTrace();
				
			}
			return isSuccess;
			
		}

public class AdminDButil {

	public static Userlogin Validate(String uname, String pw){
		

		Userlogin u = new Userlogin();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/grocery_system";
		String user = "root";
		String password = "Mahen@2001";
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			String sql = "select * from login_user where UserID = '"+uname+"' and Password = '"+pw+"'";
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
				u.setUsername(rs.getInt(1));
				u.setFNAme(rs.getString(2));
				u.setLName(rs.getString(3));
				u.setEmail(rs.getString(4));
				u.setModile(rs.getInt(5));
				u.setPW(rs.getString(6));
				
			}
			
		    }catch(Exception e) {
			    e.printStackTrace();
		    }
		
		return u;
	}
}

      public static List<productItem> getItemDetails(int CID,String Name,int Qty,int restockLevel){
	    

      ArrayList<productItem> item = new ArrayList<>();

    //getItemDetails
      try {
      	Connection con = DBConnect.getConnection();
	    Statement stmt = con.createStatement();
	 
	   String sql ="select * from item where CID='"+CID+"'and name='"+Name+"' and quantity='"+Qty+"'and restock='"+restockLevel+"'";
	   ResultSet rs = stmt.executeQuery(sql);
	
	
	while(rs.next()) {
		int cID = rs.getInt(1);
		int ID = rs.getInt(2);
		String pname = rs.getString(3);
		int productqty = rs.getInt(4);
		int prestockLevel = rs.getInt(5);
		double pPrice = rs.getDouble(6);
		
		productItem i = new productItem(cID,ID,pname,productqty,prestockLevel,pPrice); 
		item.add(i);
	}
 }

     catch(Exception e){
	e.printStackTrace();
 }
 

    return item;

 }
 }

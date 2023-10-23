package customer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class CustomerDButil {

//	public static List <Customer> Validate(String uname, String pw){
//	
//		ArrayList<Customer> cus = new ArrayList<Customer>();
//		
//		//create database connection
//		String url = "jdbc:mysql://localhost:3306/grocery";
//		String user = "root";
//		String password = "KMDSsql2023##";
//		
//		
//		//validate
//		
//		try {
//			
//			Class.forName("com.mysql.jdbc.Driver");
//			
//			Connection con = DriverManager.getConnection(url,user,password);
//			Statement stmt = con.createStatement();
//			String sql = "select * from Login_User where UserID = '"+uname+"' and password = '"+pw+"'";
//			ResultSet rs = stmt.executeQuery(sql);
//			
//			if(rs.next())
//			{
//				int id = rs.getInt(1);
//				String fname = rs.getString(2);
//				String lname = rs.getString(3);
//				String email = rs.getString(4);
//				int mobile = rs.getInt(5);
//				String pwd = rs.getString(6);
//				
//				Customer c =new Customer(id,fname,lname,email,mobile,pwd);
//				cus.add(c);
//			}
//			
//		    }catch(Exception e) {
//			    e.printStackTrace();
//		    }
//		
//		
//		return cus;
//	}
		
		
	public static boolean insertdeliverydata(String orderno, String packageno, String trackingno)
	{
		boolean success =false;
		
		String url = "jdbc:mysql://localhost:3306/grocery";
		String user = "root";
		String password = "KMDSsql2023##";
		
		if(orderno.isEmpty() || packageno.isEmpty() || trackingno.isEmpty()) {
			System.out.println("fee");
			return false;
		}
		
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			String sql = "insert into userde values('"+orderno+"','"+packageno+"','"+trackingno+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				success=true;
			}
			else {
				success=false;
			}
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return success;
	}
	
		
		public static void insert(){
			
			
			//create database connection
			String url = "jdbc:mysql://localhost:3306/grocery";
			String user = "root";
			String password = "KMDSsql2023##";
			
			
		
			
			try {
				
				
				
				Connection con = DriverManager.getConnection(url,user,password);
				Statement stmt = con.createStatement();
				String sql = "select * from DeliveryDrivers";
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next())
				{
					
					String Driverid = rs.getString(1);
					String name = rs.getString(2);
					String outlet = rs.getString(3);
					
					
					System.out.print(Driverid + name + outlet);
					
				}
				
			    }catch(Exception e) {
				    e.printStackTrace();
			    }
			
			
		
		}
		
		
		
	}


package manager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



public class DButil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
		
/*----------------------insert Deliverydata-----------------------------------*/
	public static boolean insertdeliverydata(String orderno, String packageno, String trackingno)
	{
		boolean success =false;
		
		
		if(orderno.isEmpty() || packageno.isEmpty() || trackingno.isEmpty()) {
			System.out.println("feild empty");
			return false;
		}
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into deliverytrackinginfoo values('"+orderno+"','"+packageno+"','"+trackingno+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
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
	
	
/*----------------take Deliveryorder details from DB--------------------------*/
		public static orders getorderschedule(){
			
			orders o = new orders();
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from deliveryorderss";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String address = rs.getNString(4);
					
					
					o.setOrderID(rs.getInt(1));
					o.setDeliveryAddress( rs.getNString(4));
					
					
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return o;
		}
		
		
		
/*----------------take DeliverySchedule details from DB--------------------------*/		
            public static List <DeliverySchedule> getDeliverySchedule(){
			
			 ArrayList <DeliverySchedule> sche = new ArrayList<>();
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from deliveryschedule";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String DeliNo = rs.getNString(1);
					String Destination = rs.getNString(2);
					Date DeliverDate = rs.getDate(3);
					String Driver = rs.getNString(4);
					
					DeliverySchedule s = new DeliverySchedule(DeliNo,Destination,DeliverDate,Driver);
					
					sche.add(s);
					
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return sche;
		}
            
		
/*----------------Delete DeliverySchedule details from DB--------------------------*/
            
            public static boolean Deletescheduleitems(String primaryvaluetodelete){
    			
            	boolean success =false;
    			
    			try {
    				
    				con = DBconnect.getConnection();
    				stmt = con.createStatement();
    				
    				String sql = "delete from deliveryschedule where DeliveryNo = '"+primaryvaluetodelete+"'";
    				int rs = stmt.executeUpdate(sql);
    				
    				
    				if(rs>0) {
    					success = true;
    				}
    				else {
    					success = false;
    				}
    					
    				
    				
    			}
    			catch(Exception e){
    				e.printStackTrace();
    			
    			}
				return success;
    			
    		}
            
            
            
	}


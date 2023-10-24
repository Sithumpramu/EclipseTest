package manager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class DButil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
		
		/*insert dliverydata*/
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
			
			String sql = "insert into Deliverytrackinginfo values('"+orderno+"','"+packageno+"','"+trackingno+"')";
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
	
	
		/*take Deliveryorder details from DB*/
		public static List<orders> getorderschedule(){
			
			ArrayList<orders> orders = new ArrayList<orders>();
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from deliveryorderss";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String address = rs.getNString(3);
					
					orders o = new orders(id,address);
					orders.add(o);
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return orders;
		}
		
		
	}


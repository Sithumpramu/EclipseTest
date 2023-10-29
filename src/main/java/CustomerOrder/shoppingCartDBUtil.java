package CustomerOrder;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class shoppingCartDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean addtoCart(int ID, Double price) {
		boolean isSuccess = false;
		
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			
			String sql ="insert into cartdetails values (1,'"+ID+"','"+price+"',1)";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
		
	}
	
	public static List<cart> getCartItems(int cartid){
		
		ArrayList<cart> Cart = new ArrayList<>();
		
		//getItemDetails
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			
			String sql ="SELECT i.Name,i.Price, cd.* FROM item AS i JOIN cartdetails AS cd ON i.ID = cd.ID WHERE cd.CartID = 1";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int cartID = rs.getInt(3);
				int Id = rs.getInt(4);
				String Name = rs.getString(1);
				BigDecimal Price = rs.getBigDecimal(5);
				int quantity = rs.getInt(6);
				BigDecimal unitPrice = rs.getBigDecimal(2);
				
				cart shoppingCart = new cart(cartID,Id,Name,Price,quantity,unitPrice); 
				Cart.add(shoppingCart);
				
			}
		}
	
		catch (Exception e){
			e.printStackTrace();
		}
	
	
		return Cart;
	
	}
	
	public static boolean deleteItem(String id) {
		boolean isSuccess;
		
		int convertedID = Integer.parseInt(id);
		
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			
			System.out.println(convertedID);
			System.out.println("convertedID");
			
			String sql ="delete from cartdetails where id='"+convertedID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
			System.out.println(isSuccess);
			System.out.println("isSuccess");
			return isSuccess;
			
		}
		catch(Exception e) {
			return false;
		}
		
	}
	
	
	public static boolean editQty(String id, String qty, String price) {
		boolean isSuccess;
		
		int convertedID = Integer.parseInt(id);
		int convertedQty = Integer.parseInt(qty);
		Double convertedUnitPrice = Double.parseDouble(price);
		Double totalPrice = convertedUnitPrice * convertedQty;
	
		
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			
			System.out.printf(price,totalPrice,convertedQty);
			System.out.println("data update");
			
			String sql ="update cartdetails set selectedQty='"+convertedQty+"',totalPrice='"+totalPrice+"' where id='"+convertedID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
			return isSuccess;
			
		}
		catch(Exception e) {
			return false;
		}
	
	}
	
}



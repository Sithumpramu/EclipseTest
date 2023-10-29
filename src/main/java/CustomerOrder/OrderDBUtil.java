package CustomerOrder;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrderDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean insertDeliveryDetails(String name, String email, String phone, String address) {
		boolean isSuccess = false;

		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();

			String sql = "insert into deliveryOrders values (0,'" + name + "','" + email + "','" + phone + "','"
					+ address + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static boolean insertOrderDetails(String items, BigDecimal totalPrice, int deliveryId) {
		boolean isSuccess = false;

		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();

			String sql = "insert into orderdetails values (0,'" + items + "','" + totalPrice + "',1)";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static List<OrderDetails> getOrderDetails() {

		ArrayList<OrderDetails> orders = new ArrayList<>();

		// getItemDetails
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();

			String sql = "SELECT * FROM orderdetails";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int orderid = rs.getInt(1);
				String itemids = rs.getString(2);
				BigDecimal totPrice = rs.getBigDecimal(3);
				int deliveryid = rs.getInt(4);

				OrderDetails orderDetails = new OrderDetails(orderid, itemids, totPrice, deliveryid);
				orders.add(orderDetails);
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return orders;

	}

	public static Category getCategoryById(int cid) {

		// validate
		Category category = new Category();

		try {
			con = DBConnector.getConnection();

			String sql = "select * from Category where CID=? ";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, cid);

			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				category.setCID(rs.getInt(1));
				category.setCName(rs.getString(2));
				category.setImage(rs.getString(3));

			}
		}

		catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return category;
	}

	public static Item getItemById(int id) {
		Item item = null; // Initialize to null

		try {
			con = DBConnector.getConnection();

			String sql = "SELECT * FROM Item WHERE ID = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id); // Set the parameter value

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				int CID = rs.getInt(1);
				int ID = rs.getInt(2);
				String Name = rs.getString(3);
				int qty = rs.getInt(4);
				int restockLevel = rs.getInt(5);
				double Price = rs.getDouble(6);
				String image = rs.getString(7);

				item = new Item(ID, CID, Name, qty, restockLevel, Price, image);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return item;
	}

	public static List<Category> viewItemPage() {
		ArrayList<Category> category = new ArrayList<>();

		// validate

		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();

			String sql = "select * from Category ";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int CID = rs.getInt(1);
				String CName = rs.getString(2);
				String image = rs.getString(3);

				Category c = new Category(CID, CName, image);
				category.add(c);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return category;
	}

	public static List<Item> getItemDetails(int cid) {
		int convertedID = cid;

		ArrayList<Item> item = new ArrayList<>();

		// getItemDetails
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();

			String sql = "select * from item where CID='" + convertedID + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int CID = rs.getInt(1);
				int ID = rs.getInt(2);
				String Name = rs.getString(3);
				int qty = rs.getInt(4);
				int restockLevel = rs.getInt(5);
				double Price = rs.getDouble(6);
				String image = rs.getString(7);

				Item i = new Item(CID, ID, Name, qty, restockLevel, Price, image);
				item.add(i);
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return item;

	}

	public static boolean deleteCartDetails(int cartId) {
		boolean isSuccess = false;

		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();

			String sql = "DELETE FROM cartdetails WHERE CartID = '" + cartId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static boolean updateStockLevel(int itemId, int selectedQuantity) {
		boolean isSuccess = false;

		Item stockItem = getItemById(itemId);
		int updatedStockLevel = stockItem.getQty() - selectedQuantity;

		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();

			String sql = "update item set qty='" + updatedStockLevel + "' where id='" + itemId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

}

package manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBconnect {

	
	private static String url = "jdbc:mysql://localhost:3306/new_schemagrocery";
	private static String user = "root";
	private static String password = "KMDSsql2023##";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,password);
		}
		catch(Exception e) {
			System.out.println("DB connection not success");
		}
		
		return con;
	}
}

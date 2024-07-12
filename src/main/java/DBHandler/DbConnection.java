package DBHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection=null;
		
		String dburl= "jdbc:mysql://localhost:3306/gowild_wildlife_park";
		String dbUser="root";
		String dbPassword = "byarpar12";
		
		connection = DriverManager.getConnection(dburl,dbUser,dbPassword);
		
		System.out.println("Connection ok ...");		
		return connection;
	}
}

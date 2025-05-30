package connection;

import java.sql.*;

public class Connection_Class {
	
	
	public Connection connect() {
		try {
		    Class.forName("org.postgresql.Driver");
		    Connection con = DriverManager.getConnection(Properties.url, Properties.user, Properties.password);
		    System.out.println("Database connected");
		    return con;
		} catch (ClassNotFoundException e) {
		    System.out.println("JDBC Driver not found");
		    return null;
		} catch (SQLException e) {
		    System.out.println("Database not connected: " + e.getMessage());
		    return null;
		}
	}

}

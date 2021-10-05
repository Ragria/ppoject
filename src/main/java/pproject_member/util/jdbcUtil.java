package pproject_member.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class jdbcUtil {
	
	public static Connection getConnection() {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/p_project?useSSL=false";
		String user = "root";
		String password = "root";
		
		try {
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
	
}

package com.otz.Utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public static Connection getCon() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","luckyrex");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class DbInteraction {
    	static Connection conn;
	static Statement st;
	
	public static void  connect()
	{
	try {
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost/miniprojet";
	conn = DriverManager.getConnection(url, "root", "");
	st = conn.createStatement();
	} catch (Exception e) {
	e.printStackTrace();
				}	
	}
	
	public static void disconnect()
	{
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static int Maj(String sql)
	{
		int nb = 0;
		try {
			nb = st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nb;
	}
	public static ResultSet select(String sql)
	{
		ResultSet res = null;
		try {
			res = st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	} 
}

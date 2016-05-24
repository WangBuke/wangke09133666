package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
		//≤‚ ‘	
		public static void main(String[] args){
			DBUtil util=new DBUtil();
			Connection conn=util.getConnection();
			
			System.out.println(conn);
			
		}
		
		public void closeConn(Connection conn){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
		
		public Connection getConnection(){
		 	try {
			Class.forName("org.mariadb.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mariadb://localhost:3306/guitarshop","root","123456");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}

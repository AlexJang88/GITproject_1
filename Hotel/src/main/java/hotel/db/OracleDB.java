package hotel.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OracleDB {
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@58.73.200.225:1521/orcl";//집 
					//url = "jdbc:oracle:thin:@192.168.219.123:1521/orcl";//학원 
			String user = "team03";
			String pw = "team";
			conn = DriverManager.getConnection(url, user, pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {if(rs != null) {rs.close();}}catch(Exception e) {e.printStackTrace();}
		try {if(pstmt != null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}
		try {if(conn != null) {conn.close();}}catch(Exception e) {e.printStackTrace();}
	}
}

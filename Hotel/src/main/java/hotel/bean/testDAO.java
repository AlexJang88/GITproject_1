package hotel.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import hotel.db.OracleDB;

public class testDAO extends OracleDB{
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	public void test(String checkin,String checkout) {
		try {
			conn=getConnection();
			String sql="insert into test values(to_date(?,'YYYY-MM-DD'),to_date(?,'YYYY-MM-DD'))";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, checkin);
			pstmt.setString(2, checkout);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
			
			
		}
	}
}

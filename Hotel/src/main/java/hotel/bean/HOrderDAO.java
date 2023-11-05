package hotel.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import hotel.db.OracleDB;

public class HOrderDAO extends OracleDB {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	
	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
	    return instance;
	}
	
    
    
    // 사용자의 주문 내역을 데이터베이스에서 읽어오는 메서드
	public List<HOrderDTO> getOrders(String id) {
	    List<HOrderDTO> orders = new ArrayList<>();
	    String query = "SELECT * FROM horder WHERE id = ?";

	    try (Connection conn = getConnection(); // 새로운 데이터베이스 연결을 생성
	         PreparedStatement stmt = conn.prepareStatement(query)) {
	        stmt.setString(1, id);
	        try (ResultSet rs = stmt.executeQuery()) {
	            while (rs.next()) {
	                HOrderDTO order = new HOrderDTO();
	                order.setRenum(rs.getInt("renum"));
	                order.setId(rs.getString("id"));
	                order.setRef(rs.getInt("ref"));
	                order.setCheckin(rs.getString("checkin")); // 데이터베이스 컬럼 이름을 확인하고 수정
	                order.setCheckout(rs.getString("checkout"));
	                order.setAdult(rs.getInt("adult"));
	                order.setKid(rs.getInt("kid"));
	                order.setState(rs.getInt("state"));
	                order.setReg(rs.getTimestamp("reg"));
	                order.setPaytype(rs.getString("paytype"));
	                order.setAdult(rs.getInt("adult"));
	                order.setKid(rs.getInt("kid"));
	                orders.add(order);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return orders;
	}
	
	public List<HOrderDTO> getOrdersAdmin() {
	    List<HOrderDTO> orders = new ArrayList<>();
	    String query = "SELECT * FROM horder order by renum asc";

	    try (Connection conn = getConnection();
	         PreparedStatement stmt = conn.prepareStatement(query);
	         ResultSet rs = stmt.executeQuery()) {
	        while (rs.next()) {
	            HOrderDTO order = new HOrderDTO();
	            order.setRenum(rs.getInt("renum"));
	            order.setId(rs.getString("id"));
	            order.setCheckin(rs.getString("checkin"));
	            order.setCheckout(rs.getString("checkout"));
	            order.setAdult(rs.getInt("adult"));
	            order.setKid(rs.getInt("kid"));
	            order.setPaytype(rs.getString("paytype"));
	            order.setReg(rs.getTimestamp("reg"));
	            order.setName(rs.getString("name"));
	            orders.add(order);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return orders;
	}
    public void insertOrder(HOrderDTO order)throws Exception {

		try{			
			conn = getConnection();
			  
 	        String sql = "INSERT INTO horder (renum, id, ref, Checkin, Checkout, Adult, Kid, State, Paytype, Reg, AdultCount) VALUES "
 	        		+ " (horder_seq.nextval, ?, ?,to_date(?,'YYYY-MM-DD'), to_date(?,'YYYY-MM-DD'), ?, ?, ?, ?, SYSDATE)";
 	        pstmt = conn.prepareStatement(sql);
 	        pstmt.setString(1, order.getId());
 	        pstmt.setInt(2, order.getRef());
 	        pstmt.setString(3, order.getCheckin());
 	        pstmt.setString(4, order.getCheckout());
 	        pstmt.setInt(5, order.getAdult());
 	        pstmt.setInt(6, order.getKid());
 	        pstmt.setInt(7, order.getState());
	        pstmt.setString(8, order.getPaytype());
 	        pstmt.executeUpdate();
		}catch (Exception ex) {
   	        ex.printStackTrace();
   	    } finally {
   	     close(rs, pstmt, conn);
   	    }
   	}
}
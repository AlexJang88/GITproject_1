package hotel.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import hotel.db.OracleDB;

public class reviewDAO extends OracleDB {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	
	public List<reviewDTO> getReviewHotel(int hotelNum) {
	    List<reviewDTO> reviews = new ArrayList<>();

	    try {
	        conn = getConnection();
	        String sql = "SELECT * FROM review WHERE ref = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setInt(1, hotelNum);

	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            reviewDTO review = new reviewDTO();
	            review.setId(rs.getString("id"));
	            review.setContent(rs.getString("content"));
	            review.setReg(rs.getTimestamp("reg"));
	            review.setJumsu(rs.getInt("jumsu"));
	            reviews.add(review);
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // 에러 메시지 출력
	    } finally {
	        close(rs, pstmt, conn); // 데이터베이스 연결 및 리소스 닫기
	    }
	    return reviews;
	}

	
	public void insertReview(reviewDTO review) {
        

        try {
           
            conn = getConnection();

           
            String sql = "INSERT INTO review (num, id, jumsu, content, ref, reg) VALUES (review_seq.nextval, ?, ?, ?, ?, sysdate)";

            
            pstmt = conn.prepareStatement(sql);

            
            pstmt.setString(1, review.getId());
            pstmt.setInt(2, review.getJumsu());
            pstmt.setString(3, review.getContent());
            pstmt.setInt(4, review.getRef());

           
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            
           close(rs, pstmt, conn);
        }

        
    }
	
	
	public double getAvgJumsu(int hotelNum) {
	    double avgJumsu = 0;

	    try {
	        conn = getConnection();
	        String sql = "select round(avg(jumsu), 1) as avg_jumsu from review where ref = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setInt(1, hotelNum);

	        rs = pstmt.executeQuery();

	        if (rs.next()) {
	            avgJumsu = rs.getDouble("avg_jumsu");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        close(rs, pstmt, conn);
	    }
	    
	    return avgJumsu;
	}
	
	public int getcount(int hotelNum) {
	    int count = 0;

	    try {
	        conn = getConnection();
	        String sql = "select count(*) from review where ref = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setInt(1, hotelNum);

	        rs = pstmt.executeQuery();

	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        close(rs, pstmt, conn);
	    }
	    
	    return count;
	}
	

}
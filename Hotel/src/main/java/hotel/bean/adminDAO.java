package hotel.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import hotel.db.OracleDB;

public class adminDAO extends OracleDB{
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs =null;
	
	private static adminDAO instance = new adminDAO();
	public static adminDAO getInstance() {
		return instance;
	}
	
	private adminDAO(){}
	
	
	public adminDTO getPreView() {  //진행중예약(1),오늘예약(2),이번달예약(3),지난달예약(4),종료된예약(5)
			adminDTO dto = new adminDTO();					//오늘투숙객(6),내일투숙객(5),
		try {
			conn=getConnection(); 
			String sql="select count(*) total from horder where checkin >= to_char(sysdate,'YYYY-MM-DD')"; //1
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setOngoingReserve(rs.getInt(1));
			}
			sql="select count(*) total from horder where checkin = to_char(sysdate,'YYYY-MM-DD')"; //2
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setTodayReserve(rs.getInt(1));
			}
			sql="select sum(adult) adult,sum(kid) kid from horder where checkin = to_char(sysdate,'YYYY-MM-DD')"; //3
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setTodayAdult(rs.getInt("adult"));
				dto.setTodaykids(rs.getInt("kid"));
			}
			sql="select count(*) total from board where category=30 and re_step=0"; //4
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setNoanswer(rs.getInt(1));
			}
			sql="select count(*) total from horder where checkin between (trunc(SYSDATE,'MM')) and LAST_DAY(SYSDATE)"; //5
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setThisMonthReserve(rs.getInt(1));
			}
			sql="select count(*) total from horder where checkin between (add_months(trunc(SYSDATE,'MM'),-1)) and trunc(sysdate,'MM')-1"; //6
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setLastMonthReserve(rs.getInt(1));
			}
			sql="select count(*) total from horder where checkin < to_char(sysdate,'YYYY-MM-DD')"; //7
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setLastReserve(rs.getInt(1));
			}
			sql="select sum(adult) adult,sum(kid) kid from horder where checkin = trunc(sysdate)+1"; //8
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setTomorrowAdult(rs.getInt("adult"));
				dto.setTommorowkids(rs.getInt("kid"));
			}
			sql="select sum(price*(adult+kid))  from (select * from horder r,hotel h where r.ref=h.num)where checkin = to_char(sysdate,'YYYY-MM-DD')"; //9
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setTodaySales(rs.getInt(1));
			}
			sql="select sum(price*(adult+kid))  from (select * from horder r,hotel h where r.ref=h.num)where checkin between (trunc(SYSDATE,'MM')) and to_char(sysdate,'YYYY-MM-DD')"; //10
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setThisMonthSales(rs.getInt(1));
			}
			sql="select sum(price*(adult+kid))  from (select * from horder r,hotel h where r.ref=h.num)where checkin between (add_months(trunc(SYSDATE,'MM'),-1)) and trunc(sysdate,'MM')-1"; //11
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setLastMonthSales(rs.getInt(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			close(rs, pstmt, conn);
		}return dto;
		
	}
	
	
	
	
	
	
	
}

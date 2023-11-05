package hotel.bean;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
			sql="select sum(price) from (select * from horder r,hotel h where r.ref=h.num)where checkin = to_char(sysdate,'YYYY-MM-DD')"; //9
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setTodaySales(rs.getInt(1));
			}
			sql="select sum(price) from (select * from horder r,hotel h where r.ref=h.num)where checkin between (trunc(SYSDATE,'MM')) and to_char(sysdate,'YYYY-MM-DD')"; //10
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setThisMonthSales(rs.getInt(1));
			}
			sql="select sum(price) from (select * from horder r,hotel h where r.ref=h.num)where checkin between (add_months(trunc(SYSDATE,'MM'),-1)) and trunc(sysdate,'MM')-1"; //11
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
	public void paidUpdate(int renum,int paid) {
		System.out.println("paidUpdate start");
		try {
			conn=getConnection();
			String sql = "update horder set paid=paid+? where renum=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, paid);
			pstmt.setInt(2, renum);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
			
		}
	}
	public void reserveStatusUpdate(int renum,int totalPay, int paid) {
		System.out.println("reserveStatusUpdate start");
		try {
			String sql="";
			conn=getConnection();
			if(totalPay<=paid) {
			sql="update horder set state=1,paidreg=sysdate where renum=?";
			}else {
			sql="update horder set state=0,paidreg=sysdate where renum=?";	
			}
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, renum);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
	}
	public void reserveCancelStatus(int renum,String etc) {
		try {
			conn=getConnection();
			String sql="update horder set state=2,etc=? where renum=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, etc);
			pstmt.setInt(2, renum);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
	}
	public int getPaid(int renum) {
		System.out.println("getPaid start");
		int paid=0;
		try {
			conn=getConnection();
			String sql="select paid from horder where renum=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, renum);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				paid=rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return paid;
	}
	
	public ArrayList<MemberDTO> getAllMember(){
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			conn=getConnection();
			String sql="select * from member";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setGrade(rs.getInt("grade"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return list;
	}
	public void changeGrade(String id,int grade) {
		try {
			conn=getConnection();
			String sql="update member set grade=? where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, grade);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} 
	}
	public ArrayList<MemberDTO> serchGrade(String keyword){
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			conn=getConnection();
			String sql="select * from member where name like=? or id like=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			pstmt.setString(2, "%"+keyword+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setGrade(rs.getInt("grade"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return list;
	}
	
	public ArrayList<MemberDTO> serchGrade(int check,String keyword){
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			conn=getConnection();
			String sql="";
			if(check==1) {
				sql="select * from member where id like=?";
			}else if(check==2) {
				sql="select * from member where name like=?";
			}
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setGrade(rs.getInt("grade"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return list;
	}
	
	
	
	
	
	
	
}

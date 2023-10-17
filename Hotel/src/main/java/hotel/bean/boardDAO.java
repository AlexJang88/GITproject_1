package hotel.bean;

import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import hotel.db.OracleDB;

public class boardDAO extends OracleDB{
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs =null;
	
	private static boardDAO instance = new boardDAO();
	
	public static boardDAO getInstance() {
		return instance;
	} 
	private boardDAO() {}
	
	public ArrayList<boardDTO> getList(int num){
		ArrayList<boardDTO> list = new ArrayList<boardDTO>();
		int cate=num;
		String sql="";
		if(cate==20) {
			sql="select * from board where category>? and category<30";
		}else{
			sql="select * from board where category=?";
		}
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				boardDTO dto = new boardDTO();
				dto.setCategory(rs.getInt("category"));
				dto.setContent(rs.getString("content"));
				dto.setNum(rs.getInt("num"));
				dto.setReg(rs.getTimestamp("reg"));
				dto.setTitle(rs.getString("title"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
		return list;
		
	}
	
	public void boardInsert(boardDTO dto) {
		try {
			conn=getConnection();
			String sql="insert into board(num,content,id,title,category) values(board_seq.nextval,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getContent() );
			pstmt.setString(3, dto.getTitle());
			pstmt.setInt(4, dto.getCategory());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs, pstmt, conn);
		}
	}
	public void boardUpdate(boardDTO dto) {
		int result=0;
		try {
			conn=getConnection();
			String sql="update board set title=?,content=? where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getNum());
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
	}
	public void boardDelete(int num) {
		try {
			conn=getConnection();
			String sql="delete from board where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
		
	}
	public ArrayList<boardDTO> getSerchList(String keyworkd){
		ArrayList<boardDTO> list= new ArrayList<boardDTO>();
		try {
			conn=getConnection();
			String sql="select * from board where title like ? or title like ? and category>20";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyworkd+"%");
			pstmt.setString(2, sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				boardDTO dto= new boardDTO();
				dto.setContent(rs.getString("content"));
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}return list;
	}
	public ArrayList<boardDTO> getMyList(String id){
		ArrayList<boardDTO> list = new ArrayList<boardDTO>();
		try {
			conn=getConnection();
			String sql ="select * from board where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				boardDTO dto = new boardDTO();
				dto.setCategory(rs.getInt("category"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setNum(rs.getInt("num"));
				dto.setReg(rs.getTimestamp("reg"));
				dto.setTitle(rs.getString("title"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}return list;
		
	}
	
}




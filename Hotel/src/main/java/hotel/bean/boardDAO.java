package hotel.bean;

import java.sql.Connection;
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
		if(cate!=20&&cate!=30) {
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
	
	public void BoardInsert(boardDTO dto) {
		try {
			conn=getConnection();
			String sql="insert into board(num,content,title,category) values(board_seq.nextval,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getContent() );
			pstmt.setString(2, dto.getTitle());
			pstmt.setInt(3, dto.getCategory());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs, pstmt, conn);
		}
	}
	
	
	
	
}


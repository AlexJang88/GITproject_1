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
			String sql="";
			conn=getConnection();
			if(dto.getCategory()==30) {
				if(dto.getRe_step()==0) {
					sql="insert into board(num,content,id,title,category,ref) values(board_seq.nextval,?,?,?,?,board_seq.currval)";
				}else if(dto.getRe_step()==1) {
					sql="insert into board(num,content,id,title,category,ref,re_step) values(board_seq.nextval,?,?,?,?,?,1)";
				}	
			}else {
			sql="insert into board(num,content,id,title,category) values(board_seq.nextval,?,?,?,?)";
			}
			pstmt=conn.prepareStatement(sql);
			if(dto.getRe_step()==1) {
				pstmt.setString(1, dto.getContent() );
				pstmt.setString(2, dto.getId());
				pstmt.setString(3, dto.getTitle());
				pstmt.setInt(4, dto.getCategory());
				pstmt.setInt(5, dto.getRef());
			}else {
			pstmt.setString(1, dto.getContent() );
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getTitle());
			pstmt.setInt(4, dto.getCategory());
			}
			pstmt.executeUpdate();
			if(dto.getRe_step()==1) {
				sql="update board set re_step=1 where ref=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, dto.getRef());
				pstmt.executeUpdate();
			}
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
	public void boardDelete(int num,int category) {
		try {
			conn=getConnection();
			String sql="";
			if(category!=30) {
			sql="delete from board where num=?";
			}else {
			sql="delete from board where ref=?";
			}
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
	
	public boardDTO getContent(int num) {
		boardDTO dto = new boardDTO();
		try {
			conn=getConnection();
			String sql="select * from board where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setCategory(rs.getInt("category"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setNum(rs.getInt("num"));
				dto.setReg(rs.getTimestamp("reg"));
				dto.setTitle(rs.getString("title"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
		
		
		return dto;
	}
	
	public ArrayList<boardDTO> getMyList(int grade,String id){
		ArrayList<boardDTO> list = new ArrayList<boardDTO>();
		try {
			conn=getConnection();
			String sql="";
			if(grade==99) {
				sql="select * from board where category=30 and re_step=0 order by reg";
				pstmt=conn.prepareStatement(sql);
			}else {
			sql ="select * from board where ref in(select ref from board where id=? and category=30)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			}
			rs=pstmt.executeQuery();
			while(rs.next()) {
				boardDTO dto = new boardDTO();
				dto.setCategory(rs.getInt("category"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setNum(rs.getInt("num"));
				dto.setReg(rs.getTimestamp("reg"));
				dto.setTitle(rs.getString("title"));
				dto.setRef(rs.getInt("ref"));
				dto.setRe_step(rs.getInt("re_step"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}return list;
		
	}
	public boardDTO getAnswer(int ref) {
		boardDTO dto = new boardDTO();
		try {
			conn=getConnection();
			String sql="select * from board where ref=? and not num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, ref);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setCategory(rs.getInt("category"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setNum(rs.getInt("num"));
				dto.setRe_step(rs.getInt("re_step"));
				dto.setRef(rs.getInt("ref"));
				dto.setReg(rs.getTimestamp("reg"));
				dto.setTitle(rs.getString("title"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return dto;
	}
	
}




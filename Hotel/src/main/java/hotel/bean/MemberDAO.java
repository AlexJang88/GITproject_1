package hotel.bean;

import java.lang.reflect.Member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import hotel.db.OracleDB;

public class MemberDAO extends  OracleDB {
   private Connection conn=null;
   private PreparedStatement pstmt=null;
   private ResultSet rs=null;
   
   
   private static MemberDAO instance = new MemberDAO();

   public static MemberDAO getInstance() {
       return instance;
   }
   public MemberDAO() {}
   
   public int delete(String id, String pw) {
       int result = 0;
       
       try (Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement("delete from member where id=? and pw=?")) {
           pstmt.setString(1, id);
           pstmt.setString(2, pw);
           
           result = pstmt.executeUpdate();
       } catch (SQLException e) {
           e.printStackTrace(); // 또는 다른 오류 처리 방법을 고려합니다.
       }
       
       return result;
   }




       public boolean loginCheck(String id,String pw) {
           boolean result = false;
           conn = getConnection();
           try {
               String sql = "select * from member where id=? and pw=?";
               pstmt = conn.prepareStatement(sql);
               pstmt.setString(1, id);
               pstmt.setString(2, pw);
               rs = pstmt.executeQuery();
               if (rs.next()) {
                   result = true;
               }
           } catch (Exception e) {
               e.printStackTrace();
           }finally {
        	   close(rs, pstmt, conn);
           }return result;
       }
   
   public void insertMember(MemberDTO member)throws Exception {
      try{         
           conn = getConnection();
           
            String sql = "INSERT INTO member (id, pw, name, email, birth, addr, pnum) VALUES "
                  + "(?, ?, ?, ?, ?, ?, ?)";
            
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, member.getId());
            pstmt.setString(2, member.getPw());
            pstmt.setString(3, member.getName());
            pstmt.setString(4, member.getEmail());
            pstmt.setString(5, member.getBirth());
            pstmt.setString(6, member.getAddr());
            pstmt.setString(7, member.getPnum());


            pstmt.executeUpdate();
            
            
         
      }catch (Exception ex) {
              ex.printStackTrace();
          } finally {
           close(rs, pstmt, conn);
          }
      }
   
   

    public int confirmId(String id) throws Exception {
        int x = -1;
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT id FROM member WHERE id = ?")) {
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                x = 1; // 해당 아이디 있음
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
              close(rs, pstmt, conn);
             }
        
        return x;
    }
    public MemberDTO myInfo(String id) {
       MemberDTO dto = new MemberDTO();
        conn = getConnection();
        try {
            String sql = "select * from member where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto.setId(rs.getString("id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        close(rs, pstmt, conn);
        return dto;
    }
   

}
package hotel.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import hotel.db.OracleDB;

public class hotelDAO extends OracleDB{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public ArrayList<hotelDTO> hotelList(int sel, String check, String title, String checkin, String checkout, int [] adult, int [] kid, int start, int end){
		ArrayList<hotelDTO> list = new ArrayList<>();
		int maxRoomValue = 0;
		int maxKidValue = 0;
		String sql="";
		for (int i = 0; i < adult.length; i++) {
		    if (adult[i] > maxRoomValue) {
		        maxRoomValue = adult[i];
		    }
		}
		for (int i = 0; i < kid.length; i++) {
			if (kid[i] > maxKidValue) {
				maxKidValue = kid[i];
			}
		}
		String[] chk = check.split(",");
		String[] typeArray = new String[chk.length];
		for (int i = 0; i < chk.length; i++) {
		    if ("1".equals(chk[i])) {
		        typeArray[i] = "호텔";
		    } else if ("2".equals(chk[i])) {
		        typeArray[i] = "리조트";
		    } else if ("3".equals(chk[i])) {
		        typeArray[i] = "모텔";
		    } else if ("4".equals(chk[i])) {
		    	typeArray[i] = "기타";
		    }
		}
		
		if (sel == 5) {
		    sql = "SELECT h.*, r.average_value " +
		          "FROM hotel h " +
		          "LEFT JOIN ( " +
		          "    SELECT ref, ROUND(AVG(jumsu), 1) AS average_value " +
		          "    FROM review " +
		          "    GROUP BY ref " +
		          ") r ON h.ref = r.ref " +
		          "WHERE (h.title LIKE ? OR h.address LIKE ?) " +
		          "AND h.type IN (";
		    for (int i = 0; i < typeArray.length; i++) {
		        sql += (i == 0 ? "?" : ", ?");
		    }
		    sql += ") " +
		          "AND h.adultmax >= ? " +
		          "AND h.kidmax >= ? " +
		          "AND h.re_step = 0 " +
		          "AND ROWNUM BETWEEN ? AND ? " +
		          "ORDER BY r.average_value DESC NULLS LAST";
		} else {
		
			sql = "select * from "
					+ " (select b.* , rownum r from "
					+ " (select * from hotel where (title like ? or address like ?) "
					+ " and type in (";
			for (int i = 0; i < typeArray.length; i++) {
			    sql += (i == 0 ? "?" : ", ?");
			}
			sql += ") and adultmax >= ? and kidmax >= ? and re_step = 0 and status=10";
			
			if(sel == 1) {
				sql += ")b)";			
			}else if(sel == 2) {
				sql += " order by count desc)b)";			
			}else if(sel == 3) {
				sql += " order by price desc)b)";			
			}else if(sel == 4) {
				sql += " order by price asc)b)";			
			}
			sql += " where r >= ? and r <= ?";
		}

		conn = getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			String query = "%" + title + "%";
			pstmt.setString(1, query);
			pstmt.setString(2, query);
		    for (int i = 0; i < typeArray.length; i++) {
		        pstmt.setString(i + 3, typeArray[i]);
		    }
		    pstmt.setInt(typeArray.length + 3, maxRoomValue); 
		    pstmt.setInt(typeArray.length + 4, maxKidValue); 
		    pstmt.setInt(typeArray.length + 5, start);
		    pstmt.setInt(typeArray.length + 6, end);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				hotelDTO dto = new hotelDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setAddress(rs.getString("address"));
				dto.setPrice(rs.getInt("price"));
				dto.setImg(rs.getString("img"));
				dto.setRef(rs.getInt("ref"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs, pstmt, conn);
		}
		return list;
	}
	public ArrayList<hotelDTO> calendar() {
		ArrayList<hotelDTO> list = new ArrayList<hotelDTO>();
		try {
			String sql="SELECT horder.*, hotel.title "
					+ " FROM horder "
					+ " JOIN hotel ON horder.ref = hotel.num";
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				hotelDTO dto= new hotelDTO();
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("checkin"));
				dto.setService(rs.getString("checkout"));
				dto.setAdultmax(rs.getInt("adult"));
				dto.setKidmax(rs.getInt("kid"));
				dto.setContact(rs.getString("id"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return list;
	}
	 public ArrayList<hotelDTO> hothotel(String loc){
			ArrayList<hotelDTO> list = new ArrayList<>();
			conn = getConnection();
			String sql="";
			try {
				if(loc.equals("대구")) {
					sql = "select * from "
							+ " (select * from hotel where address like ? and address not like'%해운대구%' and re_step=0 and status=10 order by count desc) "
							+ " where rownum <= 9";
				}else {
					sql = "select * from "
						+ " (select * from hotel where address like ? and re_step=0 and status=10 order by count desc) "
						+ " where rownum <= 9";
				}
				pstmt = conn.prepareStatement(sql);
				String query = "%" + loc + "%";
				pstmt.setString(1, query);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					hotelDTO dto = new hotelDTO();
					dto.setImg(rs.getString("img"));
					dto.setTitle(rs.getString("title"));
					dto.setPrice(rs.getInt("price"));
					dto.setRef(rs.getInt("ref"));
					list.add(dto);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close(rs, pstmt, conn);
			}
			return list;
		}
	
	 public ArrayList<hotelDTO> HotelBlock(String chkin, String chkout) {
			ArrayList<hotelDTO> list = new ArrayList<>();
			conn = getConnection();
			try {
				String sql = "select * "
						+ " from horder "
						+ "where (checkin < to_date(?) AND checkout > to_date(?))";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, chkout);
				pstmt.setString(2, chkin);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					hotelDTO dto = new hotelDTO();
					dto.setRef(rs.getInt("ref"));
					list.add(dto);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close(rs, pstmt, conn);
			}
			return list;
		}
	
	 public int count(String title, String check, String checkin, String checkout, int [] adult, int [] kid) {
			String sql="";
			int maxRoomValue = 0;
			int maxKidValue = 0;
			for (int i = 0; i < adult.length; i++) {
			    if (adult[i] > maxRoomValue) {
			        maxRoomValue = adult[i];
			    }
			}
			for (int i = 0; i < kid.length; i++) {
				if (kid[i] > maxKidValue) {
					maxKidValue = kid[i];
				}
			}
			String[] chk = check.split(",");
			String[] typeArray = new String[chk.length];
			for (int i = 0; i < chk.length; i++) {
			    if ("1".equals(chk[i])) {
			        typeArray[i] = "호텔";
			    } else if ("2".equals(chk[i])) {
			        typeArray[i] = "리조트";
			    } else if ("3".equals(chk[i])) {
			        typeArray[i] = "모텔";
			    } else if ("4".equals(chk[i])) {
			    	typeArray[i] = "기타";
			    }
			}
			sql = "select count(*) from hotel where (title like ? or address like ?) and type in (";
			for (int i = 0; i < typeArray.length; i++) {
			    sql += (i == 0 ? "?" : ", ?");
			}
			sql += ") and adultmax >= ? and kidmax >= ? and re_step = 0 and status=10";
			conn = getConnection();
			int result = 0;
			try {
				pstmt = conn.prepareStatement(sql);
				String query = "%" + title + "%";
				pstmt.setString(1, query);
				pstmt.setString(2, query);
			    for (int i = 0; i < typeArray.length; i++) {
			        pstmt.setString(i + 3, typeArray[i]);
			    }
			    pstmt.setInt(typeArray.length + 3, maxRoomValue); 
			    pstmt.setInt(typeArray.length + 4, maxKidValue); 

				rs = pstmt.executeQuery();
				while(rs.next()) {
					result = rs.getInt(1);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close(rs, pstmt, conn);
			}
			return result;
		}
	
	
	 public int count(String title) {
			conn = getConnection();
			int result = 0;
			try {
				String sql = "select count(*) from hotel "
						+ " where (title like ? or address like ?) and re_step = 0 and status=10";
				pstmt = conn.prepareStatement(sql);
				String query = "%" + title + "%";
				pstmt.setString(1, query);
				pstmt.setString(2, query);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					result = rs.getInt(1);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				close(rs, pstmt, conn);
			}
			return result;
		}
	
	 public int checkRoom(String block, int num) {
			String[] bk1 = block.split(",");
			String [] typeArray = new String[bk1.length];
			int result = 0;
			String sql="select count(*) from (select * from hotel "
					+ " where re_step=1 and ref=? and status=10) where num not in( ";
			for(int i=0;i<typeArray.length;i++) {
				sql+=(i == 0 ? "?" : ", ?");
			}
			sql+=" )";
			conn=getConnection();
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				for (int i = 0; i < typeArray.length; i++) {
			        pstmt.setString(i + 2, bk1[i]);
			    }
				rs=pstmt.executeQuery();
				if(rs.next()) {
					result=rs.getInt(1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				close(rs, pstmt, conn);
			}
			return result;
		}

	
	
	
	
	public void hotelMainInsert(hotelDTO dto) {
			int maxnum=0;
		try {
			conn=getConnection();
			
			String sql="insert into hotel(num,type,title,content,contactfax,contact,service,price,address,img,ref,re_step) "
						+ " values(hotel_seq.nextval,?,?,?,?,?,?,0,?,?,hotel_seq.currval,0)";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getType());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getContactfax());
			pstmt.setString(5, dto.getContact());
			pstmt.setString(6, dto.getService());
			pstmt.setString(7, dto.getAddress());
			pstmt.setString(8, dto.getImg());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
	}
	public hotelDTO getContentMain(int num) {
		hotelDTO dto= new hotelDTO();
		try {
			conn=getConnection();
			String sql="select * from hotel where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				dto.setAddress(rs.getString("address"));
				dto.setTitle(rs.getString("title"));
				dto.setImg(rs.getString("img"));
				dto.setService(rs.getString("service"));
				dto.setRoomtype(rs.getString("roomtype"));
				dto.setContact(rs.getString("contact"));
				dto.setContactfax(rs.getString("contactfax"));
				dto.setAdultmax(rs.getInt("adultmax"));
				dto.setContent(rs.getString("content"));
				dto.setCount(rs.getInt("count"));
				dto.setKidmax(rs.getInt("kidmax"));
				dto.setPrice(rs.getInt("price"));
				dto.setNum(rs.getInt("num"));
				dto.setHeartcount(rs.getInt("heartcount"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return dto;
	}
	public void hotelContentInsert(hotelDTO dto) {
		try {
			conn=getConnection();
			String sql="insert into hotel(num,type,title,content,contactfax,contact,price,address,img,ref,re_step,roomtype) "
					+ " values(hotel_seq.nextval,?,?,?,?,?,?,?,?,?,1,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getType());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getContactfax());
			pstmt.setString(5, dto.getContact());
			pstmt.setInt(6, dto.getPrice());
			pstmt.setString(7, dto.getAddress());
			pstmt.setString(8, dto.getImg());
			pstmt.setInt(9, dto.getRef());
			pstmt.setString(10, dto.getRoomtype());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
	}
	public ArrayList<hotelDTO> getContent(int num) {
		ArrayList<hotelDTO> list = new ArrayList<hotelDTO>();
		try {
			String sql="select * from hotel where ref=? and re_step=1";
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				hotelDTO dto= new hotelDTO();
				dto.setNum(rs.getInt("num"));
				dto.setRoomtype(rs.getString("roomtype"));
				dto.setService(rs.getString("service"));
				dto.setType(rs.getString("type"));
				dto.setRe_step(rs.getInt("re_step"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setAdultmax(rs.getInt("adultmax"));
				dto.setImg(rs.getString("img"));
				dto.setPrice(rs.getInt("price"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		} return list;
	}
	public void priceUpdate(int num) {
		int min=0;
		try {
			conn=getConnection();
			String sql="select min(price) from hotel where ref=? and re_step=1";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				min=rs.getInt(1);
			}
			sql="update hotel set price=? where num=? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, min);
			pstmt.setInt(2, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
	}
	public void updateContent(hotelDTO dto) {
		try {
			conn=getConnection();
			if(dto.getRe_step()==1) {
				String sql="update hotel set title=?,content=?,roomtype=?,price=?,img=? where num=?";	
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, dto.getTitle());
				pstmt.setString(2, dto.getContent());
				pstmt.setString(3, dto.getRoomtype());
				pstmt.setInt(4, dto.getPrice());
				pstmt.setString(5, dto.getImg());
				pstmt.setInt(6, dto.getNum());
				pstmt.executeUpdate();	
			
			}else {
				String sql="update hotel set title=?,content=?,contact=?,contactfax=?,img=? where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, dto.getTitle());
				pstmt.setString(2, dto.getContent());
				pstmt.setString(3, dto.getContact());
				pstmt.setString(4, dto.getContactfax());
				pstmt.setString(5, dto.getImg());
				pstmt.setInt(6, dto.getNum());
				pstmt.executeUpdate();
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}
	}
	public void deleteHotel(int num,int re_step) {
		try {
			conn=getConnection();
			String sql="";
			if(re_step==1) {
				sql="delete from hotel where num=?";
			}else {
				sql="delete from hotel where ref=?";
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
	 public ArrayList<hotelDTO> getAllMain(){
		ArrayList<hotelDTO> list = new ArrayList<hotelDTO>();
		try {
			conn=getConnection();
			String sql="select * from hotel where re_step=0 and status=10";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				hotelDTO dto = new hotelDTO();
				dto.setAddress(rs.getString("address"));
				dto.setTitle(rs.getString("title"));
				dto.setImg(rs.getString("img"));
				dto.setPrice(rs.getInt("price"));
				dto.setRe_step(rs.getInt("re_step"));
				dto.setNum(rs.getInt("num"));
				dto.setRef(rs.getInt("ref"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs, pstmt, conn);
		}return list;
		
	}
		public boolean checkNull(String str) {
			return str==null || str.isEmpty();
		}
		
		public ArrayList<hotelDTO> getAdminHotelList(){
			ArrayList<hotelDTO> list = new ArrayList<hotelDTO>();
			try {
				conn=getConnection();
				String sql = "select * from hotel where re_step=0 and status=0";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					hotelDTO dto = new hotelDTO();
					dto.setAddress(rs.getString("address"));
					dto.setTitle(rs.getString("title"));
					dto.setImg(rs.getString("img"));
					dto.setService(rs.getString("service"));
					dto.setRoomtype(rs.getString("roomtype"));
					dto.setContact(rs.getString("contact"));
					dto.setContactfax(rs.getString("contactfax"));
					dto.setAdultmax(rs.getInt("adultmax"));
					dto.setPrice(rs.getInt("price"));
					dto.setContent(rs.getString("content"));
					dto.setCount(rs.getInt("count"));
					dto.setKidmax(rs.getInt("kidmax"));
					dto.setNum(rs.getInt("num"));
					dto.setHeartcount(rs.getInt("heartcount"));
					list.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close(rs, pstmt, conn);
			} return list;
		}
		
		public ArrayList<hotelDTO> getClientHotelList(){
			ArrayList<hotelDTO> list = new ArrayList<hotelDTO>();
			try {
				conn=getConnection();
				String sql = "select * from hotel where re_step=0 and status=10";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					hotelDTO dto = new hotelDTO();
					dto.setAddress(rs.getString("address"));
					dto.setTitle(rs.getString("title"));
					dto.setImg(rs.getString("img"));
					dto.setService(rs.getString("service"));
					dto.setRoomtype(rs.getString("roomtype"));
					dto.setContact(rs.getString("contact"));
					dto.setContactfax(rs.getString("contactfax"));
					dto.setAdultmax(rs.getInt("adultmax"));
					dto.setPrice(rs.getInt("price"));
					dto.setContent(rs.getString("content"));
					dto.setCount(rs.getInt("count"));
					dto.setKidmax(rs.getInt("kidmax"));
					dto.setNum(rs.getInt("num"));
					dto.setHeartcount(rs.getInt("heartcount"));
					list.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close(rs, pstmt, conn);
			} return list;
		}
		public void changeHotelStatus(int ref,int status) {
			try {
				conn=getConnection();
				String sql = "update hotel set status=? where ref=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, status);
				pstmt.setInt(2, ref);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close(rs, pstmt, conn);
			} 
		}
		public boolean getTest(ArrayList<hotelDTO> list, int num[], int room) {
		      boolean gt = false;
		      int st = 0;
		      String rt = "";
		      for(int i=0; i<room; i++) {
		         for(hotelDTO dto : list) {
		        	 if(!rt.contains(Integer.toString(dto.getNum()))) {
		        		 System.out.println("maxcount : "+num[i]); 
		        		 if(num[i] <= dto.getAdultmax()) {
		                     rt += Integer.toString(dto.getNum()) +",";
		                     st++;
		                     if(st == room) {
		        		         gt = true;
		        		         break;
		        		      }
		               }
		            }
		         }
		      }
		      
		      return gt;
		   }
	
}

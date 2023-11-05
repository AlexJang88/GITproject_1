<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@page import="hotel.bean.hotelDTO"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
MemberDAO dao = MemberDAO.getInstance();
String id = (String) session.getAttribute("sid");
int grade= dao.checkGrade(id);
// 사용자 ID가 관리자 ID ("admin")와 일치하는지 확인
if (grade!=99) {
%>
<script>
    alert("관리자페이지입니다");
    window.location="/BookStay/views/main.jsp";
</script>
<%
}
%>
<button type="button" onclick="window.location='/BookStay/hotel/hotelWriteForm.jsp'">숙소 등록</button>
<button type="button" onclick="window.location='/BookStay/admin/adminHotelListPro.jsp?check=1'">등록중인 숙소</button>
<button type="button" onclick="window.location='/BookStay/admin/adminHotelListPro.jsp?check=2'">등록완료된 숙소</button><hr />
<table>
	<tr>
		<td>게시물번호</td><td>제목</td><td>주소</td><td>상태</td>
	</tr>
<%hotelDAO hdao = new hotelDAO();
  if(request.getParameter("check").equals("1")){
	  ArrayList<hotelDTO> list = hdao.getAdminHotelList();
	  for(hotelDTO d : list){
		%>
		<tr>
			<td><%=d.getNum()%></td>
			<td><a href="/BookStay/hotel/hotelContent.jsp?ref=<%=d.getRef()%>"><%=d.getTitle()%></a></td><td><%=d.getAddress() %></td>
			<td><button type="button" onclick="window.location='/BookStay/admin/adminStatusUpdate.jsp?ref=<%=d.getRef()%>&status=<%=d.getStatus()%>'">등록글 활성화</button>
			<button type="button" onclick="window.location='hotelWriteForm.jsp?ref=<%=d.getRef()%>'">방등록</button>
			</td>
		</tr>
		<%
	  }
	  
	  
  }else if(request.getParameter("check").equals("2")){
	  ArrayList<hotelDTO> list = hdao.getClientHotelList();
	  for(hotelDTO d : list){
			%>
			<tr>
				<td><%=d.getNum()%></td><td><%=d.getTitle()%></td><td><%=d.getAddress() %></td>
				<td><button type="button" onclick="window.location='/BookStay/admin/adminStatusUpdate.jsp?ref=<%=d.getRef()%>&status=<%=d.getStatus()%>'">등록글 비활성화</button></td>
			</tr>
			<%
		  }
  }
 
%>
 </table>


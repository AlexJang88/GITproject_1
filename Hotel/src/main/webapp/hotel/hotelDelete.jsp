<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String sid = (String) session.getAttribute("sid");
int id= mdao.checkGrade(sid);
if (id!=99){
	
	 %>
	  <script>
	  	alert("관리자만 접근할수 있습니다.");
	  	window.location="../views/main.jsp";
	  </script>
<%}
int num=Integer.parseInt(request.getParameter("num"));
int re_step=Integer.parseInt(request.getParameter("re_step"));
int ref=Integer.parseInt(request.getParameter("ref"));
hotelDAO dao= new hotelDAO();

if(re_step==1){
		
		dao.deleteHotel(num, re_step);
		dao.priceUpdate(num);
	%>
	<script>
		alert("삭제되었습니다. ");
		window.location="hotelContent.jsp?ref=<%=ref%>";
		
	</script>
	<%
}else{
	 	dao.deleteHotel(num, re_step);
	%>
	<script>
		alert("삭제되었습니다. ");
		window.location="/views/hlist.jsp";
	</script>
	<%
	
}
%>
<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
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

	
  String check = request.getParameter("check");
  if(check.equals("1")){
	  response.sendRedirect("/BookStay/admin/adminHotelList.jsp?check=1");
  }else if(check.equals("2")){
	  response.sendRedirect("/BookStay/admin/adminHotelList.jsp?check=2");
  }else{
	  %>
	  <script>
	  	alert("잘못된 접근입니다.");
	 	window.location="/BookStay/views/main.jsp";
	  </script>
	  <%
  }

%>
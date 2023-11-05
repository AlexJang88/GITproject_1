<%@page import="hotel.bean.adminDAO"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("sid");
MemberDAO dao = new MemberDAO();
adminDAO adao = adminDAO.getInstance();

int grade= dao.checkGrade(id);
if(grade!=99){%>
<script>
    alert("관리자페이지입니다");
    window.location="/BookStay/views/main.jsp";
</script>
<%}%>
<%String mid = request.getParameter("id");
  int mgrade = Integer.parseInt(request.getParameter("grade"));
  response.sendRedirect("/BookStay/admin/adminGradeList.jsp");
%>
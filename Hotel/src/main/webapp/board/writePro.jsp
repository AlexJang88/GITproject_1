<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String sid = (String) session.getAttribute("sid");
int id= mdao.checkGrade(sid);
if (id!=11){
	
	 %>
	  <script>
	  	alert("로그인후 이용해주세요");
	  	window.location="../views/main.jsp";
	  </script>
<%}
dto.setId(sid);
boardDAO dao = boardDAO.getInstance();
dto.setCategory(Integer.parseInt(request.getParameter("category")));
dao.boardInsert(dto);
int num=dto.getCategory();
System.out.println(request.getParameter("category"));
if(num>=20&&num<30){ 
%>
<script>
	alert("작성되었습니다.");
	window.location="QnAList.jsp";
</script>
<%}else if(num==10){ %>
<script>
	alert("작성되었습니다.");
	window.location="notice.jsp";
</script>
<%}else{
	%>
	<script>
	alert("작성되었습니다.");
	window.location="myQuestion.jsp";
</script>
	<%
} %>


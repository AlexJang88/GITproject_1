<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
 session.setAttribute("sid", "admin");
 String id = (String)session.getAttribute("sid");
 if(id==null){
	 %>
	 <script>
	 	alert("로그인을 먼저해주세요");
	 	window.location="/login/main.jsp";
	 </script>
	 <%
 }
%>
<form action="writePro.jsp" method="post">
<input type="hidden" name="id">
<input type="hidden" name="category" value="30">
제목<input type="text" name="title"><br/>
내용<br/>
<textarea rows="6" cols="30" name="content"></textarea>
<input type="submit" value="작성">
</form>
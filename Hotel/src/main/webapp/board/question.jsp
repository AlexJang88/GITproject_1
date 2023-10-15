<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
 String id = (String)session.getAttribute("sid");
 if(id==null){
	 %>
	 <script>
	 	alert("로그인을 먼저해주세요");
	 	window.location="/main/main.jsp";
	 </script>
	 <%
 }
%>
<form action="writepro.jsp" method="post">
<input type="hidden" name="id">
<input type="hidden" name="category" value="30">
제목<input type="text" name="title"><br/>
내용<br/>
<textarea rows="6" cols="30" name="content"></textarea>
</form>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTf-8");%>

<%
session.setAttribute("sid","admin");
if(!session.getAttribute("sid").equals("admin")){
	%>
	<script>
		alert("관리자만 접근할수 있습니다.");
		window.location="/login/main.jsp";
	</script>
	<%
	
} %>

<form action="adminWritePro.jsp" method="post">
	<select>
		<option name="category" value="10">공지사항</option>
		<option name="category" value="21">예약</option>
		<option name="category" value="22">체크인</option>
		<option name="category" value="23">검색</option>
		<option name="category" value="24">계정</option>
		<option name="category" value="25">기타</option>
	</select><br />
	제목 :<input type="text" name="title"><br />
	내용 :<textarea rows="7" cols="30" name="content"></textarea><br />
	<input type="submit">
</form>
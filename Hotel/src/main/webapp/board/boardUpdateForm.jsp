<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
    <jsp:setProperty property="*" name="dto"/>
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
<form action="boardUpdatePro.jsp" method="post">
	제목 :<input type="text" name="title" value="<%=dto.getTitle()%>"><br />
	내용 :<textarea rows="7" cols="30" name="content"><%=dto.getContent() %></textarea><br />
	<input type="hidden" name="category" value="<%=dto.getCategory() %>">
	<input type="hidden" name="num" value="<%=dto.getNum()%>">
	<input type="submit" value="수정">
</form>
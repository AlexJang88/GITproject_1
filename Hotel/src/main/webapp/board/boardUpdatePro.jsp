<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
request.setCharacterEncoding("UTF-8");
session.setAttribute("sid","admin");
if(!session.getAttribute("sid").equals("admin")){
	%>
	<script>
		alert("관리자만 접근할수 있습니다.");
		window.location="/login/main.jsp";
	</script>
	<%
	
} %>
<%
boardDAO dao = boardDAO.getInstance();
int result=0;
int category=dto.getCategory();
dao.boardUpdate(dto);
if(category==10){%>
	%>
	<script>
		alert("수정 되었습니다.");
		window.location="notice.jsp";
	</script>
	<%}else if(category >= 20 && category<30){%>
	
	<script>
		alert("수정 되었습니다.");
		window.location="QnAList.jsp?category=<%=dto.getCategory()%>";
	</script>
	<%}%>

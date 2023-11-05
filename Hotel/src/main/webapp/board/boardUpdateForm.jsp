<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<%request.setCharacterEncoding("UTf-8");%>

<%
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
boardDTO dto = new boardDTO();
boardDAO dao = boardDAO.getInstance();
int num=Integer.parseInt(request.getParameter("num"));
dto=dao.getContent(num);
%>
<%@ include file="../views/menu.jsp" %>
<form action="boardUpdatePro.jsp" method="post">
	제목 :<input type="text" name="title" value="<%=dto.getTitle()%>"><br />
	내용 :<textarea rows="7" cols="30" name="content"><%=dto.getContent() %></textarea><br />
	<input type="hidden" name="category" value="<%=dto.getCategory() %>">
	<input type="hidden" name="num" value="<%=dto.getNum()%>">
	<input type="submit" value="수정">
</form>
<%@page import="hotel.bean.MemberDAO"%>
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
<%}%>
<%@ include file="../views/menu.jsp" %>
<form action="writePro.jsp" method="post">
	<select name="category">
		<option value="10">공지사항</option>
		<option value="21">예약</option>
		<option value="22">체크인</option>
		<option value="23">검색</option>
		<option value="24">계정</option>
		<option value="25">기타</option>
	</select><br />
	제목 :<input type="text" name="title"><br />
	내용 :<textarea rows="7" cols="30" name="content"></textarea><br />
	<input type="hidden" name="id" value="<%=id%>">
	<input type="submit">
</form>
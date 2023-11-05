<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/BookStay/resources/css/boardupdateform.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<%@ include file="../views/main_bar.jsp" %>
<%request.setCharacterEncoding("UTf-8");%>
<%
if (grade!=99){
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
<div id="list">
<h2>공지사항 수정</h2>
<form id="form1" action="boardUpdatePro.jsp" method="post">
	<table id="tb">
		<tr>
			<td class="title">제목</td>
			<td><input type="text" name="title" value="<%=dto.getTitle()%>"></td>
		</tr>
		<tr>
			<td class="title">내용</td>
			<td><textarea rows="7" cols="30" name="content"><%=dto.getContent() %></textarea></td>
		</tr>			
	<input type="hidden" name="category" value="<%=dto.getCategory() %>">
	<input type="hidden" name="num" value="<%=dto.getNum()%>">
	<input id="btn" type="submit" value="수정">
	</table>
</form>
</div>
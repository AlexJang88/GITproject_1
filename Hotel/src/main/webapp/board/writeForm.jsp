<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <link rel="stylesheet" href="/BookStay/resources/css/writeForm.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<%request.setCharacterEncoding("UTf-8");%>

<%@ include file="../views/main_bar.jsp" %>
<%
if (grade!=99){
	
	 %>
	  <script>
	  	alert("관리자만 접근할수 있습니다.");
	  	window.location="../views/main.jsp";
	  </script>
<%}%>
<div id="list">
<h2>공지사항 등록</h2>
<form id="form1" action="writePro.jsp" method="post">
	<table id="tb">
	<tr>
		<td class="title">게시판 구분</td>
		<td>
			<select id="sel" name="category">
				<option value="10">공지사항</option>
				<option value="21">예약</option>
				<option value="22">체크인</option>
				<option value="23">검색</option>
				<option value="24">계정</option>
				<option value="25">기타</option>
			</select>
		</td>
	</tr>
	<tr>
	 <td class="title">제목</td>
	 <td><input type="text" name="title"></td>
	</tr>
	<tr>
		<td class="title">내용</td>
		<td><textarea rows="7" cols="30" name="content"></textarea></div></td>
	</tr>
	<input type="hidden" name="id" value="<%=id%>">
	</table>
	<input id="btn" type="submit">
</form>
</div>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<%
request.setCharacterEncoding("UTF-8");
boardDAO dao = boardDAO.getInstance();
String id = (String)session.getAttribute("sid");
%>
<div>
자주묻는질문
</div>
<hr />
<% ArrayList<boardDTO> list=null;%>
<div>전체</div>
	<div>
	<%list=dao.getList(20); 
	%>
	</div>
<div>예약</div>
<div>체크인</div>
<div>검색</div>
<div>계정</div>
<div>기타</div>
<script>
var message1 = document.get
</script>



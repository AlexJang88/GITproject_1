<%@page import="hotel.bean.MemberDTO" %>
<%@page import="hotel.bean.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String id = (String) session.getAttribute("sid");
if (id == null) {
%>

<h1>로그인 전 화면</h1>
<button onclick="window.location='loginform.jsp'">로그인</button>
<button onclick="window.location='../member/memberForm.jsp'">회원가입</button>

<%
} else {
%>
<h1>로그인 후 화면 </h1>
<h1>[<%= id %>]님, 로그인 후 화면</h1>
<button onclick="window.location='logout.jsp'">로그아웃</button>
<button onclick="window.location='mypage.jsp'">마이페이지</button>

<%
}
%>

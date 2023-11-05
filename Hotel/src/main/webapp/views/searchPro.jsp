<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>searchPro.jsp</h1>

<%
request.setCharacterEncoding("UTF-8");
String title = request.getParameter("title");
int adult = Integer.parseInt(request.getParameter("adult"));
%>
<%=title %>
<%=adult %>
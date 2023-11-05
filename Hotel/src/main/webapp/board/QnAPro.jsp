<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String category=request.getParameter("category");
response.sendRedirect("QnAList.jsp?category="+category);
%>
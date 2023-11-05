<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@ page import = "hotel.bean.MemberDAO" %>
     <%@ page import = "hotel.bean.MemberDTO" %>
<%

 request.setCharacterEncoding("UTF-8");
%>

<%-- <jsp:useBean id="member" class="hotel.bean.MemberDAO"/> --%>
<jsp:useBean id="member" class="hotel.bean.MemberDTO"/>
<jsp:setProperty name="member" property="*" />

<%
    MemberDAO manager = MemberDAO.getInstance();
    manager.insertMember(member);
%>

<%
    response.sendRedirect("loginform.jsp");
%>
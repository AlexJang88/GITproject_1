<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@ page import = "hotel.bean.MemberDAO" %>
     <%@ page import = "hotel.bean.MemberDTO" %>
     <%@ page import = "hotel.bean.QuitMemberDTO" %>
<%

 request.setCharacterEncoding("UTF-8");
%>

<%-- <jsp:useBean id="member" class="hotel.bean.MemberDAO"/> --%>
<jsp:useBean id="member" class="hotel.bean.QuitMemberDTO"/>
<jsp:setProperty name="member" property="*" />

<%
    MemberDAO manager = MemberDAO.getInstance();
    manager.insertquitMember(member);
%>

<%
    response.sendRedirect("loginform.jsp");
%>
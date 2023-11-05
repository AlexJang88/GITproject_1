<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<h1>로그아웃 JSP</h1>

<%
    // 세션 삭제
    session.invalidate(); // 모든 세션 삭제

    // 쿠키 삭제
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if (c.getName().equals("cid") || c.getName().equals("cpw") || c.getName().equals("cauto")) {
                c.setMaxAge(0);
                response.addCookie(c); // 쿠키 삭제
            }
        }
    }

    response.sendRedirect("../views/main.jsp");
%>
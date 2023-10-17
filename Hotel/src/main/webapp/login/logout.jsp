<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
session.invalidate();
Cookie [] cookies =request.getCookies();
for(Cookie c: cookies){
   if(c.getName().equals("cid")){
      c.setMaxAge(0);
      response.addCookie(c);
   }
}

response.sendRedirect("main.jsp");
%>
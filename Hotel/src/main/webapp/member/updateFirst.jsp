<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hotel.bean.MemberDAO" %>   
<%@ page import="hotel.bean.MemberDTO" %>
<% 
    String sid = (String) session.getAttribute("sid");
    String id = request.getParameter("pw");
%><!DOCTYPE html>
<html>
<head>
    <title>비밀번호 확인</title>
    <!-- JavaScript 코드 -->
    <script>
      
    </script>
</head>
<body>
    <h1>회원정보수정을 하시려면 확인을 위해 비밀번호를 입력해주세요</h1>
    <form action="updateFirstPro.jsp"  method="post">
        <label for="pw">비밀번호: </label>
        <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" required>
        <input type="hidden" name="id" value="<%= sid %>">
        <button type="submit">입력</button>
    </form>
    <button onclick="window.close()">뒤로가기</button>
    <button onclick="window.location='loginform.jsp'">아이디 | 비밀번호 찾기</button>
</body>
</html>
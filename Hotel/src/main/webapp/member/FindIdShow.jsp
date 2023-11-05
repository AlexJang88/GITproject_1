<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>

<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />

<jsp:setProperty property="*" name="dto" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Password Recovery</title>
</head>
<body>
    <%
   	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pnum = request.getParameter("pnum");
        
     
    %>
    <form>
    	<table border="1">
    		<tr>
    			<td>
    				회원님의 아이디는 <%=request.getParameter("id")%> 입니다
    			
    			</td>
     		</tr>
    		<tr>
    			<td>
    		     <input type="button" value="로그인하기" onclick="window.location='loginform.jsp'">
    		     <input type="button" value="비밀번호찾기" onclick="window.location='FindPw.jsp'">
    		     <input type="button" value="메인페이지" onclick="window.location='../views/main.jsp'">
    			</td>
   			</tr>
    		
    	
    	</table>
    </form>
    
</body>
</html>
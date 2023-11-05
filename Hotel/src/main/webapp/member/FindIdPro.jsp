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
    String id=MemberDAO.getInstance().findId(name, email, pnum);
    System.out.println(name+","+email+","+pnum);
    if ( id!= null) {
        // 사용자 정보가 일치하는 경우 아이디 보여주는 페이지로 이동
        
        response.sendRedirect("FindIdShow.jsp?id="+id);
    } else {
        // 사용자 정보가 일치하지 않는 경우 오류 메시지 표시
        %>
        <script>
            alert("입력한 정보가 일치하지 않습니다. 다시 입력해주세요.");
            window.location="/BookStay/member/FindId.jsp";
        </script>
        <%
    }
    %>
</body>
</html>
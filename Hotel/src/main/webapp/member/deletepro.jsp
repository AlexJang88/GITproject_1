<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hotel.bean.MemberDAO" %> 
   
<jsp:useBean id="dao" class="hotel.bean.MemberDAO"/>
<jsp:useBean id="dto" class="hotel.bean.MemberDTO"/>

<%
System.out.println("여기");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

int result = dao.moveDataToQuitMember (id, pw);


if (result == 1) {
    session.invalidate(); // 세션 무효화
    
    response.sendRedirect("loginform.jsp"); // 삭제 성공 시 리다이렉트
} else {
%>
<script>
    alert("회원탈퇴에 실패했습니다. 다시 알아오세요  ");
    history.go(-1); // 삭제 실패 시 이전 페이지로 이동
</script>
<%
}
%>
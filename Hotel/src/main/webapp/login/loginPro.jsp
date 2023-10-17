<%@page import="hotel.bean.MemberDTO"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String cauto=request.getParameter("cauto");
if(cauto==null){
   cauto="0";
}
System.out.println(cauto);
         

MemberDAO dao=MemberDAO.getInstance();
MemberDTO member = new MemberDTO();
member.setId(id);
member.setPw(pw);
member.setCauto(cauto);
boolean result = dao.loginCheck(id,pw);
         //기냐 아니냐 
if (result) {//만약에 1이 parameter받은 cauto값과 equals(똑같다면 - 브라운아이즈소울)  한다면 
    session.setAttribute("sid", "admin");
	if (cauto.equals("1")) {
        // 사용자가 자동 로그인을 선택한 경우 쿠키 설정
        Cookie c1 = new Cookie("cid", id);
              //String  id값을 cookie  c1이라는 객체생성
        Cookie c2 = new Cookie("cpw", pw);
              //String  pw값을 cookie  c2이라는 객체생성
        Cookie c3= new Cookie("cauto",cauto);
                 // String cauto값을 cookie  c3이라는 객체생성
        c1.setMaxAge(60 * 60 * 24 * 2); // 2일간 쿠키 유효
                  //id 값 =c1 에 60seconds * 60 hours *  24 hours *2= 2일  시간을 부여)
        c2.setMaxAge(60 * 60 * 24 * 2);
                //pw 값 =c2 에 60seconds * 60 hours *  24 hours *2= 2일  시간을 부여)
        c3.setMaxAge(60 * 60 * 24 * 2);
                   //cauto 값 =c3 에 60seconds * 60 hours *  24 hours *2= 2일  시간을 부여)
        response.addCookie(c1);
              //c1을 첨가
        response.addCookie(c2);
              //c2도 첨가
        response.addCookie(c3);
              //c3도 첨가
    }
	%>

	<script>
	alert("로그인성공");
	window.location = "main.jsp";
	</script>
	<%
}

else{
%>

<script>
// 로그인 실패 시 메시지 또는 다른 동작을 수행
alert("아이디 비번이 틀려");
window.location = "loginform.jsp";
</script>
<%}%>
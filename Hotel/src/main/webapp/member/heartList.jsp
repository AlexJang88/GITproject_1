<%@page import="hotel.bean.hotelDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("sid");
if(id==null){
	%>
	<script>
		alert("로그인후 이용해주세요");
		window.location="../member/main.jsp";
	</script>
	<%
}
MemberDTO dto=new MemberDTO();
MemberDAO dao=new MemberDAO();
dto=dao.myInfo(id);
dao.allupdateHeart();
%>
<%=id %>님 찜목록
<hr/>
<%if(dto.getHeart()==null){%>

	찜목록이 없습니다.
<%}else{
String [] hearts = dto.getHeart().split(",");
ArrayList<hotelDTO> list = dao.getHearts(hearts);
for(hotelDTO d : list){
	String img=d.getImg();
	if(img!=null){
		String [] arrayimg=img.split(",");
	%><img src="BookStay/upload/<%=arrayimg[0]%>">
	<% }else{%>
		<img src="BookStay/upload/default.jpg">
	<% }%>
	<%=d.getTitle()%>&nbsp;<%=d.getPrice()%>원
	<a href="hotelContent.jsp?ref=<%=d.getRef()%>">예약</a>
	<button type="button" onclick="window.location='../member/heartPro.jsp?num=<%=d.getNum()%>&ref=<%=d.getRef()%>'">찜취소하기</button>
	<hr />
<%}}%>
<button type="button" onclick="window.location='../views/main.jsp'">메인화면</button>
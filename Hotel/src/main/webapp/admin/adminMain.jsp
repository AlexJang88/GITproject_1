<%@page import="hotel.bean.adminDAO"%>
<%@page import="hotel.bean.adminDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
	table, th, td{border : 1px solid #bcbcbc;}
	table{width : 50%}
</style>
<%request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String id = (String) session.getAttribute("sid");
int grade= mdao.checkGrade(id);
if (grade!=99){
	 %>
	  <script>
	  	alert("관리자만 접근할수 있습니다.");
	  	window.location="../views/main.jsp";
	  </script>
<%}else{%>
<%
  adminDAO dao=adminDAO.getInstance();
  adminDTO dto = dao.getPreView();
%>

<button type="button" onclick="window.location='/BookStay/admin/adminMain.jsp'">요약정보</button>
<button type="button" onclick="window.location='/BookStay/admin/adminlist.jsp'">예약목록 </button>
<button type="button" onclick="window.location='/BookStay/board/notice.jsp'">공지사항 </button>
<button type="button" onclick="window.location='/BookStay/board/QnAList.jsp'">자주하는질문 </button>
<button type="button" onclick="window.location='/BookStay/admin/myQuestion.jsp'">1:1문의[<%=dto.getNoanswer() %>] </button>
<button type="button" onclick="window.location='/BookStay/admin/adminHotelListPro.jsp?check=1'">숙박업소 게시글 정보 </button><hr />
<button type="button" onclick="window.location='/BookStay/admin/adminGradeList.jsp'">등급 관리/조회</button>
<table>
	<tr>
		<td>진행중예약</td><td><%=dto.getOngoingReserve() %>건</td>
		<td>오늘예약 </td><td><%=dto.getTodayReserve() %>건</td>
	</tr>
	<tr>
		<td>이번달예약</td><td><%=dto.getThisMonthReserve() %>건</td>
		<td>지난달예약</td><td><%=dto.getLastMonthReserve() %>건</td>
	</tr>
	<tr>
		<td>종료된예약</td><td><%=dto.getLastReserve() %>건</td>
		<td>오늘투숙객</td><td>성인 :<%=dto.getTodayAdult() %>명/아이: <%=dto.getTodaykids() %>명 </td>
	</tr>
	<tr>
		<td>내일투숙객</td><td>성인 :<%=dto.getTomorrowAdult() %>명/아이: <%=dto.getTommorowkids() %>명</td>
		<td>오늘매출</td><td><%=dto.getTodaySales() %>원</td>
	</tr>
	<tr>
		<td>이번달매출</td><td><%=dto.getThisMonthSales() %>원</td>
		<td>지난달매출</td><td><%=dto.getLastMonthSales() %>원</td>
	</tr>
	<tr>
		<td >미답변문의</td><td><%=dto.getNoanswer() %>건</td>
	</tr>
	
</table>

<%} %>


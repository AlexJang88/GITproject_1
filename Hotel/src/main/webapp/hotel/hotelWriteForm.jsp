<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<jsp:useBean id="dto" class="hotel.bean.hotelDTO"/>
<%request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String sid = (String) session.getAttribute("sid");
int id= mdao.checkGrade(sid);
if (id!=99){
	
	 %>
	  <script>
	  	alert("관리자만 접근할수 있습니다.");
	  	window.location="../views/main.jsp";
	  </script>
<%}%>
<%@ include file="../views/menu.jsp" %>
<%hotelDAO dao = new hotelDAO();

	if(request.getParameter("ref")==null){
		
%>
<form action="hotelWritePro.jsp" method="post" enctype="multipart/form-data">
	제목 :  <input type="text" name="title"><br>
	내용 :<textarea rows="10" cols="20" name="content"></textarea><br>
	숙박업소 타입:<select name="type">
			  	<option value="호텔">호텔 </option>
			  	<option value="리조트">리조트 </option>
			  	<option value="모텔">모텔 </option>
			  	<option value="기타숙소">기타숙소 </option>
			  </select><br>
	숙박업소 주소 : <input type="text" name="address"><br>
	연락처 : <input type="text" name="contact"><br>
	팩스번호 : <input type="text" name="contactfax"><br>
	
	사진 :<br> 
		<input type="file" name="upload1"><br>
		<input type="file" name="upload2"><br>
		<input type="file" name="upload3"><br>
	서비스 :<br>
	<table>
	<tr>
		<td>레스토랑<input type="checkbox" name="services" value="레스토랑"></td>
		<td>스파<input type="checkbox" name="services" value="스파"></td>
		<td>바다전망<input type="checkbox" name="services" value="바다전망"></td>
		<td>해변접근<input type="checkbox" name="services" value="해변접근"></td>
		<td>비지니스시설<input type="checkbox" name="services" value="비지니스시설"></td>
	</tr>
	<tr>
		<td>엘리베이터<input type="checkbox" name="services" value="엘리베이터"></td>
		<td>금연 숙박 시설<input type="checkbox" name="services" value="금연 숙박 시설"></td>
		<td>테라스<input type="checkbox" name="services" value="테라스"></td>
		<td>24시간 운영 프런트 데스크<input type="checkbox" name="services" value="24시간 운영 프런트 데스크"></td>
		<td>무료 셀프 주차<input type="checkbox" name="services" value="무료 셀프 주차"></td>
	</tr>
	<tr>
		<td>프런트 데스크의 안전 금고<input type="checkbox" name="services" value="프런트 데스크의 안전 금고"></td>
		<td>짐 보관 서비스<input type="checkbox" name="services" value="짐 보관 서비스"></td>
		<td>웨딩 서비스<input type="checkbox" name="services" value="웨딩 서비스"></td>
		<td>시설 내 스파 서비스<input type="checkbox" name="services" value="시설 내 스파 서비스"></td>
		<td>포터/벨보이<input type="checkbox" name="services" value="포터/벨보이"></td>
	</tr>
	<tr>
		<td>무료 WiFi<input type="checkbox" name="services" value="무료 WiFi"></td>
		<td>다국어 구사 가능 직원<input type="checkbox" name="services" value="다국어 구사 가능 직원"></td>
		<td>드라이클리닝/세탁 서비스<input type="checkbox" name="services" value="드라이클리닝/세탁 서비스"></td>
		<td>세탁 시설<input type="checkbox" name="services" value="세탁 시설"></td>
		<td>아침 식사 가능(요금 별도)<input type="checkbox" name="services" value="아침 식사 가능(요금 별도)"></td>
	</tr>
	<tr>
		<td>ATM/은행업무<input type="checkbox" name="services" value="ATM/은행업무"></td>
		<td>컴퓨터 스테이션<input type="checkbox" name="services" value="컴퓨터 스테이션"></td>
		<td>롤인 샤워(일부 객실)<input type="checkbox" name="services" value="롤인 샤워(일부 객실)"></td>
		<td>간편 체크아웃<input type="checkbox" name="services" value="간편 체크아웃"></td>
		<td>간편 체크인<input type="checkbox" name="services" value="간편 체크인"></td>
	</tr>
	<tr>
		<td>24시간 운영 피트니스 시설<input type="checkbox" name="services" value="24시간 운영 피트니스 시설"></td>
		<td>피트니스 시설<input type="checkbox" name="services" value="피트니스 시설"></td>
		<td>회의실<input type="checkbox" name="services" value="회의실"></td>
		<td>무료 주차 대행<input type="checkbox" name="services" value="무료 주차 대행"></td>
		<td>시설 내 쇼핑몰<input type="checkbox" name="services" value="시설 내 쇼핑몰"></td>
	</tr>
	<tr>
		<td>도서관<input type="checkbox" name="services" value="도서관"></td>
		<td>주차(공간 제한)<input type="checkbox" name="services" value="주차(공간 제한)"></td>
		<td>루프탑 테라스<input type="checkbox" name="services" value="루프탑 테라스"></td>
	</tr>
	</table>
	<input type="hidden" name="re_step" value="0">
	<input type="hidden" name="num" value="<%=request.getParameter("num")%>">
	<br>
	<input type="submit" value="등록">
</form>

<%}else{ 
int ref = Integer.parseInt(request.getParameter("ref"));
dto=dao.getContentMain(ref);%>
<form action="hotelWritePro.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="type" value="<%=dto.getType()%>">
	<input type="hidden" name="address" value="<%=dto.getAddress()%>">
	<input type="hidden" name="contact" value="<%=dto.getContact()%>">
	<input type="hidden" name="contactfax" value="<%=dto.getContactfax()%>">
	<input type="hidden" name="re_step" value="1">
	<input type="hidden" name="service" value="<%=dto.getService()%>">
	<input type="hidden" name="num" value="<%=request.getParameter("num")%>">
	<input type="hidden" name="ref" value="<%=ref%>">
	<input type="hidden" name="block" value="<%=request.getParameter("block")%>">
	제목 :  <input type="text" name="title"><br>
	내용 :<textarea rows="10" cols="20" name="content"></textarea><br>
	방종류 : <select name="roomtype">
				<option value="스탠다드">스탠다드</option>
				<option value="디럭스">디럭스</option>
				<option value="스위트">스위트</option>
			</select><br>
	어른가격 : <input type="number" name="aprice">
	아이가격 : <input type="number" name="kprice">
	사진 : <input type="file" name="upload"><br>
	<button type="submit">등록</button>
	</form>

<%} %>


































    
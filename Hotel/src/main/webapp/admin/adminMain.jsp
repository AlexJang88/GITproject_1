<%@page import="hotel.bean.adminDAO"%>
<%@page import="hotel.bean.adminDTO"%>
<%@ page import="hotel.bean.hotelDTO" %>
<%@ page import="hotel.bean.hotelDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/BookStay/resources/css/adminMain.css"/>
<%request.setCharacterEncoding("UTF-8");
hotelDAO hdao = new hotelDAO();
ArrayList<hotelDTO> cal = hdao.calendar(); 
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
<div id="header">
	<div id="login">
		<%if(grade==11) { // 세션이 없다면 수행
    String cid = null, cpw = null, cauto = null;
    Cookie[] cookies = request.getCookies();
  
    	if (cookies != null) {
       		 for (Cookie c : cookies) {
		            if (c.getName().equals("cid")) { cid = c.getValue(); }
		            if (c.getName().equals("cpw")) { cpw = c.getValue(); }
		            if (c.getName().equals("cauto")) { cauto = c.getValue(); }
   				}  
 		   	}
    	if (cid != null && cpw != null && cauto != null) {
    		response.sendRedirect("/BookStay/member/loginPro.jsp");	
    	}
    if (cid == null || cpw == null || cauto == null) { %>
		<div><a href="/BookStay/member/loginform.jsp">로그인</a></div>
		<div><a href="/BookStay/member/memberForm.jsp">회원가입</a></div>
		<%}				
		}if(grade==0 || grade==99){ %>
		<div><a href="/BookStay/member/logout.jsp">로그아웃</a></div>
		<div><a href="/BookStay/member/memberinfo.jsp">MyPage</a></div>
		<%}%>
		<div>고객센터</div>
		<%if(grade==99){ %>
		<div><a href="/BookStay/admin/adminMain.jsp">관리자페이지</a></div>
		<%} %>	
	</div>
	<div id="logo">
		<a href="../views/main.jsp">
			BookStay
		</a>
	</div>
	</div>
	<hr id="hr"/>
	<div id="list">
	<ul id="ul1">
	  <li><button id="bn1" type="button" onclick="window.location='/BookStay/admin/adminMain.jsp'">요약정보</button></li>
	  <li><button id="bn2" type="button" onclick="window.location='/BookStay/admin/adminlist.jsp'">예약목록 </button></li>
	  <li><button id="bn3" type="button" onclick="window.location='/BookStay/board/notice.jsp'">공지사항 </button></li>
	  <li><button id="bn4" type="button" onclick="window.location='/BookStay/board/QnAList.jsp'">자주하는질문 </button></li>
	  <li><button id="bn5" type="button" onclick="window.location='/BookStay/board/myQuestion.jsp'">1:1문의[<%=dto.getNoanswer() %>] </button></li>
	  <li><button id="bn6" type="button" onclick="window.location='/BookStay/admin/adminHotelListPro.jsp?check=1'">숙박업소 게시글 정보 </button></li>
	  <li><button id="bn7" type="button" onclick="window.location='/BookStay/admin/adminGradeList.jsp'">등급 관리/조회</button></li>
	</ul>
	<div id="f1">
	<div id="tbcal">
	<ul class="nav nav-tabs">
	  <li class="nav-item">
	    <a class="nav-link active" aria-current="page">요약정보</a>
	  </li>
	</ul>
<table id="tb" border="1">
	<tr>
		<td class="t1">진행중예약</td><td><%=dto.getOngoingReserve() %>건</td>
		<td class="t1">오늘예약 </td><td><%=dto.getTodayReserve() %>건</td>
	</tr>
	<tr>
		<td class="t1">이번달예약</td><td><%=dto.getThisMonthReserve() %>건</td>
		<td class="t1">지난달예약</td><td><%=dto.getLastMonthReserve() %>건</td>
	</tr>
	<tr>
		<td class="t1">종료된예약</td><td><%=dto.getLastReserve() %>건</td>
		<td class="t1">오늘투숙객</td><td>성인 :<%=dto.getTodayAdult() %>명/아이: <%=dto.getTodaykids() %>명 </td>
	</tr>
	<tr>
		<td class="t1">내일투숙객</td><td>성인 :<%=dto.getTomorrowAdult() %>명/아이: <%=dto.getTommorowkids() %>명</td>
		<td class="t1">오늘매출</td><td><%=dto.getTodaySales() %>원</td>
	</tr>
	<tr>
		<td class="t1">이번달매출</td><td><%=dto.getThisMonthSales() %>원</td>
		<td class="t1">지난달매출</td><td><%=dto.getLastMonthSales() %>원</td>
	</tr>
	<tr>
		<td class="t1">미답변문의</td><td><%=dto.getNoanswer() %>건</td>
	</tr>
	
</table>

<%} %>
<div id="calendarBox" style="margin-bottom: 50px; position:relative;">
  <div id="btn1"><button id="btn" style="display: none;">Month</button></div>
  <div id="calendar"></div>
</div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
</div>
</div>
<script type="text/javascript">
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
      locale: 'ko',
      headerToolbar: {
        start: 'prev',
        center: 'title',
        end: 'next'
      },
      dayMaxEvents: true,
      selectable: true,
      droppable: true,
      editable: false,
      events: [
        <% for (hotelDTO dto : cal) { %>
        {
          title: '<%= dto.getTitle() %>',
          start: '<%= dto.getContent() %>',
          end: '<%= dto.getContact() %>',
          extendedProps: {
            reservationId: '<%= dto.getContact() %>',
            kidmax: '<%= dto.getKidmax() %>',
            content: '<%= dto.getContent() %>',
            service: '<%= dto.getService() %>',
            adultmax: '<%= dto.getAdultmax() %>'
          },
        },
        <% } %>
      ],
      eventClick: function(info) {
        var eventTitle = info.event.title;
        var additionalInfo = 'Adult Max: ' + info.event.extendedProps.adultmax + '<br>' +
          'Kid Max: ' + info.event.extendedProps.kidmax + '<br>' +
          'Service: ' + info.event.extendedProps.service + '<br>' +
          'Content: ' + info.event.extendedProps.content;

        $('#myModal').modal('show');

        $('.modal-title').text(eventTitle);
        $('.modal-body').html(additionalInfo);
      },
      dateClick: function(info) {
        calendar.changeView('dayGridDay', info.dateStr);
        document.getElementById('btn').style.display = 'block';
      },
    });

    calendar.render();
    document.getElementById('btn').addEventListener('click', function() {
      calendar.changeView('dayGridMonth');
      document.getElementById('btn').style.display = 'none';
    });
  });
</script>

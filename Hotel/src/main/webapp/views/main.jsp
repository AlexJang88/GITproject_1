<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hotel.bean.hotelDTO" %>
<%@ page import="hotel.bean.hotelDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.ArrayList" %>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel_Main</title>
<link rel="stylesheet" href="/BookStay/resources/css/main.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<%
MemberDAO mdao = MemberDAO.getInstance();
mdao.checkHuman();
String id = (String) session.getAttribute("sid");
int grade= mdao.checkGrade(id);
%>
<script>
	function loc(v1){
		var v2 = document.getElementById('start').value;
		var v3 = document.getElementById('end').value;
		var v4 = document.getElementById('adult1').value;
		var v5 = document.getElementById('kids1').value;
		var v6 = document.getElementById('rortlf').value;
		document.location.href = 'hlist.jsp?title='+v1+'&checkin='+v2+'&checkout='+v3+'&adult='+v4+'&kids='+v5+'&room='+v6+'&select=2&check=1,2,3,4';
	}
</script>
</head>
<body>
<%
	hotelDAO dao = new hotelDAO();
	Date currentDate = new Date();
	
	// SimpleDateFormat을 사용하여 원하는 형식으로 변환
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String start = dateFormat.format(currentDate);
	
	// 내일 날짜 구하기
	Calendar calendar = Calendar.getInstance();
	calendar.setTime(currentDate);
	calendar.add(Calendar.DATE, 1); // 현재 날짜에 1일을 더함
	
	Date tomorrowDate = calendar.getTime();
	
	// SimpleDateFormat을 사용하여 내일 날짜를 원하는 형식으로 변환
	String end = dateFormat.format(tomorrowDate);
	ArrayList<hotelDTO> block = dao.HotelBlock(start, end); 
	StringBuilder block1 = new StringBuilder();
	int size = block.size(); // block의 크기를 미리 계산
	
	for (int i = 0; i < size; i++) {
	    hotelDTO dto = block.get(i);
	    block1.append(String.valueOf(dto.getRef()));
	    if (i < size - 1) {
	        block1.append(",");
	    }
	}
	String block2 = block1.toString();
%>
<div id="bg">
<div id="bg_img">
	<div class="swiper">
	  <!-- Additional required wrapper -->
	  <div class="swiper-wrapper">
	    <!-- Slides -->
	    <div class="swiper-slide"><img src="/BookStay/resources/img/bg2.jpg"/></div>
	    <div class="swiper-slide"><img src="/BookStay/resources/img/bg3.jpg"/></div>
	    <div class="swiper-slide"><img src="/BookStay/resources/img/bg4.jpg"/></div>
	  </div>
	  <!-- If we need pagination -->
	  <div class="swiper-pagination"></div>
	
	  <!-- If we need navigation buttons -->
	  <div class="swiper-button-prev"></div>
	  <div class="swiper-button-next"></div>
	
	  <!-- If we need scrollbar -->
	  <div class="swiper-scrollbar"></div>
	</div>
</div>
<div id="logo">
	<a href="main.jsp">
		BookStay
	</a>
</div>
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
<div id="main1">
	<form method="post" id="searchForm">
		<input type="text" id="text" name="title"/>
		<input type="text" id="date" name="datetimes"/>
		<input type="hidden" id="start" name="checkin"/>
		<input type="hidden" id="end" name="checkout"/>
		<input type="button" value="객실 1개, 인원 2명" id="popBtn"/>
		<div class="popup" id="popup">
		<div id="pop0">
			<h5>객실1</h5>
			<div>성인 <input type="number" id="adult1" name="adult" value="2" max="4" min="1"/></div>
			<div>어린이 (만 17세 미만) <input type="number" id="kids1" name="kids" value="0" max="4" min="0"/></div>
		</div>
		<div id="pop">
		</div>
			<input type="button" id="cadd" value="객실 추가"/>
			<input type="hidden" id="rortlf" name="rortlf" value="1"/>
			<input type="button" id="cad" value="적용"/>
		</div>
		<button id="sub" type="submit" class="btn btn-success">검색하기</button>
		<input type="hidden" name="category" value="0"/>
	</form>
	<div id="p"></div>
</div>
<div id="h_content">
	<h2>도시별 인기 호텔</h2>
	<div id="hot_hotel">
		<button class="hobtn" id="hobtn1" data-target="list1">서울</button>
		<button class="hobtn" data-target="list2">부산</button>
		<button class="hobtn" data-target="list3">제주도</button>
		<button class="hobtn" data-target="list4">인천</button>
		<button class="hobtn" data-target="list5">여수</button>
		<button class="hobtn" data-target="list6">수원</button>
		<button class="hobtn" data-target="list7">대전</button>
		<button class="hobtn" data-target="list8">광주</button>
		<button class="hobtn" data-target="list9">대구</button>
		<button class="hobtn" data-target="list10">속초</button>
	</div>
	<div id="hh">
	<%
	request.setCharacterEncoding("UTF-8");
	ArrayList<hotelDTO> list;
	String[] types = {"서울", "부산", "제주도", "인천", "여수", "수원", "대전", "광주", "대구", "속초"};

	for(int i=0; i <types.length; i++){
		list = dao.hothotel(types[i]);
		String loc = types[i];
	%>
	<div id="list<%=i+1%>" class="list" style="<%= ( i == 0) ? "display:block;" : "display:none;" %>">
	<div class="grid">
	 <%
	 for(hotelDTO dto : list){
		 String[] img = dto.getImg().split(",");
	 %> 
	 <a id="hoth" href="/BookStay/hotel/hotelContent.jsp?title=<%=dto.getTitle()%>&ref=<%=dto.getRef()%>&block=<%=block2%>
	&checkin=<%=start%>&checkout=<%=end%>&adult=2&kids=0&room=1&select=1&check=1,2,3,4">
	 <div class="box">
		<img src="/BookStay/upload/<%=img[0]%>" width="300" height="100"/>
		<div class="h_box">
		<%= dto.getTitle() %>
		<%= dto.getPrice() %>
		</div>	
	</div>
	</a>
	<% }%>
	</div>
		<button type="button" id="hBtn" onclick="loc('<%=loc%>');">
		<%=loc%> 호텔 전체 보기</button>	 
	</div>
<%}%>
	</div>
<button onclick="topFunction()" id="myBtn"><img src="/BookStay/resources/img/arrow-top.png"></button>
</div>
<div class="footer">
<ul id="footer2">
        <li>
          <span>COMPANY</span>
          BookStay
        </li>
        <li>
          <span> OWNER</span>
          SONG.J.H
        </li>
        <li>
          <span>E-mail</span>
          aa4281@naver.com
        </li>
        <li>
          <span>CALL</span>
           Seongsu: 070.8118.1751 | yongsan: 02.2012.1751
        </li>
      </ul>
      <ul id="footer3">
        <li>
          <span>BUSINESS LICENSE</span>
          Seongsu: 142-85-26752 | yongsan: 478-85-01330
        </li>
      </ul>
      <ul id="footer4">
        <li>
          <span>ADDRESS</span>
          Seongsu: 28, Seongsuil-ro 8-gil, Seongdong-gu, Seoul, Republic of
          Korea | Yongsan: 7F, 55, Hangang-daero 23-gil, Yongsan-gu, Seoul,
          Republic of Korea
        </li>
      </ul>
      <p>
        &copy; BookStay All right reserve / design by MOSEN / Hosting by
        CAFE24 / Agreement / 개인정보취급방침 / Guide
      </p>
	<img src="/BookStay/resources/img/face.png"/>
	<img src="/BookStay/resources/img/instar.png"/>
</div>
</div>
</body>
<script src="/BookStay/resources/js/scroll.js"></script>
<script src="/BookStay/resources/js/aa.js"></script>
<script src="/BookStay/resources/js/sw.js"></script>
<script src="/BookStay/resources/js/today.js"></script>
<script src="/BookStay/resources/js/count.js"></script>
<script src="/BookStay/resources/js/btn.js"></script>
<!--  
<script>
	var form = document.getElementById('searchForm');
	var titleInput = form.querySelector('input[name="title"]');
	var checkinInput = form.querySelector('input[name="checkin"]');
	var checkoutInput = form.querySelector('input[name="checkout"]');
	var adultInput = form.querySelector('input[name="adult"]');
	var kidsInput = form.querySelector('input[name="kids"]');
	var startInput = form.querySelector('input[name="checkin"]'); 
	var endInput = form.querySelector('input[name="checkout"]');
	var rortlf = form.querySelector('input[name="rortlf"]');
	
	document.getElementById('sub').addEventListener('click', function () {
	  var titleValue = titleInput.value;
	  var checkinValue = checkinInput.value;
	  var checkoutValue = checkoutInput.value;
	  var adultValue = adultInput.value;
	  var kidsValue = kidsInput.value;
	  var startValue = startInput.value;
	  var endValue = endInput.value;
	  var rorValue = rortlf.value;
      var hselect = 0;
      
	  form.action = 'hlist.jsp?title=' + titleValue + '&checkin=' + startValue + '&checkout=' + endValue
	  + '&adult=' + adultValue + '&kids=' + kidsValue + '&room=' + rorValue + '&select=1&check=1,2,3,4'; 
    });
</script>-->
<script src="/BookStay/resources/js/date.js"></script>
<script src="/BookStay/resources/js/popup.js"></script>
</html>
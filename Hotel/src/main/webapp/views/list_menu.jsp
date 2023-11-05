<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="hotel.bean.MemberDAO"%>    
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<%
	request.setCharacterEncoding("UTF-8");
	MemberDAO mdao = MemberDAO.getInstance();
	String id = (String) session.getAttribute("sid");
	int grade= mdao.checkGrade(id);
	String title = request.getParameter("title");
	String checkin = request.getParameter("checkin");
	String checkout = request.getParameter("checkout");
	int rortlf = Integer.parseInt(request.getParameter("room"));
	int adult = Integer.parseInt(request.getParameter("adult"));
	int kids = Integer.parseInt(request.getParameter("kids"));
	int select = Integer.parseInt(request.getParameter("select"));
	int roomValues = 0;
	int kidsValues = 0;
	int[] roomValue = new int[rortlf];
	int[] kidsValue = new int[rortlf];
	for (int i = 0; i < rortlf; i++) {
		String adultParam = request.getParameter("a" + (i + 1));
	    String kidsParam = request.getParameter("k" + (i + 1));
	    
	    int adultValues = 2; 
	    int kidsValuee = 0; 

	    if (adultParam != null) {
	        adultValues = Integer.parseInt(adultParam);
	    }

	    if (kidsParam != null) {
	        kidsValuee = Integer.parseInt(kidsParam);
	    }

	    roomValues += adultValues;
	    kidsValues += kidsValuee;
	    
	    roomValue[i] = adultValues;
	    kidsValue[i] = kidsValuee; 
	    
	    %>
	    <input type="hidden" id="r<%=i+1%>" value="<%= roomValue[i]%>"/>
	    <input type="hidden" id="k<%=i+1%>" value="<%= kidsValue[i]%>"/>
	<%}
	String pcount = "객실 " + rortlf + "개, 인원 " + (roomValues + kidsValues) + "명";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/BookStay/resources/css/list_menu.css"/>
</head>
<body>
	<body>
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
		<a href="main.jsp">
			BookStay
		</a>
	</div>
	</div>
	<div id="main">
	<div id="search">
	<input type="hidden" id = "tcnt" value="<%= rortlf%>"/>
	<form method="post" id="searchForm">
		<input type="text" name="title" value="<%=title%>" id="title"/>
		<input type="text" name="datetimes" id="date" value="<%=checkin %> - <%=checkout %>" />
		<input type="hidden" id="start" name="checkin" value="<%=checkin %>"/>
		<input type="hidden" id="end" name="checkout" value="<%=checkout %>"/>
		<input type="button" value="<%=pcount %>" id="popBtn"/>
		<div class="popup" id="popup">
		<div id="pop">
			<h5>객실1</h5>
			<div>성인 <input type="number" id="adult1" name="adult" value="<%=adult%>" max="4" min="1"/></div>
			<div>어린이 (만 17세 미만) <input type="number" id="kids1" name="kids" value="<%=kids%>" max="4" min="0"/></div>	
			<%for (int i = 1; i < rortlf; i++) {
			    int adultValue = Integer.parseInt(request.getParameter("a" + (i + 1)));
			    int kidsValue1 = Integer.parseInt(request.getParameter("k" + (i + 1)));
		
			    roomValue[i] = adultValue;
			    kidsValue[i] = kidsValue1;  
			    
	  %>
	  <div id="pop<%=i+1 %>">
	  <hr>
	  <h5>객실<%=i+1%></h5>
    <div>성인 <input type="number" id="adult<%=i+1%>" name="adult<%=i+1%>" value="<%=roomValue[i] %>" max="4" min="1"/></div><br>
    <div>어린이 (만 17세 미만) <input type="number" id="kids<%=i+1%>" name="kids<%=i+1%>" value="<%=kidsValue[i] %>" max="4" min="0"/></div>
    <button type="button" class="btn btn-danger cRemove">객실 삭제</button>
    </div>
    <hr>
	<%}%>
    </div>
			<input type="button" id="cadd" value="객실 추가"/>
			<input type="hidden" id="rortlf" name="rortlf" value="<%=rortlf%>"/>
			<button type="button" id="cad" onclick="eValue">적용</button>
		</div>
		<button id="subb" type="submit"><img src="/BookStay/resources/img/search.png"/></button>
		<input type="hidden" name="category" id="hvalue" value="0"/>
	</form>
	<div id="p"></div>
	</div>
</div>
</body>
<script>
document.querySelectorAll('.num1').forEach(function(numElement) {
	  var numInput = numElement.querySelector('input');
	  var deButton = numElement.querySelector('.de');
	  var inButton = numElement.querySelector('.in');

	  deButton.addEventListener('click', () => {
	    var cValue = parseInt(numInput.value, 10);
	    if (!isNaN(cValue) && cValue > 0) {
	      numInput.value = cValue - 1;
	    }
	  });

	  inButton.addEventListener('click', () => {
	    var cValue = parseInt(numInput.value, 10);
	    if (!isNaN(cValue) && cValue < parseInt(numInput.getAttribute('max'), 10)) {
	      numInput.value = cValue + 1;
	    }
	  });
	});
</script>
<script src="/BookStay/resources/js/ee.js"></script>
<script src="/BookStay/resources/js/date.js"></script>
<script src="/BookStay/resources/js/popup.js"></script>
<script src="/BookStay/resources/js/count.js"></script>
<script src="/BookStay/resources/js/menubar.js"></script>
</html>
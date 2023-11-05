<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>
<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


<%
    request.setCharacterEncoding("UTF-8");

    String userId = (String) session.getAttribute("sid"); 

    if (userId != null) {
        MemberDTO user = dao.myInfo(userId); 
        
        if (user != null) {
        	
        	String checkin = request.getParameter("checkin");
        	String checkout = request.getParameter("checkout");
                 
%>

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">예약 페이지</h1>
        </div>
    </div>
    <div class="container">
        <form action="processOrder.jsp" class="form-horizontal" method="post">
            
          
                    <input name="id" type="hidden" value="<%=userId%>"/>
                    <input name="ref" type="hidden" value="<%=request.getParameter("ref")%>">
                    <input name="num" type="hidden" value="<%=request.getParameter("num")%>">
            
          
            <div class="form-group row">
                <label class="col-sm-2">예약일</label>
                <div class="col-sm-3">
                  <input type="text" name="datetimes" value="<%=checkin %> - <%=checkout %>" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">성인 예약 인원</label>
                <div class="col-sm-3">
                    <input name="adult" type="number" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">아이 예약 인원</label>
                <div class="col-sm-3">
                    <input name="kid" type="number" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">결제 방식</label>
                <div class="col-sm-3">
                    <select name="paytype">
                    	<option value="card" selected>카드</option>
                    	<option value="cash">현금(계좌이체)</option>
                    </select>
                </div>
            </div>
                    <input type="submit" class="btn btn-primary" value="다음" />
                    <a href="../memeber/main.jsp" class="btn btn-secondary" role="button"> 취소 </a>
                </div>
            </div>
        </form>
    </div>
<% 	
            
    } else {
%>
<script>
    alert("사용자 정보를 가져오는 중 오류가 발생했습니다.");
    window.location = "/BookStay/memeber/loginform.jsp";
</script>
<%
    }
    } else {
%>
<script>
    alert("세션이 만료되었거나 로그인하지 않았습니다. 다시 로그인해주세요.");
    window.location = "/BookStay/memeber/loginform.jsp";
</script>
<%
    }
%>
<script src="/BookStay/resources/js/date.js"></script>
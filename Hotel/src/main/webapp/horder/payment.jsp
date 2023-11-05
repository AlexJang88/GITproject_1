<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>
<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />

<%
    request.setCharacterEncoding("UTF-8");

    String userId = (String) session.getAttribute("sid"); 

    if (userId != null) {
        MemberDTO user = dao.myInfo(userId); 
        
        if (user != null) {
                 
%>

<html>
<head>
    <title>예약</title>
</head>
<body>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">예약 페이지</h1>
        </div>
    </div>
    <div class="container">
        <form action="processOrder.jsp" class="form-horizontal" method="post">
            
          
                    <input name="id" type="hidden" value=<%=userId%>/>
                    <input name="ref" type="hidden" value=<%=request.getParameter("ref") %>>
            
            <div class="form-group row">
                <label class="col-sm-2">체크인</label>
                <div class="col-sm-3">
                    <input name="checkin" type="date" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">체크아웃</label>
                <div class="col-sm-3">
                    <input name="checkout" type="date" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">성인 예약 인원</label>
                <div class="col-sm-3">
                    <input name="adult" type="text" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">아이 예약 인원</label>
                <div class="col-sm-3">
                    <input name="kid" type="text" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">결제</label>
                <div class="col-sm-3">
                    <input name="paytype" type="text" class="form-control" />(yyyy/mm/dd)
                </div>
            </div>
            <div class="form-group row" style="display: none;">
                <label class="col-sm-2">상태</label>
                <div class="col-sm-3">
                    <input name="state" type="text" class="form-control" value="1" />
                </div>
            </div>
                    <input type="submit" class="btn btn-primary" value="등록" />
                    <a href="../memeber/main.jsp" class="btn btn-secondary" role="button"> 취소 </a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
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
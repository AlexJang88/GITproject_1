<%@page import="hotel.bean.hotelDAO"%>
<%@page import="hotel.bean.hotelDTO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<%@ page import="hotel.bean.HOrderDTO" %>
<%@ page import="hotel.bean.HOrderDAO" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>
<%@ page import="java.util.List" %> 

<%
	request.setCharacterEncoding("UTF-8");
    // 세션에서 사용자 ID 가져오기
    MemberDAO dao = MemberDAO.getInstance();
    String id = (String) session.getAttribute("sid");
    int grade= dao.checkGrade(id);
    // 사용자 ID가 관리자 ID ("admin")와 일치하는지 확인
    if (grade!=99) {
%>
    <script>
        alert("관리자페이지입니다");
        window.location="/BookStay/views/main.jsp";
    </script>
<%
    }
%>
<%

SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	
%>
<!DOCTYPE html>
<html>
<head>
    <title>관리자 예약 확인</title>
</head>
<body>

    <h1>관리자 예약 내역 확인</h1>
    <table>
        <tr>
            <th>예약 번호</th>
            <th>고객명</th>
            <th>투숙일</th>
            <th>접수일</th>
            <th>객실명</th>
            <th>결제수단</th>
            <th>총요금</th>
            <th>입금액</th>
            <th>잔액</th>
            <th>예약상태</th>
            <th>입금액입력</th>
            <th>예약취소</th>
            
        </tr>

        <%
            // Java 코드를 사용하여 예약 내역을 가져와서 표시
            List<HOrderDTO> reservationList = new HOrderDAO().getOrdersAdmin();
            MemberDAO memberDAO = MemberDAO.getInstance(); // MemberDAO 인스턴스 생성
			hotelDAO hdao = new hotelDAO();
            for (HOrderDTO reservation : reservationList) {
            	String reg = new SimpleDateFormat("yyyy-MM-dd").format(reservation.getReg());
            	String checkin = reservation.getCheckin().substring(0,11);
            	String checkout = reservation.getCheckout().substring(0,11);
            	String status="";
            	System.out.println(reservation.getState());
            	if(reservation.getState()==1){
            		status="입금완료";
            	}else if(reservation.getState()==0){
            		status="입금중";
            	}else if(reservation.getState()==2){
            		status="예약취소";
            	}
            	int totalPay = reservation.getPrice();
            	int money = totalPay-reservation.getPaid();
            	int renum = reservation.getRenum();
        %>
        <tr>
            <td><%= reservation.getRenum() %></td>
            <td><%= reservation.getName() %></td>
            <td><%= checkin %></td>
            <td><%= reg %></td>
            <td><%= reservation.getRoomtype()%></td>
            <td><%= reservation.getPaytype() %></td>
            <td><%= totalPay %>원</td>
            <td><%= reservation.getPaid()%>원</td>
            <td><%= money%>원</td>
            <td><%= status %></td>
            <td>
            <%if(money>=0 && status.equals("입금중")) {%>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop<%=reservation.getRenum()%>">입금액 입력</button></td><!-- 입금액입력  -->
            <div class="modal fade" id="staticBackdrop<%=reservation.getRenum()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="staticBackdropLabel">입금액</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <form action="adminStatusUpdate.jsp" method="post">
				      <div class="modal-body">
				    		입금액 : <input type="number" name="paid"><br>
				    		<input type="hidden" name="renum" value="<%=renum%>">
				    		<input type="hidden" name="confirm" value="true">
				    		<input type="hidden" name="totalPay" value="<%=totalPay%>">
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				        <button type="submit" class="btn btn-primary">적용</button>
				      </div>
				      </form>
				    </div>
				  </div>
				</div>
				<%}else if(status.equals("예약취소")){%>
				<button type="button" class="btn btn-primary" disabled >없음</button>	
					
				<%}else{%>
				<button type="button" class="btn btn-primary" onclick="window.location='adminStatusUpdate.jsp?confirm=true&renum=<%=reservation.getRenum()%>'">예약확정</button>
				<%} %>
				
				
            <td><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdropcancel<%=reservation.getRenum()%>">예약취소</button></td><!-- 입금액입력  -->
            <div class="modal fade" id="staticBackdropcancel<%=reservation.getRenum()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="staticBackdropLabel">예약취소</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <form action="adminStatusUpdate.jsp" method="post">
				      <div class="modal-body">
				    		취소사유 : <textarea rows="5" cols="35" name="etc"></textarea><br>
				    		<input type="hidden" name="renum" value="<%=reservation.getRenum()%>">
				    		<input type="hidden" name="cancel" value="true">
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				        <button type="submit" class="btn btn-primary">작성</button>
				      </div>
				      </form>
				    </div>
				  </div>
				</div></td><!-- 예약취소 -->
        </tr>
       
            <%}%>
    </table>
    <input type="button" value="뒤로가기" onclick="location.href='../memeber/memberinfo.jsp'">
</body>
</html>
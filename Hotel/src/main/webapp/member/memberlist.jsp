<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.HOrderDTO" %>
<%@ page import="hotel.bean.HOrderDAO" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="dao" class="hotel.bean.HOrderDAO" />
<jsp:useBean id="dto" class="hotel.bean.HOrderDTO" />

<%
    request.setCharacterEncoding("UTF-8");
    String orderId = (String) session.getAttribute("sid"); 
    if (orderId != null) {
        List<HOrderDTO> orders = dao.getOrders(orderId); 
        if (orders != null && !orders.isEmpty()) {
        	 %>
        	<h2>예약 내역</h2>
            <table border="1">
            	<tr border="1">
            		<td>예약번호</td>
            		<td>체크인</td>
            		<td>체크아웃</td>
            		<td>예약인원</td>
            		<td>결제수단</td>
            		<td>진행상태</td>
            		<td>비고</td>
            	</tr>
            <%
            for(HOrderDTO order : orders){
            	String etc="";
            	if(order.getEtc()!=null){
            		etc=order.getEtc();
            	}
            	
            	String status="";
            	if(order.getState()==0){
            		status="입금중";
            	}else if(order.getState()==1){
            		status="입금완료";
            	}else if(order.getState()==2){
            		status="예약취소";
            	}
%>
<% String reg = new SimpleDateFormat("yyyy-MM-dd").format(order.getReg());
            	String checkin = order.getCheckin().substring(0,11);
            	String checkout = order.getCheckout().substring(0,11);%>
	<tr border="1">
        <td><%= order.getRenum() %></td>
        <td><%= checkin %></td>
        <td><%= checkout %></td>
        <td>어른 : <%= order.getKid() %> 아이 : <%= order.getAdult() %></td>
        <td><%= order.getPaytype() %></td>
        <td><%=status%></td>
        <td><%=etc %></td>
    </tr>

<%} %>
</table>
<input type="button" value="뒤로가기" onclick="location.href='memberinfo.jsp'">
<a href="logout.jsp">로그아웃</a>
<%
         }else {
%>
<script>
    alert("예약 내역이 존재하지 않습니다.");
    window.location = "memberinfo.jsp";
</script>
<%
        }
    } else {
%>
<script>
    alert("세션이 만료되었거나 로그인하지 않았습니다. 다시 로그인해주세요.");
    window.location = "loginform.jsp";
</script>
<%
    }
%>
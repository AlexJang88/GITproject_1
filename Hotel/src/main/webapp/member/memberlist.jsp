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
            HOrderDTO order = orders.get(0); 
            

            
%>
<!DOCTYPE html>
<html>
<% String reg = new SimpleDateFormat("yyyy-MM-dd").format(order.getReg());
            	String checkin = order.getCheckin().substring(0,11);
            	String checkout = order.getCheckout().substring(0,11);%>
<head>
    <title>어서오세요</title>
</head>
<body>
<h2>예약 내역</h2>
<table border="1">
<tr>
        <td>예약 번호</td>
        <td><%= order.getRenum() %></td>
    </tr>
    <tr>
        <td>체크인 날짜</td>
        <td><%= checkin %></td>
    </tr>
    <tr>
        <td>체크아웃 날짜</td>
        <td><%= checkout %></td>
    </tr>
    <tr>
        <td>예약 인원</td>
        <td><%= order.getAdult() %></td>
    </tr>
    <tr>
        <td>아이</td>
        <td><%= order.getKid() %></td>
    </tr>
    <tr>
        <td>결제수단</td>
        <td><%= order.getPaytype() %></td>
    </tr>
</table>
<input type="button" value="뒤로가기" onclick="location.href='memberinfo.jsp'">
<a href="logout.jsp">로그아웃</a>
</body>
</html>
<%
        } else {
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
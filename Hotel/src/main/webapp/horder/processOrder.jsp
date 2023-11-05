<%@page import="org.apache.catalina.tribes.group.InterceptorPayload"%>
<%@page import="hotel.bean.MemberDTO"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@page import="hotel.bean.hotelDTO"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="hotel.bean.HOrderDTO" %>
<%@ page import="hotel.bean.HOrderDAO" %>
<%@page import="java.sql.Timestamp"%>
    <%
        // 예약 정보 가져오기
       MemberDAO mdao = MemberDAO.getInstance();
		String id = (String) session.getAttribute("sid");
		int grade= mdao.checkGrade(id);
 if(grade==11){
	 %>
	 <script>
	 	alert("로그인을 먼저해주세요");
	 	window.location="BookStay/views/main.jsp";
	 </script>
	 <%
 }

        String datetimes = request.getParameter("datetimes");
        System.out.println(datetimes);
        String checkin=datetimes.substring(0,10);
        String checkout=datetimes.substring(13);
        String checkinY=datetimes.substring(1,4);
        String checkinM=datetimes.substring(6,7);
        String checkinD=datetimes.substring(9,10);
        String checkoutY=datetimes.substring(14,17);
        String checkoutM=datetimes.substring(19,20);
        String checkoutD=datetimes.substring(22,23);
        System.out.println(checkin);
        System.out.println(checkout);
        int adult = 0;
        int kid = 0;
        int state = 0;
        String paytype = request.getParameter("paytype");
      
        
        
        try {
            if (request.getParameter("adult") != null && !request.getParameter("adult").isEmpty()) {
                adult = Integer.parseInt(request.getParameter("adult"));
            } else {
                
                throw new Exception("성인(adult) 수가 누락되었습니다.");
            }
            
            if (request.getParameter("kid") != null && !request.getParameter("kid").isEmpty()) {
                kid = Integer.parseInt(request.getParameter("kid"));
            } else {
                
                throw new Exception("어린이(kid) 수가 누락되었습니다.");
            }
            
            
        } catch (NumberFormatException e) {
            // 숫자로 변환할 수 없는 경우
            out.println("<h1>숫자 형식으로 입력해야 하는 항목이 올바르지 않습니다.</h1>");
            e.printStackTrace();
        } catch (Exception e) {
            // 누락된 항목이 있는 경우
            out.println("<h1>" + e.getMessage() + "</h1>");
            e.printStackTrace();
        }
        HOrderDTO order = new HOrderDTO();
        HOrderDAO dao = new HOrderDAO();
       	MemberDTO mdto = mdao.myInfo(id);
        
        hotelDAO hdao = new hotelDAO();
        hotelDTO dto = hdao.getContentMain(Integer.parseInt(request.getParameter("ref")));
        hotelDTO hdto = hdao.getContentMain(Integer.parseInt(request.getParameter("num")));
        String item_name=dto.getTitle()+"("+hdto.getRoomtype()+")";
        
        order.setId(id);
        order.setRef(Integer.parseInt(request.getParameter("num")));
        order.setCheckin(checkin);
        order.setCheckout(checkout);
        order.setAdult(adult);
        order.setKid(kid);
        order.setPaytype(paytype);
        // 예약 정보 객체 생성
        if(dao.insertOrder(order)==0){
        	%>
        	<script>
        		alert("예약이 정상적으로 처리되지않았습니다. 다시한번 확인해주세요");
        		window.location="/BookStay/views/main.jsp";
        	</script>
        	<%
        }else{
        int renum = dao.getRecentOrder(id);
        
        %>
        <form action="cardProcess.jsp" method="post">
        <input type="hidden" name="partner_order_id" value="<%=renum%>">
        <input type="hidden" name="partner_user_id" value="<%=id%>">
        <input type="hidden" name="item_name" value="<%=item_name%>">
        <input type="hidden" name="total_amount" value="<%=hdto.getPrice()%>">
        <input type="hidden" name="paytype" value="<%=paytype%>">
       <table>
       		<tr>
       			<td>호텔명</td>
       			<td><%=item_name%></td>
       		</tr>
       		<tr>
       			<td>예약일</td>
       			<td><%=checkinY%>년 <%=checkinM%>월 <%=checkinD%>일 ~ <%=checkoutY%>년 <%=checkoutM%>월 <%=checkoutD%>일</td>
       		</tr>
       		<tr>
       			<td>고객명</td>
       			<td><%=mdto.getName()%></td>
       		</tr>
       		<tr>
       			<td>연락처</td>
       			<td><%=mdto.getPnum()%></td>
       		</tr>
       		<tr>
       			<td>인원수</td>
       			<td>어른 : <%=adult %>아이 : <%=kid %></td>
       		</tr>
       		<tr>
       			<td>총 금액</td>
       			<td><%=hdto.getPrice()%></td>
       		</tr>
       </table>
       <button type="button" onclick="history.go(-1)">뒤로가기</button>
       <button type="button" onclick="location.href='/BookStay/views/main.jsp'">홈화면</button>
       <%if(paytype.equals("cash")){  %>
       <button type="button" onclick="/BookStay/horder/accountNum.jsp?renum=<%=renum%>">현금(계좌이체) 결제</button>
     	<%}else if(paytype.equals("card")) {%>
       <button type="submit">카드 결제</button>
       <%} %>
       </form>
       <%} %>

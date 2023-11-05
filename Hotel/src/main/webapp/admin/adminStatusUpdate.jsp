<%@page import="hotel.bean.adminDAO"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
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
adminDAO adao = adminDAO.getInstance();
hotelDAO hdao = new hotelDAO();
System.out.println("cancel : "+request.getParameter("cancel")+"confirm : "+request.getParameter("confirm")+"paid : "+request.getParameter("paid")+"renum : "+request.getParameter("renum"));
if(request.getParameter("cancel")!=null && request.getParameter("cancel").equals("true")){
	int renum=Integer.parseInt(request.getParameter("renum"));
	String etc = request.getParameter("etc");
	adao.reserveCancelStatus(renum, etc);
	response.sendRedirect("/BookStay/admin/adminlist.jsp");
}
if(request.getParameter("confirm")!=null && request.getParameter("confirm").equals("true")&&request.getParameter("paid")!=null){
	int paid= Integer.parseInt(request.getParameter("paid"));
	int renum=Integer.parseInt(request.getParameter("renum"));
	int totalPay = Integer.parseInt(request.getParameter("totalPay"));
	adao.paidUpdate(renum, paid);
	int p =adao.getPaid(renum);
	adao.reserveStatusUpdate(renum,totalPay,p);
	response.sendRedirect("/BookStay/admin/adminlist.jsp");
}
if(request.getParameter("check")!=null){
int ref = Integer.parseInt(request.getParameter("ref"));
int status=Integer.parseInt(request.getParameter("status"));
if(status==10){
	hdao.changeHotelStatus(ref, 0);
	response.sendRedirect("/BookStay/admin/adminHotelListPro.jsp?check=1");
}else if(status==0){
	hdao.changeHotelStatus(ref, 10);
	response.sendRedirect("/BookStay/admin/adminHotelListPro.jsp?check=2");
}
}
%>

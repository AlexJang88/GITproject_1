<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hotel.bean.reviewDTO" %>
<%@ page import="hotel.bean.reviewDAO" %>
<%@ page import="java.sql.Timestamp" %>

<%
    request.setCharacterEncoding("UTF-8");
	MemberDAO mdao = MemberDAO.getInstance();
	String id = (String) session.getAttribute("sid");
	int grade= mdao.checkGrade(id);
	if (grade!=11){
	 %>
	  <script>
	  	alert("로그인 후 이용해주세요");
	  	window.location="../views/main.jsp";
	  </script>
	<%}%>
<%    
    int jumsu = Integer.parseInt(request.getParameter("jumsu"));
    String content = request.getParameter("content");
    String ref = request.getParameter("ref");

    
    reviewDTO review = new reviewDTO();
    review.setId(id);
    review.setJumsu(jumsu);
    review.setContent(content);
    review.setRef(Integer.parseInt(ref));

    
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    review.setReg(timestamp);

    
    reviewDAO dao = new reviewDAO();
    dao.insertReview(review);

    if (true) {
%>
        <script>
            alert("리뷰가 성공적으로 등록되었습니다.");
            window.location = "hotelReview.jsp?ref=<%= ref %>";
        </script>
<%
    } else {
%>
        <script>
            alert("리뷰 등록 중 오류가 발생했습니다. 다시 시도해주세요.");
            window.history.back();
        </script>
<%
    }
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="hotel.bean.MemberDTO"%> 
<%@page import="hotel.bean.MemberDAO"%>

    <jsp:useBean id="dao" class="hotel.bean.MemberDAO"/>
    <jsp:useBean id="dto" class="hotel.bean.MemberDTO"/>

    <jsp:setProperty property="*" name="dto"/>
  
    <% 
    	String sid = (String) session.getAttribute("sid");
    	dto.setId(sid);
    	
  	 boolean result= dao.loginCheck(dto);
    		
  			
		if(result ==true){
    	%> <script>window.location="update.jsp";</script>
		<%}else{%>
   		 	<script> 
   			alert("비밀번호를 확인하세요 ");	
   			window.location="updateFirst.jsp";
   		</script>
   
    		
    		<% 	}	%>
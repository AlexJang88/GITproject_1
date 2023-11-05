<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page import="hotel.bean.MemberDTO"%> 
<%@page import="hotel.bean.MemberDAO"%>
    <jsp:useBean id="dao" class="hotel.bean.MemberDAO"/>
    <jsp:useBean id="dto" class="hotel.bean.MemberDTO"/>

    <jsp:setProperty property="*" name="dto"/>

<%
	String sid=(String)session.getAttribute("sid");
	request.setCharacterEncoding("UTF-8");
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
    for(Cookie c : cookies) {
        if(c.getName().equals("cid")) {
            dto.setId(c.getValue());
        }
        if(c.getName().equals("cpw")) {
            dto.setPw(c.getValue());
        }
        if(c.getName().equals("cauto")) {
            dto.setCauto(c.getValue());
        }
    }
	}
    boolean result =dao.loginCheck(dto);
    
    
    	if(result){
    		if(dto.getCauto()!=null && dto.getCauto().equals("1")){
    			Cookie c1=new Cookie("cid",dto.getId());
    			Cookie c2=new Cookie("cpw",dto.getPw());
    			Cookie c3= new Cookie ("cauto",dto.getCauto());
    			c1.setMaxAge(60 * 60 * 24 * 2);
    			c2.setMaxAge(60 * 60 * 24 * 2);
    			c3.setMaxAge(60 * 60 * 24 * 2);
    				
    			response.addCookie(c1);
    			response.addCookie(c2);
    			response.addCookie(c3);
    			
    		}
    			session.setAttribute("sid", dto.getId());
    			MemberDAO mdao = new MemberDAO();
    			int grade=mdao.checkGrade(dto.getId());
    			if(grade==81){
    			%>
    			<script>
    				if(confirm("휴먼계정입니다. 비밀번호를 변경하여 휴먼해제 하시겠습니까?")){
    					window.location="/BookStay/member/updateFirst.jsp";
    				}else{
    					window.location="/BookStay/member/logout.jsp";
    				}
    			</script>
    			<%
    			}else{
    	        response.sendRedirect("../views/main.jsp");
    			}
    	}else{response.sendRedirect("loginform.jsp?loginFailed=true");
    	
    	}
    	
     
    
	%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>

<jsp:useBean id="member" class="hotel.bean.MemberDTO" >
<jsp:setProperty name="member" property="*" />
</jsp:useBean>

<% request.setCharacterEncoding("UTF-8"); %>

<%
    String sid = (String) session.getAttribute("sid");
 
    MemberDAO manager = MemberDAO.getInstance();
    int updateResult = manager.updateMember(member);
	 String id = request.getParameter("id");
	 String email = request.getParameter("email");
   String name = request.getParameter("name");
   String birth = request.getParameter("birth");
   String addr = request.getParameter("addr");
   String pnum = request.getParameter("pnum");
String pw=request.getParameter("pw"); 
%>

<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr> 
    <td height="39" align="center">
  </tr>
  <tr>
    <td align="center"> 
      <p>
        <% if (updateResult == 1) { 
        	manager.humanRelease(sid);%>
          <script>alert("수정이 잘되었습니다");
      	window.location="../views/main.jsp";
      	</script>
              		
        <% } else { %>
          <script>alert("어딘가 잘못되었습니다");
          
          window.location="/BookStay/member/updateFirst.jsp";</script>
              			
        <% } %>
      </p>
    </td>
  </tr>
  <tr>
    <td> 
      <form>
        <input type="button" value="메인으로" onclick="window.location='../views/main.jsp'">
      </form>
    </td>
  </tr>
</table>
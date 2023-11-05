<%@page import="hotel.bean.adminDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.MemberDTO"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("sid");
MemberDAO dao = new MemberDAO();
adminDAO adao = adminDAO.getInstance();

int grade= dao.checkGrade(id);
if(grade!=99){%>
<script>
    alert("관리자페이지입니다");
    window.location="/BookStay/views/main.jsp";
</script>
<%}%>
<form >

</form>
<form>
<table action="adminGradePro.jsp" method="post">
 <tr>
 	<td>아이디</td>
 	<td>이름</td>
 	<td>현재 등급</td>
 	<td>변경할 등급</td>
 </tr>

<%
ArrayList<MemberDTO> list = adao.getAllMember();
for(MemberDTO d : list){%>
	<tr>
		<td><%=d.getId()%></td>
	 	<td><%=d.getName()%></td>
	 	<td><%=d.getGrade() %></td>
	 	<td><select name="grade">
	 		<option value="0">일반</option>
	 		<option value="81">휴먼</option>
	 		<option value="82">블랙</option>
	 		<option value="99">관리자</option>
	 	</select><button type="submit">변경하기</button></td>
	 	<input type="hidden" name="id" value="<%=d.getId()%>">
	</tr>
<%}%>
</table>
</form>
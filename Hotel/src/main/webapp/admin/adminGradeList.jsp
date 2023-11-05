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
<%}
ArrayList<MemberDTO> list = null;
String keyword=request.getParameter("keyword");
String check=request.getParameter("check");
if(check==null||check.equals("0")){
	if(keyword==null){
	list = adao.getAllMember();
	}else{
		list=adao.serchGrade(keyword);
	}
}else if(keyword!=null){
		list = adao.serchGrade(Integer.parseInt(check),keyword);
}
%>
<form >
<input type="text" name="keyword" value="<%=keyword%>">
<select name="check">
	<option value="0">전체</option>
	<option value="1">아이디</option>
	<option value="2">이름</option>
</select>
<button>검색</button>
</form>
<form action="adminGradePro.jsp" method="post">
<table >
 <tr>
 	<td>아이디</td>
 	<td>이름</td>
 	<td>현재 등급</td>
 	<td>변경할 등급</td>
 </tr>

<%

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
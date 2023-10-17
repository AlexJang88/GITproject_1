<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
String id = (String)session.getAttribute("sid");
dto.setId(id);
if(id==null){
	%>
	<script>
		alert("로그인후 이용해주세요");
		window.location("main.jsp");
	</script>
	<%
}
request.setCharacterEncoding("UTF-8");
boardDAO dao = boardDAO.getInstance();
dao.boardInsert(dto);
int num=dto.getCategory();
if(num>=20){
%>
<script>
	alert("작성되었습니다.");
	window.location="QnAList.jsp";
</script>
<%}else if(num==10){ %>
<script>
	alert("작성되었습니다.");
	window.location="notice.jsp";
</script>
<%}else{
	%>
	<script>
	alert("작성되었습니다.");
	window.location="question.jsp";
</script>
	<%
} %>


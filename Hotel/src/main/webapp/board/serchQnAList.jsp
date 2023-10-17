<%@page import="hotel.bean.boardDAO"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<%
request.setCharacterEncoding("UTf-8");
String keyword=request.getParameter("keyword");
boardDAO dao = boardDAO.getInstance();
ArrayList<boardDTO> list = dao.getSerchList(keyword);

%>

<h2>QnA 검색결과 </h2><hr />
<form action="serchQnAList.jsp" method="post">
	<input type="text" name="keyword"><button type="submit">검색</button> 
</form>
<hr />
<%
if(list==null){
	%>
	검색 결과가 없습니다.
	<%
}else{
	for(boardDTO d : list){
		%>
		<div> <%=d.getTitle()%>
			<div><%=d.getContent()%> </div>
		</div>
		<%
	}

%>
	
<%}%>
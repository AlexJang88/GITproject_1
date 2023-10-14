<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/css.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
boardDAO dao = boardDAO.getInstance();
ArrayList<boardDTO> list = dao.getList(10);
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
String id = (String)session.getAttribute("sid");
%>
<div>
공지사항
</div>
<hr />
<%for(boardDTO dto : list){
	String title=dto.getTitle();
	String reg=df.format(dto.getReg());
	String content=dto.getContent();
	%><div>
		<%=title%><br>
		<%=reg%><br>
		<%=content%>
	</div><hr /><%
} %>
<%
if(id.equals("admin")){
	%>
	<button type="button" onclick="window.location='adminWriteForm.jsp'">공지글 작성</button>
	<%
}
%>
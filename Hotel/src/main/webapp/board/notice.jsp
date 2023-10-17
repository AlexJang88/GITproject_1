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
	%><div class="board-item">
		<a href="javascript:void(0);" onclick="toggleContent('content_<%=dto.getNum()%>');"><%=title%></a>
		<%if(id.equals("admin")){ %>
		<button onclick="window.location='boardUpdateForm.jsp?num=<%=dto.getNum()%>&category=<%=dto.getCategory()%>'">수정</button>
		<button onclick="window.location='boardDelete.jsp?num=<%=dto.getNum()%>&category=<%=dto.getCategory()%>'">삭제</button>
		<%} %>
		<br>
		<%=reg%><br>
		<div id="content_<%=dto.getNum()%>" style="display: none;"><%=dto.getContent()%></div>
	</div><hr /><%
} %>
<%
if(id.equals("admin")){
	%>
	<button type="button" onclick="window.location='writeForm.jsp'">공지글 작성</button>
	<%
}
%>
<script>
function toggleContent(contentId) {
    var contentDiv = document.getElementById(contentId);
    if (contentDiv.style.display === "none") {
        contentDiv.style.display = "block";
    } else {
        contentDiv.style.display = "none";
    }
}
</script>
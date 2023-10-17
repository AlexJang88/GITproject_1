<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("sid");
if(id==null){
	%>
		<script>
			alert("로그인을 먼저 해주세요");
			window.location="/login/main.jsp";
		</script>
	<%
}
boardDAO dao = boardDAO.getInstance();
ArrayList<boardDTO> list = dao.getMyList(id);
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");

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
		<br>
		<%=reg%><br>
		<div id="content_<%=dto.getNum()%>" style="display: none;"><%=dto.getContent()%></div>
	</div><hr /><%
} %>
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
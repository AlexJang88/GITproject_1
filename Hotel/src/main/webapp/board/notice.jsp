<%@page import="hotel.bean.MemberDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<%
request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String sid = (String) session.getAttribute("sid");
int id= mdao.checkGrade(sid);
boardDAO dao = boardDAO.getInstance();
ArrayList<boardDTO> list = dao.getList(10);
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
%>
<%@ include file="../views/menu.jsp" %>
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
		<%if(id==99){ %>
		<button onclick="window.location='boardUpdateForm.jsp?num=<%=dto.getNum()%>&category=<%=dto.getCategory()%>'">수정</button>
		<button onclick="window.location='boardDelete.jsp?num=<%=dto.getNum()%>&category=<%=dto.getCategory()%>'">삭제</button>
		<%} %>
		<br>
		<%=reg%><br>
		<div id="content_<%=dto.getNum()%>" style="display: none;"><%=dto.getContent()%></div>
	</div><hr /><%
} %>
<%
if(id==99){
	%>
	<button type="button" onclick="window.location='writeForm.jsp'">공지글 작성</button>
	<%
}
%><button type="button" onclick="window.location='QnAList.jsp'">자주묻는질문</button>
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
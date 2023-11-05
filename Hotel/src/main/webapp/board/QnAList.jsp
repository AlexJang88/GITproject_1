<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<%
request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String sid = (String) session.getAttribute("sid");
int id= mdao.checkGrade(sid);
boardDAO dao = boardDAO.getInstance();
int category = 20;	
if(request.getParameter("category")!=null){
	category = Integer.parseInt(request.getParameter("category"));
}
ArrayList<boardDTO> list = dao.getList(category);
%>
<%@ include file="../views/menu.jsp" %>
<div>
자주묻는질문
</div>
<hr />
<form action="serchQnAList.jsp" method="post">
	<input type="text" name="keyword"><button type="submit">검색</button> 
</form> <hr />

<div>
	<a href="QnAPro.jsp?category=20" >전체</a>
	<a href="QnAPro.jsp?category=21" >예약</a>
	<a href="QnAPro.jsp?category=22" >체크인</a>
	<a href="QnAPro.jsp?category=23" >검색</a>
	<a href="QnAPro.jsp?category=24" >계정</a>
	<a href="QnAPro.jsp?category=25" >기타</a><br>	
		<%for(boardDTO d : list){	%>
			<a href="javascript:void(0);" onclick="toggleContent('content_<%=d.getNum()%>')"><%=d.getTitle() %></a>
			<button onclick="window.location='boardUpdateForm.jsp?num=<%=d.getNum()%>&category=<%=d.getCategory()%>'">수정</button>
			<button onclick="window.location='boardDelete.jsp?num=<%=d.getNum()%>&category=<%=d.getCategory()%>'">삭제</button><br />
			<div class="content" id="content_<%=d.getNum()%>" style="display: none"><%=d.getContent()%></div>
		<%} %>
		<br>
		<% 
if(id==99){
	%>
	<button type="button" onclick="window.location='writeForm.jsp'">QnA글 작성</button>
	<%
}%>
	
<script>
function toggleContent(contentId) {
    var contentDiv = document.getElementById(contentId);
    var contents =document.getElementsByClassName("content");
    for(var i=0; i<contents.length;i++){
    	var content = contents.item(i);
    	if (contentDiv.style.display === "none") {
    		content.style.display="none";
            contentDiv.style.display = "block";
        } else {
        	content.style.display="none";
            contentDiv.style.display = "none";
        }
    }
    
}
</script>





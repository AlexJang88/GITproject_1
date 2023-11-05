<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@page import="hotel.bean.adminDAO"%>
<%@page import="hotel.bean.adminDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<link rel="stylesheet" href="/BookStay/resources/css/qnalist.css"/>
<%
request.setCharacterEncoding("UTF-8");
boardDAO dao = boardDAO.getInstance();
int category = 20;	
if(request.getParameter("category")!=null){
	category = Integer.parseInt(request.getParameter("category"));
}
ArrayList<boardDTO> list = dao.getList(category);
adminDAO dao1=adminDAO.getInstance();
adminDTO dto1 = dao1.getPreView();
%>
<%@ include file="../views/main_bar.jsp" %>
<div id="list">
	<ul id="ul1">
	  <%if(grade==99){ %>
	  <li><button id="bn1" type="button" onclick="window.location='/BookStay/admin/adminMain.jsp'">요약정보</button></li>
	  <li><button id="bn2" type="button" onclick="window.location='/BookStay/admin/adminlist.jsp'">예약목록 </button></li>
	  <li><button id="bn3" type="button" onclick="window.location='/BookStay/board/notice.jsp'">공지사항 </button></li>
	  <li><button id="bn4" type="button" onclick="window.location='/BookStay/board/QnAList.jsp'">자주하는질문 </button></li>
	  <li><button id="bn5" type="button" onclick="window.location='/BookStay/board/myQuestion.jsp'">1:1문의[<%=dto1.getNoanswer() %>] </button></li>
	  <li><button id="bn6" type="button" onclick="window.location='/BookStay/admin/adminHotelListPro.jsp?check=1'">숙박업소 게시글 정보 </button></li>
	  <li><button id="bn7" type="button" onclick="window.location='/BookStay/admin/adminGradeList.jsp'">등급 관리/조회</button></li>
	<%}else if(grade==11 || grade==0){ %>
	 <li><button id="bn3" type="button" onclick="window.location='/BookStay/board/notice.jsp'">공지사항 </button></li>
	  <li><button id="bn4" type="button" onclick="window.location='/BookStay/board/QnAList.jsp'">자주하는질문 </button></li>
	<%} %>
	</ul>
	<div id="f1">
	<div id="tbcal">
	<ul class="nav nav-tabs">
	  <li class="nav-item">
	    <a class="nav-link active" aria-current="page">자주하는질문</a>
	  </li>
	</ul>
<form id="form" action="serchQnAList.jsp" method="post">
	<input id="text" type="text" name="keyword"><button id="sBtn" type="submit">검색</button> 
</form>

<div id="all">
	<div>
	<a href="QnAPro.jsp?category=20" >전체</a>
	<a href="QnAPro.jsp?category=21" >예약</a>
	<a href="QnAPro.jsp?category=22" >체크인</a>
	<a href="QnAPro.jsp?category=23" >검색</a>
	<a href="QnAPro.jsp?category=24" >계정</a>
	<a href="QnAPro.jsp?category=25" >기타</a>
	</div>
		<%for(boardDTO d : list){	%>
		<div class="board-item">
			<div class="board">
			<a class="c3" href="javascript:void(0);" onclick="toggleContent('content_<%=d.getNum()%>')"><%=d.getTitle() %></a>
			<button class="c1" onclick="window.location='boardUpdateForm.jsp?num=<%=d.getNum()%>&category=<%=d.getCategory()%>'">수정</button>
			<button class="c2" onclick="window.location='boardDelete.jsp?num=<%=d.getNum()%>&category=<%=d.getCategory()%>'">삭제</button><br />
			</div>
			<div class="content" id="content_<%=d.getNum()%>" style="display: none"><%=d.getContent()%></div>
		</div>
		<%} %>
		<br>
		<% 
if(grade==99){
	%>
	<button id="c3" type="button" onclick="window.location='writeForm.jsp'">QnA글 작성</button>
	<%
}%>
</div>
</div>
</div>
</div>
	
<script>
function toggleContent(contentId) {
    var contentDiv = document.getElementById(contentId);
    contentDiv.classList.add('con');
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





<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@page import="hotel.bean.adminDAO"%>
<%@page import="hotel.bean.adminDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/BookStay/resources/css/myquestion.css"/>
<%@ include file="../views/main_bar.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
if (grade==11){
	 %>
	  <script>
	  	alert("로그인 후 이용해주세요");
	  	window.location="../views/main.jsp";
	  </script>
<%}
boardDAO dao = boardDAO.getInstance();
hotelDAO check = new hotelDAO();
ArrayList<boardDTO> list = dao.getMyList(grade,id);
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
adminDAO dao1=adminDAO.getInstance();
adminDTO dto1 = dao1.getPreView();
%>
<%if(grade==99){ %>
<div id="list">
<ul id="ul1">
  <li><button id="bn1" type="button" onclick="window.location='/BookStay/admin/adminMain.jsp'">요약정보</button></li>
	  <li><button id="bn2" type="button" onclick="window.location='/BookStay/admin/adminlist.jsp'">예약목록 </button></li>
	  <li><button id="bn3" type="button" onclick="window.location='/BookStay/board/notice.jsp'">공지사항 </button></li>
	  <li><button id="bn4" type="button" onclick="window.location='/BookStay/board/QnAList.jsp'">자주하는질문 </button></li>
	  <li><button id="bn5" type="button" onclick="window.location='/BookStay/board/myQuestion.jsp'">1:1문의[<%=dto1.getNoanswer() %>] </button></li>
	  <li><button id="bn6" type="button" onclick="window.location='/BookStay/admin/adminHotelListPro.jsp?check=1'">숙박업소 게시글 정보 </button></li>
	  <li><button id="bn7" type="button" onclick="window.location='/BookStay/admin/adminGradeList.jsp'">등급 관리/조회</button></li>
</ul>
<%} %>
<div id="f1">
<div id="tbcal">
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page">1:1 문의</a>
  </li>
</ul>
<%if(list.size()==0){ %>
문의사항이 없습니다.

<%}else{ %>
<%for(boardDTO dto : list){
	String title=dto.getTitle();
	String reg=df.format(dto.getReg());
	String content=dto.getContent();
	boardDTO answer = new boardDTO();
	answer=dao.getAnswer(dto.getRef());
	%>
	<%if(dto.getId().equals("admin")){}else{ %>
	<div class="board-item">
		<a href="javascript:void(0);" onclick="toggleContent('content_<%=dto.getNum()%>');"><%=title%></a>
		<%if(grade!=11&&id.equals(dto.getId())){ %>
		<button type="button" onclick="window.location='boardDelete.jsp?category=<%=dto.getCategory()%>&num=<%=dto.getNum()%>'">삭제</button>
		<%} %>
		<%if(grade==99){ %>
		<button type="button" onclick="window.location='question.jsp?ref=<%=dto.getRef()%>'">답변작성</button>
		<%} %>
		<br>
		<%=reg%><br>
		<div id="content_<%=dto.getNum()%>" style="display: none;">
		<%=dto.getContent()%><hr>
		답변 <br>
		<%=answer.getContent()%><hr>
		</div>
		
	</div>

	<hr />
	<%} %>
	<%
}} %>
<button type="button" onclick="window.location='question.jsp'">문의글작성</button>
</div>
</div>
</div>
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
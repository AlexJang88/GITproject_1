<%@page import="hotel.bean.MemberDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@page import="hotel.bean.adminDAO"%>
<%@page import="hotel.bean.adminDTO"%>
<%@ page import="hotel.bean.hotelDTO" %>
<%@ page import="hotel.bean.hotelDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/BookStay/resources/css/notice.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<%@ include file="../views/main_bar.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
boardDAO dao1 = boardDAO.getInstance();
ArrayList<boardDTO> list = dao1.getList(10);
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
 adminDAO dao=adminDAO.getInstance();
 adminDTO dto1 = dao.getPreView();
%>
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
	    <a class="nav-link active" aria-current="page">공지사항</a>
	  </li>
	</ul>
<%for(boardDTO dto : list){
	String title=dto.getTitle();
	String reg=df.format(dto.getReg());
	String content=dto.getContent();
	%><div class="board-item">
		<div class="board">
		<a class="title c3" href="javascript:void(0);" onclick="toggleContent('content_<%=dto.getNum()%>');"><%=title%></a>
		<%if(grade==99){ %>
		<button class="c1" onclick="window.location='boardUpdateForm.jsp?num=<%=dto.getNum()%>&category=<%=dto.getCategory()%>'">수정</button>
		<button class="c2" onclick="window.location='boardDelete.jsp?num=<%=dto.getNum()%>&category=<%=dto.getCategory()%>'">삭제</button>
		</div>
		<%} %>
		<%=reg%><br>
		<div id="content_<%=dto.getNum()%>" style="display: none;"><%=dto.getContent()%></div>
	</div><%
} %>
</div>
<%
if(grade==99){
	%>
	<button id="c3" type="button" onclick="window.location='../board/writeForm.jsp'">공지글 작성</button>
	<%
}
%>
</div>
</div>
<script>
function toggleContent(contentId) {
    var contentDiv = document.getElementById(contentId);
    contentDiv.classList.add('con');
    if (contentDiv.style.display === "none") {
        contentDiv.style.display = "block";
    } else {
        contentDiv.style.display = "none";
    }
}
</script>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="hotel.bean.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="hotel.bean.boardDTO"/>
<%
request.setCharacterEncoding("UTF-8");
boardDAO dao = boardDAO.getInstance();
String id = (String)session.getAttribute("sid");
ArrayList<boardDTO> list0 = dao.getList(20);
ArrayList<boardDTO> list1 = dao.getList(21);
ArrayList<boardDTO> list2 = dao.getList(22);
ArrayList<boardDTO> list3 = dao.getList(23);
ArrayList<boardDTO> list4 = dao.getList(24);
ArrayList<boardDTO> list5 = dao.getList(25);
%>
<div>
자주묻는질문
</div>
<hr />
<form action="serchQnAList.jsp" method="post">
	<input type="text" name="keyword"><button type="submit">검색</button> 
</form> <hr />

<div>
	<a href="javascript:void(0);" onclick="toggleCategory('content_all')" >전체</a>
	<a href="javascript:void(0);" onclick="toggleCategory('content_reserve')" >예약</a>
	<a href="javascript:void(0);" onclick="toggleCategory('content_checkin')" >체크인</a>
	<a href="javascript:void(0);" onclick="toggleCategory('content_serch')" >검색</a>
	<a href="javascript:void(0);" onclick="toggleCategory('content_login')" >계정</a>
	<a href="javascript:void(0);" onclick="toggleCategory('content_etc')" >기타</a>	
		<div id="content_all" style="display: none;">
		<%for(boardDTO d0 : list0){	%>
			<a href="javascript:void(0);" onclick="toggleContent('content_<%=d0.getNum()%>')"><%=d0.getTitle() %></a>
			<button onclick="window.location='boardUpdateForm.jsp?num=<%=d0.getNum()%>&category=<%=d0.getCategory()%>'">수정</button>
			<button onclick="window.location='boardDelete.jsp?num=<%=d0.getNum()%>&category=<%=d0.getCategory()%>'">삭제</button><br />
			<div id="content_<%=d0.getNum()%>" style="display: none"><%=d0.getContent()%></div>
		<%} %>
		</div>
	
		<div id="content_reserve" style="display: none;">
		<%for(boardDTO d1 : list1){	%>
			<a href="javascript:void(0);" onclick="toggleContent('content_<%=d1.getNum()%>')"><%=d1.getTitle() %></a>
			<button onclick="window.location='boardUpdateForm.jsp?num=<%=d1.getNum()%>&category=<%=d1.getCategory()%>'">수정</button>
			<button onclick="window.location='boardDelete.jsp?num=<%=d1.getNum()%>&category=<%=d1.getCategory()%>'">삭제</button><br />
			<div id="content_<%=d1.getNum()%>" style="display: none"><%=d1.getContent()%></div>
		<%} %>
		</div>
	
		<div id="content_checkin" style="display: none;">
		<%for(boardDTO d2 : list2){	%>
			<a href="javascript:void(0);" onclick="toggleContent('content_<%=d2.getNum()%>')"><%=d2.getTitle() %></a>
			<button onclick="window.location='boardUpdateForm.jsp?num=<%=d2.getNum()%>&category=<%=d2.getCategory()%>'">수정</button>
			<button onclick="window.location='boardDelete.jsp?num=<%=d2.getNum()%>&category=<%=d2.getCategory()%>'">삭제</button><br />
			<div id="content_<%=d2.getNum()%>" style="display: none"><%=d2.getContent()%></div><br />
		<%} %>
		</div>
	
		<div id="content_serch" style="display: none;">
		<%for(boardDTO d3 : list3){	%>
			<a href="javascript:void(0);" onclick="toggleContent('content_<%=d3.getNum()%>')"><%=d3.getTitle() %></a>
			<button onclick="window.location='boardUpdateForm.jsp?num=<%=d3.getNum()%>&category=<%=d3.getCategory()%>'">수정</button>
			<button onclick="window.location='boardDelete.jsp?num=<%=d3.getNum()%>&category=<%=d3.getCategory()%>'">삭제</button><br />
			<div id="content_<%=d3.getNum()%>" style="display: none"><%=d3.getContent()%></div><br />
		<%} %>
		</div>
	
		<div id="content_login" style="display: none;">
		<%for(boardDTO d4 : list4){	%>
			<a href="javascript:void(0);" onclick="toggleContent('content_<%=d4.getNum()%>')"><%=d4.getTitle() %></a>
			<button onclick="window.location='boardUpdateForm.jsp?num=<%=d4.getNum()%>&category=<%=d4.getCategory()%>'">수정</button>
			<button onclick="window.location='boardDelete.jsp?num=<%=d4.getNum()%>&category=<%=d4.getCategory()%>'">삭제</button><br />
			<div id="content_<%=d4.getNum()%>" style="display: none"><%=d4.getContent()%></div><br />
		<%} %>
		</div>
	
		<div id="content_etc" style="display: none;">
		<%for(boardDTO d5 : list5){	%>
			<a href="javascript:void(0);" onclick="toggleContent('content_<%=d5.getNum()%>')"><%=d5.getTitle() %></a>
			<button onclick="window.location='boardUpdateForm.jsp?num=<%=d5.getNum()%>&category=<%=d5.getCategory()%>'">수정</button>
			<button onclick="window.location='boardDelete.jsp?num=<%=d5.getNum()%>&category=<%=d5.getCategory()%>'">삭제</button><br />
			<div id="content_<%=d5.getNum()%>" style="display: none"><%=d5.getContent()%></div><br />
		<%} %>
		</div>
</div>
<script>
function toggleCategory(contentId) {
	var c1=document.getElementById("content_all");
	var c2=document.getElementById("content_reserve");
	var c3=document.getElementById("content_checkin");
	var c4=document.getElementById("content_serch");
	var c5=document.getElementById("content_login");
	var c6=document.getElementById("content_etc");
	if(contentId=="content_all"){
		c6.style.display = "none";
		c2.style.display = "none";
		c3.style.display = "none";
		c4.style.display = "none";
		c5.style.display = "none";
	}if(contentId=="content_reserve"){
		c1.style.display = "none";
		c6.style.display = "none";
		c3.style.display = "none";
		c4.style.display = "none";
		c5.style.display = "none";
	}if(contentId=="content_checkin"){
		c1.style.display = "none";
		c2.style.display = "none";
		c6.style.display = "none";
		c4.style.display = "none";
		c5.style.display = "none";
	}if(contentId=="content_serch"){
		c1.style.display = "none";
		c2.style.display = "none";
		c3.style.display = "none";
		c6.style.display = "none";
		c5.style.display = "none";
	}if(contentId=="content_login"){
		c1.style.display = "none";
		c2.style.display = "none";
		c3.style.display = "none";
		c4.style.display = "none";
		c6.style.display = "none";
	}if(contentId=="content_etc"){
		c1.style.display = "none";
		c2.style.display = "none";
		c3.style.display = "none";
		c4.style.display = "none";
		c5.style.display = "none";
						}
	
    var contentDiv = document.getElementById(contentId);
    if (contentDiv.style.display === "none") {
        contentDiv.style.display = "block";
    } else {
        contentDiv.style.display = "none";
    }
    if(contentDiv!=document.div.id){
    	document.div.style.display = "none";
    }
}
function toggleContent(contentId) {
    var contentDiv = document.getElementById(contentId);
    if (contentDiv.style.display === "none") {
        contentDiv.style.display = "block";
    } else {
        contentDiv.style.display = "none";
    }
}
</script>





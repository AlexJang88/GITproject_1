<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.boardDAO"%>
<%@page import="hotel.bean.boardDTO"%>
<%@page import="hotel.bean.hotelDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<%request.setCharacterEncoding("UTF-8");
MemberDAO mdao = MemberDAO.getInstance();
String id = (String) session.getAttribute("sid");
int grade= mdao.checkGrade(id);

 if(grade==11){
	 %>
	 <script>
	 	alert("로그인을 먼저해주세요");
	 	window.location="BookStay/views/main.jsp";
	 </script>
	 <%
 }
%>
<%@ include file="../views/menu.jsp" %>
<%String ref=request.getParameter("ref");
hotelDAO hdao = new hotelDAO();
boardDAO bdao=boardDAO.getInstance();
boardDTO dto = new boardDTO();
if(hdao.checkNull(ref)){
	ref="0";
}else{
	dto=bdao.getContent(Integer.parseInt(ref));
}
%>
<form name="form" action="writePro.jsp" method="post">
<input type="hidden" name="id">
<input type="hidden" name="category" value="30">
<input type="hidden" name="ref" value="<%=ref%>">
<%if(ref.equals("0")){ %>
제목<input type="text" id="title "name="title" required><br/>
내용<br/>
<textarea rows="6" cols="30" id="content" name="content" required></textarea>
<input type="hidden" name="re_step" value="0">
<%}else{ %>
제목<input type="text" id="title "name="title" value="[답변]<%=dto.getTitle()%>" readonly><br/>
내용<br/>
문의내용 : <textarea rows="6" cols="30" readonly><%=dto.getContent() %></textarea><br>
답변글<textarea rows="6" cols="30" id="content" name="content" required></textarea><br>
<input type="hidden" name="re_step" value="1">
<%} %>
<button type="submit">작성</button>
</form>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
int ref=0;
if(request.getParameter("ref")!=null){
	ref = Integer.parseInt(request.getParameter("ref"));
}
%>
<form action="testReviewPro.jsp" method="post">
<div class="container">
<img id="img" src="../resources/img/heart0.jpeg" height="30" width="180"><br>
1<input type="radio" name="jumsu" value="1" onclick="changeImg(1)">
2<input type="radio" name="jumsu" value="2" onclick="changeImg(2)">
3<input type="radio" name="jumsu" value="3" onclick="changeImg(3)">
4<input type="radio" name="jumsu" value="4" onclick="changeImg(4)">
5<input type="radio" name="jumsu" value="5" onclick="changeImg(5)">
</div>
<br>
내용 : <textarea rows="5" cols="15" name="content"></textarea><br>
<input type="hidden" name="ref" value="<%=ref%>">
<input type="submit" value="댓글등록">
</form>
<script>
function changeImg(num){
	if(num==1){
		document.getElementById("img").src="../resources/img/heart1.jpeg";
	}else if(num==2){
		document.getElementById("img").src="../resources/img/heart2.jpeg";
	}else if(num==3){
		document.getElementById("img").src="../resources/img/heart3.jpeg";
	}else if(num==4){
		document.getElementById("img").src="../resources/img/heart4.jpeg";
	}else if(num==5){
		document.getElementById("img").src="../resources/img/heart5.jpeg";
	}
}
</script>
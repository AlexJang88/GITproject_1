<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("sid");
if(id==null){
	%>
	<script>
		alert("로그인후 이용해주세요");
		window.location="../member/main.jsp";
	</script>
	<%
}
String num = request.getParameter("num");
MemberDTO dto = new MemberDTO();
MemberDAO dao = new MemberDAO();
dto=dao.myInfo(id);
String heart=dto.getHeart();
String nheart="";
if(heart==null){
	nheart=num;
}else{
	String [] hearts = heart.split(",");
	if(heart.contains(num)){
	for(String h : hearts){
		if(h.equals(num)){
			if(hearts.length==1){
				nheart=null;
			}
		}else{
			nheart+=","+h;
		}
	}
		if(nheart!=null){
		nheart=nheart.substring(1);
		}
	
	}else{
		for(String h : hearts){
				nheart+=","+h;
		}
		nheart+=","+num;
		nheart=nheart.substring(1);
		}
	}

dao.updateHeart(id, nheart);
dao.allupdateHeart();
%>
<script>
	alert("찜목록이 수정되었습니다. ");
	window.location="../member/heartList.jsp";
</script>
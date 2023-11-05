<%@page import="hotel.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%
  request.setCharacterEncoding("UTF-8");
  MemberDAO menudao = MemberDAO.getInstance();
  String menuid = (String) session.getAttribute("sid");
  int menugrade= menudao.checkGrade(menuid);
 			if(menugrade==11) {			%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="main.jsp"><img src="/BookStay/resources/img/logo.svg" style="width:100px;"/></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/BookStay/views/main.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/BookStay/member/loginform.jsp">로그인</a>
        </li>
 
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            고객센터
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="BookStay/board/notice.jsp">공지사항</a></li>
            <li><a class="dropdown-item" href="BookStay/board/QnAList.jsp">자주묻는질문</a></li>
          </ul>
        </li>
       
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<% } else { 

	%>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="main.jsp"><img src="/BookStay/resources/img/logo.svg" style="width:100px;"/></a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="/BookStay/views/main.jsp">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="/BookStay/member/logout.jsp">로그아웃</a>
	        </li>
	    
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            고객센터
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="BookStay/board/notice.jsp">공지사항</a></li>
	            <li><a class="dropdown-item" href="BookStay/board/QnAList.jsp">자주묻는질문</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            MyPage
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="../member/memberinfo.jsp">내정보수정</a></li>
	            <li><a class="dropdown-item" href="BookStay/admin/adminlist.jsp">나의예약정보</a></li>
	             <li><a class="dropdown-item" href="BookStay/review/hotelReview.jsp">찜목록보기</a></li>
	              <li><a class="dropdown-item" href="BookStay/board/myQuestion.jsp">1:1문의</a></li>
	          </ul>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
	        </li>
	      </ul>
	      <form class="d-flex" role="search">
	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-success" type="submit">Search</button>
	      </form>
	    </div>
	  </div>
	</nav>



<%}
%>
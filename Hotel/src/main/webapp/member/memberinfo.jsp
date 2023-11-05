<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>
<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />
<%
    request.setCharacterEncoding("UTF-8");
    String userId = (String) session.getAttribute("sid"); // 사용자 아이디 가져오기

    // 사용자 정보 조회
    MemberDTO user = dao.myInfo(userId);
    String birth = user.getBirth().substring(0, 11);
%>
<style>
#myModal {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 10px;
    height: 50%;
    background-color: white;
}
.modal-content {
    width: 400px;
    height: 500px;
    overflow: hidden;
    border: 2px solid gray;
    position: relative;
    border-radius: 10px;
    background-color: white;
}
.close {
    position: absolute;
    top: -10px;
    right: 0;
    cursor: pointer;
    color: #198754;
    font-size: 25px;
    text-align: center;
}
.close:hover {
    font-weight: bold;
}
</style>
<script>
// 모달 열기
function openModal(modalType) {
    var modal = document.getElementById("myModal");
    modal.style.display = "block";

    // iframe의 src 속성 설정
    
}

// 모달 닫기
function closeModal() {
    var modal = document.getElementById("myModal");
    modal.style.display = "none";
}

// 모달 닫기 및 부모 페이지로 이동
function closeModalAndRedirect() {
    var modal = document.getElementById("myModal");
    modal.style.display = "none";

    // 부모 페이지로 이동
    window.location.href = "updateFirstPro.jsp"; // 수정 후 이동할 페이지로 변경
}
</script>
<html>
<head>
    <title>마이페이지</title>
    <link rel="stylesheet" href="resources/memberinfo.css" type="text/css">
</head>
<body>
    <div class="UjeansHypboy">
        <div id="logo">
            <a href="/BookStay/views/main.jsp">BookStay</a>
        </div>
        <div class="info">고객센터</div>
    </div>
    <div class="table-container">
        <h2>마이페이지</h2>
        <table border="1">
            <tr>
                <td>아이디</td>
                <td><%= userId %></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><%= user.getName() %></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><%= user.getEmail() %></td>
            </tr>
            <tr>
                <td>생일</td>
                <td><%= birth %></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><%= user.getAddr() %></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><%= user.getPnum() %></td>
            </tr>
        </table>
        <div class="button-container">
            <input type="button" value="메인" onclick="location.href='../views/main.jsp'" class="button-container">
            <input type="button" value="로그아웃" onclick="location.href='logout.jsp'" class="button-container">
            <input type="button" value="회원정보수정" onclick="openModal('updateFirst')" class="button-container">
            <input type="button" value="회원탈퇴" onclick="openModal('deleteSelet')" class="button-container">
        </div>
    </div>
    <!-- 모달 창 HTML -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <!-- 아이디 찾기 및 비밀번호 찾기 페이지의 URL을 설정하세요 -->
            <form action="updateFirstPro.jsp"  method="post">
        <label for="pw">비밀번호: </label>
        <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" required>
        <input type="hidden" name="id" value="<%= userId %>">
        <button type="submit">입력</button>
    </form>
        </div>
    </div>
</body>
</html>

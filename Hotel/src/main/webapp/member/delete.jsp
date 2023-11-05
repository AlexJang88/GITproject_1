<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>계정 삭제를 원하시면 아이디와 비밀번호를 입력해주세요</h1>


<form action="deletepro.jsp" method="post">
    <label for="id">아이디: </label>
    <input type="text" name="id" id="id" required>
    <br />
    <label for="pw">비밀번호: </label>
    <input type="password" name="pw" id="pw" required>
    <br />
    <button type="submit">삭제</button>
</form>

<button onclick="window.location='loginform.jsp'">로그인다시 하기  </button>
<button onclick="window.location='Findidpw.jsp'">아이디 | 비밀번호 찾기 </button>
<button onclick="window.location='../views/main.jsp'">메인 </button>
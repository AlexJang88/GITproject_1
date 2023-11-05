<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>계정 삭제</title>
</head>
<body>
    <form action="deleteSeletPro.jsp" method="post">
        <label for="id">아이디: </label>
        <input type="text" name="id" id="id" required>
        <br />
        <label for="pw">비밀번호: </label>
        <input type="password" name="pw" id="pw" required>
        <br />
        <button type="submit">계정 삭제</button>
    </form>
</body>
</html>

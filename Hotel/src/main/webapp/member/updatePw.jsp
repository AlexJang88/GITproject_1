
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>

<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />
<jsp:setProperty property="*" name="dto" />
<%
    String sid = (String) session.getAttribute("sid");
    dto.setId(sid); 			//1030도준수정
%>

<script>
    // 비밀번호 유효성 검사 및 비밀번호 모자이크 제어 함수
    function validatePassword(inputField, errorId) {
        var pw = inputField.value;
        var pwError = document.getElementById(errorId);

        if (pw.length < 6 || pw.length > 12 || !/^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z]).{6,12}$/.test(pw)) {
            pwError.textContent = "비밀번호는 6자 이상 12자 이하, 숫자, 특수문자 및 대문자를 포함해야 합니다.";
            pwError.style.fontSize = "12px";
            inputField.style.border = "1px solid red";
        } else {
            pwError.textContent = "";
            inputField.style.border = "1px solid black";
        }
    }

    // 비밀번호 모자이크 해제/실행 함수
    function togglePasswordVisibility(inputFieldId) {
        var passwordField = document.getElementById(inputFieldId);

        if (passwordField.type === "password") {
            passwordField.type = "text";
        } else {
            passwordField.type = "password";
        }
    }
</script>


<form method="post" action="updatePwPro.jsp" id="registrationForm" name="userinput" onSubmit="return combineAndSubmit()">
    <table border="1" class="table-container">
        <tr>
            <td width="200">
                <label for="pw">비밀번호</label>
            </td>
            <td width="400">
                <input type="password" id="passwordField" name="pw" size="15" onblur="validatePassword(this, 'pwError')" style="width:210px">
                <button type="button" onclick="togglePasswordVisibility('passwordField')">비밀번호 표시</button><br/>
                <span id="pwError" style="color: red;"></span>
            </td>
        </tr>
        <tr>
            <td width="200">
                <label for="pw">비밀번호 확인</label>
            </td>
            <td width="400">
                <input type="password" id="password2" name="pw2" size="15" onblur="validatePassword(this, 'pwError2')" style="width:210px">
                <button type="button" onclick="togglePasswordVisibility('password2')">비밀번호 표시</button><br/>
                <span id="pwError2" style="color: red;"></span>
            </td>
        </tr>
    </table>
    <input type="submit" name="confirm" value="비밀번호 변경" />
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
   
    <style>
        .error-message {
            color: red;
            font-size: 12px;
        }
        .error-border { dd
            border: 2px solid red;
        }
    </style>
    <script type="text/javascript">
        function CV_checkIdPattern(str) {
            var idField = document.getElementById("id");
            var idError = document.getElementById("idError");

            if (str.length < 1) {
                idField.classList.add("error-border");
                idError.textContent = "아이디를 입력해주세요.";
                return false;
            } else {
                idField.classList.remove("error-bordeSr");
                idError.textContent = "";
                return true;
            }
        }

        function CV_checkPasswordPattern(str) {
            var pwField = document.getElementById("pw");
            var pwError = document.getElementById("pwError");
			
            if (str.length < 1) {
                pwField.classList.add("error-border");
                pwError.textContent = "비밀번호를 입력해주세요.";
                return false;
            } else {
                pwField.classList.remove("error-border");
                pwError.textContent = "";
                return true;
            }
        }

        function validateForm() {S
            var id = document.getElementById("id").value;
            var pw = document.getElementById("pw").value;
            var idValid = CV_checkIdPattern(id);
            var pwValid = CV_checkPasswordPattern(pw);
		
            if (!idValid || !pwValid) {
                return false;
            }
            // 서버로 데이터 전송
            return true;
            
        
        }
    </script>
</head>
<body>
   
   <form method="post" action="loginPro.jsp" onsubmit="return validateForm();">
    id : <input type="text" name="id" id="id"><br/>
    <span id="idError" class="error-message"></span><br/>
    pw : <input type="password" name="pw" id="pw"><br/>
    <span id="pwError" class="error-message"></span><br/>
    <%// 로그인 실패 시 메시지 또는 다른 동작 수행
    			//로그인이 실팼을경우   +              입력값이 null이지 않을경우 
   if(request.getParameter("loginFailed") != null     ){%>
    <span class="error-message">아이디나 비밀번호를 다시 확인해주세요.</span><br/>  <%}
    %>
    자동로그인<input type="checkbox" name="cauto" value="1"> <br>
    <input type="submit" value="Login">
</form>
    <button onclick="window.location='FindId.jsp'">아이디 찾기</button>
    <button onclick="window.location='FindPw.jsp'">비밀번호 찾기</button>
    <button onclick="window.location='memberForm.jsp'">회원가입하기</button>
    <button onclick="window.location='../views/main.jsp'">메인으로가기</button>
</body>
</html>
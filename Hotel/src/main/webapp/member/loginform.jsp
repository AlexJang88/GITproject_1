<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="resources/loginform.css" type="text/css">
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
	border:2px solid gray;
    position: relative; /* 상대 위치 설정 */
     border-radius: 10px; /* 테두리 반경을 10px로 설정합니다. */
     background-color: white;
}
.close {
    position: absolute; /* 상대 위치 설정 */
    top:-10px;
    right: 0;
    cursor: pointer;
    color: #198754; /* 녹색으로 색상 설정 */
    font-size: 25px; /* 원하는 크기로 설정 */
   
    text-align: center;
}
.close:hover{
 font-weight: bold;
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
                idField.classList.remove("error-border");
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

        function validateForm() {
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

        // 모달 열기
        function openModal(modalType) {
            var modal = document.getElementById("myModal");
            modal.style.display = "block";
            
            // 아이디 입력 필드와 에러 메시지 초기화
            var idField = document.getElementById("id");
            var pwField = document.getElementById("pw");
            var idError = document.getElementById("idError");
            var pwError = document.getElementById("pwError");
            idField.value = "";
            pwField.value = "";
            idError.textContent = "";
            pwError.textContent = "";
            
            // iframe의 src 속성 설정
            var iframe = modal.querySelector("iframe");
            if (modalType === "FindId") {
                iframe.src = "FindId.jsp";
            } else if (modalType === "FindPw") {
                iframe.src = "FindPw.jsp";
            }
        }

        // 모달 닫기
        function closeModal() {
            var modal = document.getElementById("myModal");
            modal.style.display = "none";
            closeButton.style.backgroundColor = "#ff0000"; // 클릭 시 빨간색으로 변경
        }
        
      
    </script>
</head>
<body>
    <div class="loginbox">
        <div class="loginbox_a">
            <div>
                <form method="post" action="loginPro.jsp" onsubmit="return validateForm();">
                    <table class="loginbox_b">
                        <tr>
                            <td class="tableline">
                                <div class="bookment">
                                    <a>
                                        BookStay에 온걸<br/> 환영해요  :)
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="id" id="id" placeholder="아이디를 입력하세요" style="width:384px; height:45px; border-radius: 8px; margin-top:10px;"><br/>
                                <span id="idError" class="error-message"></span><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력해주세요" style="width:384px; height:45px; border-radius: 8px; margin-top:10px;"><br/>
                                <span id="pwError" class="error-message"></span><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <% if (request.getParameter("loginFailed") != null) { %>
                                <span class="error-message">아이디나 비밀번호를 다시 확인해주세요.</span><br/>
                                <% } %>
                                <div>
                                    <input type="checkbox" name="cauto" value="1" class="autologin" id="autologin-checkbox">
                                    <a class="autotext">자동로그인</a>
                                    <input type="submit" value="Login"  class="logininput">
                                </div>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="button">
                <a href="javascript:void(0);" class="button_a" onclick="openModal('FindId')">아이디 찾기</a>&nbsp|<a href="javascript:void(0);" class="button_b" onclick="openModal('FindPw')">비밀번호 찾기</a>&nbsp|<a href="memberForm.jsp" class="button_c">회원가입</a>&nbsp|<a href="/BookStay/views/main.jsp" class="button_d"> 홈으로 가기</a>
            </div>
        </div>
    </div>
    <!-- 모달 창 HTML -->
    <div id="myModal" class="modal"  style="display: none;">
        <div class="modal-content">
            <span class="close" onclick="closeModal()" style=" cursor:pointer; accent-color: #198754; ">&times;</span>
            <!-- 아이디 찾기 및 비밀번호 찾기 페이지의 URL을 설정하세요 -->
            <iframe src="FindId.jsp" style="width: 400px; height: 500px; "  frameborder="0"></iframe>
        </div>
    </div>

    <div class="UjeansHypboy">
        <div id="logo">
            <a href="/BookStay/views/main.jsp">
                BookStay
            </a>
        </div>
        <div class="info">고객센터</div>
    </div>
</body>
</html>

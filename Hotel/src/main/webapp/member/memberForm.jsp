    <%@ page contentType="text/html; charset=UTF-8"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="hotel.bean.MemberDAO" %>
    <%@ page import="hotel.bean.MemberDTO" %>
    <%@ include file="color.jsp"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <html>
    <head>
        <title>회원가입</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <script language="JavaScript">
     
        
        
        function combineAndSubmit() {
            // 비밀번호 필드와 확인 필드를 가져옵니다.
            const passwordField = document.getElementById('passwordField').value;
            const password2 = document.getElementById('password2').value;

            // 비밀번호를 입력하지 않은 경우
            if (passwordField === "") {
                alert("비밀번호를 입력해주세요.");
                return; // 함수 종료
            }

            // 비밀번호 일치 여부 확인 ==기능실패
            if (passwordField !== password2) {
                alert("비밀번호가 일치하지 않습니다. 확인해주세요.");
                return; // 함수 종료
              
            }

            // 비밀번호가 일치하면 폼 제출 또는 다른 처리 코드를 추가하세요.
      

        
        	
        	
        	
            const emailInput = document.getElementById('email');
            const emaillist = document.getElementById('emaillist');

            if (emaillist.value === 'type') {
                // 사용자가 이메일을 수동으로 입력하도록 선택한 경우
                const emailtxt = document.getElementById('emailtxt').value;
                const combinedEmail = emailInput.value + "@" + emailtxt;
                emailInput.value = combinedEmail;
                
                
                
            }
        }
        // 이메일 목록에서 선택 시 이메일 입력 필드 업데이트
        function updateEmail() {
            const emaillist = document.getElementById('emaillist');
            const emailInput = document.getElementById('email');

            if (emaillist.value !== 'type') {
                // 스크롤에서 선택한 경우
                const selectedDomain = emaillist.value;
                emailInput.value = emailInput.value.split('@')[0] + selectedDomain;
            }
        }

        // 나머지 함수는 그대로 유지됩니다.
   
    

                // 아이디 중복 여부를 판단
                function openConfirmid(userinput) {
                    // 아이디를 입력했는지 검사
                    if (userinput.id.value == "") {
                        alert("아이디를 입력하세요");
                        return;
                    }
                    if (userinput.id.value == "guest") {
                        alert("사용이 불가한 아이디입니다");
                        return;
                    }
                    // url과 사용자 입력 id를 조합합니다.
                    url = "confirmId.jsp?id="+userinput.id.value ;
                    
                    // 새로운 윈도우를 엽니다.
                    open(url, "confirm",  "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
                }
                
            
             // 비밀번호 유효성 검사 및 비밀번호 모자이크 제어 함수
                function validatePassword(inputField, errorId) {
                    var pw = inputField.value;
                    var pwError = document.getElementById(errorId);

                    if (pw.length < 6 || pw.length > 12 || !/^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z]).{6,12}$/.test(pw)) {
                        pwError.textContent = "비밀번호는 6자 이상 12자 이하, 숫자, 특수문자 및 대문자를 포함해야 합니다.";
                        pwError.style.fontSize = "12px"; // 글자 크기를 12px로 설정
                        inputField.style.border = "1px solid red"; // 필드 테두리를 빨간색으로 변경
                    } else {
                        pwError.textContent = "";
                        inputField.style.border = "1px solid black"; // 필드 테두리를 원래 색으로 변경
                    }
                } 

                // 비밀번호 모자이크 해제/실행 함수
                function togglePasswordVisibility(inputFieldId) {
                    var passwordField = document.getElementById(inputFieldId);

                    if (passwordField.type === "password") {
                        passwordField.type = "text"; // 모자이크 해제
                    } else {
                        passwordField.type = "password"; // 다시 모자이크
                    }
                }
          
          
 
                 //아이디 중복체크         
                function checkIt() {
                    var form = document.userinput;
                    var id = form.id.value;
                    var pw = form.pw.value;
                    var name = form.name.value;
                    var email = form.email.value;
                    var birth = form.birth.value;
                    var addr = form.addr.value;
                    var pnum = form.pnum.value;

                    // 아이디 유효성 검사
                    if (id.length < 6 || id.length > 12 || !/^[a-zA-Z0-9]+$/.test(id) ) {
                        alert("아이디는 6자 이상 12자 이하, 영문과 숫자만 허용됩니다");
                        return false;
                    }

                    // 나머지 필드의 유효성 검사도 추가하세요.

                    
                    // 모든 조건을 통과한 경우 폼을 제출
                    return true;
                }
             
                 
                 //휴대폰번호 유효성 검사 
    	 function formatPhoneNumber(input) {
            // 휴대폰 번호에서 숫자만 남기고 다른 문자 제거
            var phoneNumber = input.value.replace(/\D/g, '');

            // 휴대폰 번호에 하이픈 추가
            if (phoneNumber.length >= 3 && phoneNumber.length <= 6) {
                phoneNumber = phoneNumber.replace(/(\d{3})(\d{0,4})/, '$1-$2');
            } else if (phoneNumber.length >= 7) {
                phoneNumber = phoneNumber.replace(/(\d{3})(\d{4})(\d{0,4})/, '$1-$2-$3');
            }

            input.value = phoneNumber;
        } 
                
                 
                 
  

                 
        </script>
    </head>
    <body>
    <form method="post" action="memberPro.jsp"  id="registrationForm" name="userinput"  onSubmit="return checkIt()">
        <table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
            <tr>
                <td colspan="2" height="39" align="center" >
                    <font size="+1"><b>회원가입</b></font>
                </td>
            </tr>
            <tr>
                <td width="200">
                    <label>아이디</label>
                </td>
                <td width="400">
                    <input type="text" name="id" size="10" maxlength="12" style="width:210px">
                    <input type="button" name="confirm_id" value="ID중복확인"
                        OnClick="openConfirmid(this.form)">
                </td>
            </tr>
            <tr>
                <td width="200">
                    <label for="pw">비밀번호</label>
                </td>
                <td width="400">
                    <input type="password" id="passwordField" name="pw" size="15" onblur="validatePassword(this, 'pwError')"  style="width:210px">
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
            <tr>
                <td width="200">
                    <label for="name">이름</label>
                </td>
                <td width="400">
                    <input type="text" name="name" size="15" maxlength="12" style="width:210px">
                </td>
            </tr>
            <tr>
                <td width="400">
                    <label for="email">이메일</label>
                </td>
	                <td width="400">
	  
			 
			    <input type="text" id="email" name="email" size="14" style="width:210px" />
			
			    <select class="box" id="emaillist" name="emaillist" onchange="updateEmail()">
			        <option value="type">직접 입력</option>
			        <option value="@naver.com">@naver.com</option>
			        <option value="@google.com">@google.com</option>
			        <option value="@hanmail.net">@hanmail.net</option>
			        <option value="@nate.com">@nate.com</option>
			        <option value="@kakao.com">@kakao.com</option>
			    </select>


	                </td>
            </tr>
            <tr>
                <td width="200">
                    <label for="birth">생년월일</label>
                </td>
                <td width="400">
                    <input type="date" name="birth" size="15" maxlength="12" required style="width:220px;">
                </td>
            </tr>
            <tr>
                <td width="200">
                    <label for="addr">주소</label>
                </td>
                <td width="400">
                    <input type="text" name="addr" size="15" class="form-control" required   style="width:210px" id="address">
                    <button type="button" class="btn" onclick="searchAddress()">주소검색</button>
                      <div id="result"></div>
                    
                </td>
            </tr>
            <tr>
                <td width="200">
                    <label for="pnum">휴대폰번호</label>
                </td>
                <td width="400">
                    <input type="text" name="pnum" size="15" required style="width:210px" maxlength="13" oninput="formatPhoneNumber(this);">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" >
                    <input type="submit" name="confirm" value="등   록"  onclick="combineAndSubmit()" />
                    <input type="reset" name="reset" value="다시입력">
                    <input type="button" value="가입안함" onclick="javascript:window.location='main.jsp'">
                    <input type="button" value="로그인하기" onclick="javascript:window.location='loginform.jsp'">
                    <input type="button" value="메인으로" onclick="javascript:window.location='../views/main.jsp'">
                </td>
            </tr>
        </table>
    </form>
    </body>
    </html>
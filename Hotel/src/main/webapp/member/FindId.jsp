<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="hotel.bean.MemberDAO"%>
<%@page import="hotel.bean.MemberDTO"%>
<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />

<jsp:setProperty property="*" name="dto" />

<% 
    request.setCharacterEncoding("UTF-8");
    String sid = (String)session.getAttribute("id");
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String pnum = request.getParameter("pnum");
%>

<link rel="stylesheet" href="resources/FindId.css" type="text/css">

<script>
function combineAndSubmit() {
    const passwordField = document.getElementById('passwordField').value;
    const password2 = document.getElementById('password2').value;

    if (passwordField === "") {
        alert("비밀번호를 입력해주세요.");
        return;
    }

    if (passwordField !== password2) {
        alert("비밀번호가 일치하지 않습니다. 확인해주세요.");
        return;
    }

    const emailInput = document.getElementById('email');
    const emaillist = document.getElementById('emaillist');

    if (emaillist.value === 'type') {
        const emailtxt = document.getElementById('emailtxt').value;
        const combinedEmail = emailInput.value + "@" + emailtxt;
        emailInput.value = combinedEmail;
    }
}

function updateEmail() {
    const emaillist = document.getElementById('emaillist');
    const emailInput = document.getElementById('email');

    if (emaillist.value !== 'type') {
        const selectedDomain = emaillist.value;
        emailInput.value = emailInput.value.split('@')[0] + selectedDomain;
    }

}

function openConfirmid(userinput) {
    if (userinput.id.value == "") {
        alert("아이디를 입력하세요");
        return;
    }
    if (userinput.id.value == "guest") {
        alert("사용이 불가한 아이디입니다");
        return;
    }

    url = "confirmId.jsp?id=" + userinput.id.value;

    open(url, "confirm", "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
}

function checkIt() {
    var form = document.userinput;
    var id = form.id.value;
    var pw = form.pw.value;
    var name = form.name.value;
    var email = form.email.value;
    var birth = form.birth.value;
    var addr = form.addr.value;
    var pnum = form.pnum.value;

    // 필요한 유효성 검사를 수행하세요.

    if (pnum === "") {
        alert("휴대폰 번호를 입력해주세요.");
        return;
    }
}

function formatPhoneNumber(input) {
    var phoneNumber = input.value.replace(/\D/g, '');

    if (phoneNumber.length >= 3 && phoneNumber.length <= 6) {
        phoneNumber = phoneNumber.replace(/(\d{3})(\d{0,4})/, '$1-$2');
    } else if (phoneNumber.length >= 7) {
        phoneNumber = phoneNumber.replace(/(\d{3})(\d{4})(\d{0,4})/, '$1-$2-$3');
    }

    input.value = phoneNumber;
}

</script>

<form action="FindIdPro.jsp" method="post" id="registrationForm" name="userinput">
    <table>
        <tr>
            <td class="hiddenshow"></td>
            <td height="39" align="center" id="fontment">
                <font size="5">아이디를 찾기 위해서 <br/>필요한 정보를 입력해주세요</font>
            </td>
            <td></td>
        </tr>

        <tr>
            <td width="200" class="hiddenshow">
                <label for="name">이름</label>
            </td>
            <td width="400">
                <input type="text" placeholder="이름을 입력하세요" name="name" size="15" class="inputText" maxlength="12" required>
            </td>
            <td></td>
        </tr>

        <tr>
            <td width="400" class="hiddenshow">
                <label for="email">이메일</label>
            </td>
            <td width="400">
                <input type="text" id="email" name="email" size="14" placeholder="이메일을 입력하세요" class="inputText" required />
                <select class="box" id="emaillist" name="emaillist" onchange="updateEmail()">
                    <option value="type">직접 입력</option>
                    <option value="@naver.com">@naver.com</option>
                    <option value="@google.com">@google.com</option>
                    <option value="@hanmail.net">@hanmail.net</option>
                    <option value="@nate.com">@nate.com</option>
                    <option value="@kakao.com">@kakao.com</option>
                </select>
            </td>
            <td></td>
        </tr>

        <tr>
            <td width="200" class="hiddenshow">
                <label for="pnum">휴대폰번호</label>
            </td>
            <td width="400">
                <input type="text" name="pnum" placeholder="휴대폰번호를 입력하세요" size="15" required class="inputText" maxlength="13" oninput="formatPhoneNumber(this);">
            </td>
            <td></td>
        </tr>

        <tr>
            <td class="hiddenshow"></td>
            <td>
                <input type="submit" name="confirm" value="아이디찾기" class="sumitinput" onclick="combineAndSubmit()" />
            </td>
            <td></td>
        </tr>
    </table>
</form>

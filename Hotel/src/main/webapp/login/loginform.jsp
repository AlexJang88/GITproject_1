<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  request.setCharacterEncoding("UTF-8"); %>
<h1>반갑다 로그인 해라 </h1>

<form method="post" action ="loginPro.jsp">

   id : <input type="text" name="id"><br />
   
   pw : <input type="password" name="pw"><br />
   
   자동로그인<input type="checkbox" name="cauto" value="1"/> <br>
      <input type="submit" value="Login"/>
</form>


<button onclick="window.location='../login/loginform.jsp'">아이디 | 비밀번호 찾기 </button>
 <button onclick="window.location='../member/memberForm.jsp'">회원가입하기</button>
 
 
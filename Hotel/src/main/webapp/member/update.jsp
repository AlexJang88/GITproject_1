<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>

<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />

<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />
<jsp:setProperty property="*" name="dto" />
<%
String sid = (String) session.getAttribute("sid");
dto.setId(sid);

// MemberDTO 객체에서 정보를 가져와서 필드에 저장
	 String id = request.getParameter("pw");
	 String email = request.getParameter("email");
    String name = request.getParameter("name");
    String birth = request.getParameter("birth");
    String addr = request.getParameter("addr");
    String pnum = request.getParameter("pnum");

%>

<form method="post" action="updatePro.jsp">
    <table border="1" class="table-container">
        <tr>
            <td>변경 할 비밀번호</td>
            <td><input type="password" name="pw" ></td>
        </tr>
        <tr>
            <td>변경 할 이메일</td>
            <td><input type="email" name="email" ></td>
        </tr>
        <tr>
            <td>변경할 생년월일</td>
            <td><input type="date" name="birth" ></td>
        </tr>
        <tr>
            <td>변경할 주소</td>
            <td><input type="text" name="addr" ></td>
        </tr>
        <tr>
            <td>변경할 전화번호</td>
            <td><input type="text" name="pnum" ></td>
        </tr>
        <tr>
            <td></td>
            <td><button type="submit">수정</button></td>
        </tr>
    </table>
</form>


</body>
</html>
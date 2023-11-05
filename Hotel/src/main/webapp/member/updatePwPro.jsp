<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>

<jsp:useBean id="member" class="hotel.bean.MemberDTO">
</jsp:useBean>

<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />
<jsp:setProperty property="*" name="dto" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 변경 결과</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
    String sid = (String) session.getAttribute("sid");
    dto.setId(sid);
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String pnum = request.getParameter("pnum");
    // 비밀번호를 입력 폼에서 받아옴
    String pw = request.getParameter("pw");

    member.setPw(pw);

    MemberDAO manager = MemberDAO.getInstance();
    int updateResult = manager.updateMember(member);
%>

<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr>
    <td height="39" align="center"></td>
  </tr>
  <tr>
    <td align="center">
      <p>
        <script>
            <% if (updateResult == 1) { %>
                alert("비밀번호 변경이 완료되었습니다.");
            <% } else { %>
                alert("비밀번호 변경 중에 오류가 발생했습니다.");
            <% } %>
        </script>
      </p>
    </td>
  </tr>
  <tr>
    <td>
      <form>
        <input type="button" value="메인으로" onclick="window.location='../views/main.jsp'">
      </form>
    </td>
  </tr>
</table>
</body>
</html>
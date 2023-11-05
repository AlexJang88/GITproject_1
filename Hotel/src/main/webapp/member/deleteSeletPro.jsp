<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hotel.bean.MemberDAO" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.QuitMemberDTO" %>

<jsp:useBean id="dao" class="hotel.bean.MemberDAO"/>
<jsp:useBean id="dto" class="hotel.bean.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String birth = request.getParameter("birth");
String addr = request.getParameter("addr");
String pnum = request.getParameter("pnum");
String joindate = request.getParameter("joindate");

MemberDTO member = new MemberDTO();
member.setId(id);
member.setPw(pw);

MemberDAO manager = MemberDAO.getInstance();
int delete = manager.delete(member);

if (delete == 0) {
    // 삭제가 성공한 경우
    QuitMemberDTO quitMember = new QuitMemberDTO();
    quitMember.setId(member.getId());
    quitMember.setPw(member.getPw());
    

    int insertResult = manager.insertquitMember(quitMember);

    if (insertResult > 0) {
%>
    <script>
        alert('계정 삭제 및 정보 저장이 완료되었습니다.');
        window.location.href = '/BookStay/member/quitmemberInsert.jsp'; // 이동할 페이지
    </script>
<%
    } else {
%>
    <script>
        alert('계정 삭제는 성공하였으나 정보 저장에 실패하였습니다.');
        window.location.href = '/BookStay/member/deleteSelet.jsp';
    </script>
<%
    }
} else {
%>
    <script>
        alert('계정 삭제에 실패하였습니다.');
        window.location.href = '/BookStay/member/deleteSelet.jsp';
    </script>
<%
}
%>
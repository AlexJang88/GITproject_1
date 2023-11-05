<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>

<jsp:useBean id="dao" class="hotel.bean.MemberDAO" />
<jsp:useBean id="dto" class="hotel.bean.MemberDTO" />

<jsp:setProperty property="*" name="dto" />
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Password Recovery</title>
    <style>
        /* 본문에 제공된 CSS 스타일 추가 */
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
        }

        form {
            margin: 20px;
        }

        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 15px;
            font-size: 14px;
            color: #333;
            text-align: center;
        }

        th, td {
            padding: 10px;
        }


  	 .fontbutton{
			text-decoration:none;
          	text-align:center;
            color: black;
            padding: 10px 20px;
            cursor: pointer;
		margin-bottom:5px;
	
        }

       .fontbutton:hover {
				font-weight: bold;
				
        }

        #memberMessage {
            font-weight: bold;
            font-size: 18px;
            margin: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%
   	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pnum = request.getParameter("pnum");
     
    %>
    <div id="memberMessage">
        회원님의 아이디는 <%=request.getParameter("id")%> 입니다
    </div>
    <form>
        <table border="1">
            <tr>
                <td>
                    <a class="fontbutton" href="loginform.jsp">로그인하기</a> <br/>
                    <a  class="fontbutton" href="FindPw.jsp">비밀번호찾기</a> <br/>
                    <a class="fontbutton" href="/BookStay/views/main.jsp">메인페이지</a> <br/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

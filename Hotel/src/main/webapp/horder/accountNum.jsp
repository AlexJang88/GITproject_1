<%@page import="hotel.bean.HOrderDTO"%>
<%@page import="hotel.bean.HOrderDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
int renum = Integer.parseInt(request.getParameter("renum"));
HOrderDAO dao = new HOrderDAO();
HOrderDTO dto = dao.getOrder(renum);
String state="";
if(dto.getState()==0){
	state="입금중";
}else if(dto.getState()==1){
	state="입금완료";
}
%>
<table>
	<tr>
		<td>고객명</td>
		<td><%=dto.getName() %></td>
	</tr>
	<tr>
		<td>체크인</td>
		<td></td>
	</tr>
	<tr>
		<td>체크아웃</td>
		<td></td>
	</tr>
	<tr>
		<td>예약인원</td>
		<td>어른 : <%=dto.getAdult() %>명/ 아이 : <%=dto.getKid() %>명</td>
	</tr>
	<tr>
		<td>결제금액</td>
		<td><%=dto.getAdult()%>원</td>
	</tr>
	<tr>
		<td>결제방식</td>
		<td><%=dto.getPaytype() %></td>
	</tr>
	<tr>
		<td>진행상태</td>
		<td><%=state %></td>
	</tr>
</table>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  계좌번호 확인
</button>
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">계좌번호</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       계좌번호(TEST)<br/>
       은행 : 가상은행 <br/>
       계좌번호 : 111-2222-3333
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">확인</button>
      </div>
    </div>
  </div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hotel.bean.hotelDTO" %>
<%@ page import="hotel.bean.hotelDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="list_menu.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
	String id="";
	if(session.getAttribute("sid")==null){
		id="guest";
	}else{
		id=(String)session.getAttribute("sid");
	}
	
	String title1 = request.getParameter("title");
	String checkin1 = request.getParameter("checkin");
	String checkout1 = request.getParameter("checkout");
	int adult1 = Integer.parseInt(request.getParameter("adult"));
	int kid1 = Integer.parseInt(request.getParameter("kids"));
	int sel1 = Integer.parseInt(request.getParameter("select"));
	int room1 = Integer.parseInt(request.getParameter("room"));
	String check1 = request.getParameter("check");
	int[] roomValue1 = new int[rortlf];
	   int[] kidsValue1 = new int[rortlf];
	   int[] test = new int[rortlf];
	   String val="";
	   for (int i = 0; i < rortlf; i++) {
	      String adultParam = request.getParameter("a" + (i + 1));
	       String kidsParam = request.getParameter("k" + (i + 1));
	       
	       int adultValues = 2; 
	       int kidsValuee = 0; 

	       if (adultParam != null) {
	           adultValues = Integer.parseInt(adultParam);
	       }

	       if (kidsParam != null) {
	           kidsValuee = Integer.parseInt(kidsParam);
	       }

	       roomValues += adultValues;
	       kidsValues += kidsValuee;
	       
	       test[i] = adultValues + kidsValuee;
	       
	       roomValue1[i] = adultValues;
	       kidsValue1[i] = kidsValuee; 
	       val += "&a" + (i+1) + "=" + roomValue1[i] + "&k" + (i+1) + "=" + kidsValue1[i];
	   }
	
	int pageSize = 10;
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum = "1";
	}
	int cPage = Integer.parseInt(pageNum);
	int start = (cPage - 1) * pageSize + 1;
	int end = cPage * pageSize;
	
	String url = "&title=" + title1 + "&checkin=" + checkin1 + "&checkout=" + checkout1 + "&adult=" + adult1 + "&kids=" + kid1 + 
			 "&room=" + room1 + "&select=" + sel1 + "&check=" + check1;
	//int category= 0;  
	hotelDAO dao = new hotelDAO();
	ArrayList<hotelDTO> list = dao.hotelList(sel1, check1, title1, checkin1, checkout1, roomValue1, kidsValue1, start, end); 
	int cnt = dao.count(title1);
	int count = dao.count(title1, check1, checkin1, checkout1, roomValue1, kidsValue1);
	
	ArrayList<hotelDTO> block = dao.HotelBlock(checkin1, checkout1); 
	StringBuilder block1 = new StringBuilder();
	int size = block.size(); // block의 크기를 미리 계산
	
	for (int i = 0; i < size; i++) {
	    hotelDTO dto = block.get(i);
	    block1.append(String.valueOf(dto.getRef()));
	    if (i < size - 1) {
	        block1.append(",");
	    }
	}
	String block2 = block1.toString();
%>
<div id="con_top">
<div id="content">
<input type="hidden" id="vel"/>
<input type="hidden" id="block" value="<%=block2%>"/>
<div id="all_h">
<form id="option1" method="post">
	<div id="h_sel">
	<input type="hidden" name="title1" value="<%= title1%>">
	<input type="hidden" name="checkin1" value="<%= checkin1%>">
	<input type="hidden" name="checkout1" value="<%= checkout1%>">
	<input type="hidden" name="adult1" value="<%= adult1%>">
	<input type="hidden" name="kid1" value="<%= kid1%>">
	<input type="hidden" name="sel1" value="<%= sel1%>">
	<input type="hidden" name="c1" value="<%= check1 %>">
		<select id="hselect">
			<option value="1">최신순</option>
			<option value="2">인기순</option>
			<option value="3">가격높은순</option>
			<option value="4">가격낮은순</option>
			<option value="5">평점순</option>
		</select>
	</div>
</form>

<div class="grid">
<div class="box">
<form id="option" method="post">
	<div id="h_chk">
		<input type="hidden" name="title1" value="<%= title1%>">
		<input type="hidden" name="checkin1" value="<%= checkin1%>">
		<input type="hidden" name="checkout1" value="<%= checkout1%>">
		<input type="hidden" name="adult1" value="<%= adult1%>">
		<input type="hidden" name="kid1" value="<%= kid1%>">
		<input type="hidden" name="sel1" value="<%= sel1%>">
		<input type="hidden" name="c1" value="<%= check1 %>">
		<p>숙소 유형</p>
		<ul>
			<li><input type="checkbox" id="checkAll" value="0"/>전체</li>
			<li><input type="checkbox" class="chk" name="chk"  value="1" />호텔</li>
			<li><input type="checkbox" class="chk" name="chk" value="2" />리조트</li>
			<li><input type="checkbox" class="chk" name="chk" value="3" />모텔</li>
			<li><input type="checkbox" class="chk" name="chk" value="4" />기타숙소</li>
		</ul>
	</div>
</form>
</div>
<div class="box" id="box2">
<div id="cnt"><%=cnt%>개 중 예약 가능 <b><%=count%></b> 개</div>
<hr>
<div id="sel1" class="sel"> 
<%
   for(hotelDTO dto : list){
      Integer check = dao.checkRoom(block2, dto.getNum());
      String[] img = dto.getImg().split(",");
      ArrayList<hotelDTO> li2 = dao.getContent(dto.getRef());
      boolean zt = dao.getTest(li2, test, room1);
%>    
   <div class="list_c">
   <input type="hidden" value="<%=check %>"/>
   <%
      if (check >= room1 || block2 == ""){
          
   %>
   <a href="/BookStay/hotel/hotelContent.jsp?title=<%=dto.getTitle()%>&ref=<%=dto.getRef()%>&block=<%=block2%>
   &checkin=<%=checkin1%>&checkout=<%=checkout1%>&adult=<%=adult1%>&kids=<%=kid1%>&room=<%=room1%>
   &select=<%=sel1%>&check=<%=check1%><%=val%>">
      <div class="list_s">
      <div>
       <img src="/BookStay/upload/<%=img[0]%>"/>
       </div>
       <div class="mar">
       <div class="title"><%= dto.getTitle() %></div>
       <div class="addr"><%= dto.getAddress() %></div>
       <div class="qnrktp">세금 및 부가세 불포함</div>
       <div class="apr"><%= dto.getPrice() %>원</div>
       </div>
       <%
       if(zt){
       %>
       <div class="rBtn"><button type="button" class="btn btn-success">예약</button></div>
       <% }else{%>
       <div><button type="button" class="btn btn-warning">예약 불가</button></div>
       <%} %>
      </div>
   </a>
		<%
    	if(id.equals("admin")){
    	%>	
    		<div><button type="button" onclick="window.location.href='hotelDelete.jsp'" class="btn btn-danger">삭제</button></div>
    	<%	
    	}
    	%>
    	<hr>
	<%}else{ %>
		<%
    	if(id.equals("admin")){
    	%>	
    	<a href="/BookStay/hotel/hotelContent.jsp?title=<%=dto.getTitle()%>&ref=<%=dto.getRef()%>&block=<%=block2%>">
    		<div>
	    	<img src="/BookStay/upload/<%= dto.getImg() %>" style="width:100px;"/>
	    	<%= dto.getTitle() %>
	    	<%= dto.getAddress() %>
	    	<%= dto.getPrice() %>
	    	<div><button type="button" class="btn btn-warning">예약 불가</button></div>
			</div>
			</a>
    		<button type="button" onclick="window.location.href='hotelDelete.jsp'" class="btn btn-danger">삭제</button>
    	<%	
    	}else{
    	%>
		<div class="list_s">
    	<img src="/BookStay/upload/<%= dto.getImg() %>" style="width:100px;"/>
    	<%= dto.getTitle() %>
    	<%= dto.getAddress() %>
    	<%= dto.getPrice() %>
    	<div><button type="button" class="btn btn-warning">예약 불가</button></div>
		</div>
		<%}%>
	</div>
<%}}%>
</div>
</div>
</div>
</div>
</div>
</div>
<%
	if(count > 0){
		int pageCnt = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = (int)(cPage / 10)* 10 + 1;
		int pageB = 10;
		int endPage = startPage + pageB - 1;
		if(endPage > pageCnt){
			endPage = pageCnt;
		}
		%>
		<div id="page">
		<%if(startPage > 10){%>
			<a href="hlist.jsp?pageNum=<%=startPage-10%><%=url%><%=val%>"><button class="button">이전</button></a>
		<%}
		for(int i = startPage; i <= endPage; i++){
		%> <a href="hlist.jsp?pageNum=<%=i %><%=url%><%=val%>"><button class="button"><%=i %></button></a>	
		<%}
		if(endPage < pageCnt){
		%>	<a href="hlist.jsp?pageNum=<%=startPage+10 %><%=url%><%=val%>"><button class="button">다음</button></a>	
		<%}
	}
%>
		</div>	
		</div>

<script>
	var sel1Input = document.querySelector('input[name="sel1"]');
	var hselect = document.getElementById("hselect");
	
	var sel1Value = sel1Input.value;
	
	for (var i = 0; i < hselect.options.length; i++) {
	 if (hselect.options[i].value === sel1Value) {
	     hselect.options[i].selected = true;
	     break;
	 }
	}
</script>
<script>
	val =""; 
	var vel = document.getElementById('vel');
	var tcnt = document.getElementById('tcnt').value;
	for(var i= 1; i <= tcnt; i++){
		var r = document.getElementById('r' + i).value;
			var k = document.getElementById('k' + i).value;
		val += '&a' + i + '=' + r + '&k' + i + '=' + k;
	}
	vel.value = val;
</script>
<script>
var ot = document.getElementById("option");
var hselect = document.getElementById("hselect");
var tInput = ot.querySelector('input[name="title1"]')
var ciInput = ot.querySelector('input[name="checkin1"]')
var coInput = ot.querySelector('input[name="checkout1"]')
var aInput = ot.querySelector('input[name="adult1"]')
var kInput = ot.querySelector('input[name="kid1"]')
var checkAll = document.getElementById("checkAll");
var checkboxes = document.querySelectorAll(".chk");
var vel = document.getElementById('vel').value;
var c1Input = document.querySelector('input[name="c1"]');

var c1Value = c1Input.value.split(','); // c1의 value를 쉼표로 분리
checkboxes.forEach(function(checkbox) {
    if (c1Value.includes(checkbox.value)) { // 일치하는 경우에만 checked
        checkbox.checked = true;
    }
});

checkAll.addEventListener("click", function() {
	checkAll.checked = true;
    checkboxes.forEach(function(checkbox) {
        checkbox.checked = checkAll.checked;
    });
});

function updateCheckAll() {
    checkAll.checked = [...checkboxes].every(checkbox => checkbox.checked);
}

// 초기 로드 시 .chk 버튼들을 확인하고, 전체 버튼 업데이트
checkboxes.forEach(checkbox => {
    checkbox.addEventListener('change', updateCheckAll);
    updateCheckAll();
});

// 전체 버튼 클릭 시, .chk 버튼들의 checked 상태를 동기화
checkAll.addEventListener('change', () => {
    checkboxes.forEach(checkbox => {
        checkbox.checked = checkAll.checked;
    });
});

function updateSelection() {
    var selectedCheckboxes = Array.from(checkboxes).filter(function(checkbox) {
        return checkbox.checked;
    });

    var selectedValues = selectedCheckboxes.map(function(checkbox) {
        return checkbox.value;
    });

    var tvalue = tInput.value;
    var civalue = ciInput.value;
    var covalue = coInput.value;
    var avalue = aInput.value;
    var kvalue = kInput.value;
    var sel = "<%=sel1%>";
    var room = "<%=room1%>";

    ot.action = 'hlist.jsp?title=' + tvalue + '&checkin=' + civalue + '&checkout=' + covalue
        + '&adult=' + avalue + '&kids=' + kvalue + '&room=' + room + '&select=' + sel + '&check=' + selectedValues + vel;
    ot.submit();
}

checkAll.addEventListener("click", function() {
    if (checkAll.checked) {
        var allValues = Array.from(checkboxes).map(function(checkbox) {
            return checkbox.value;
        });
        selectedValues = allValues;
    } else {
        selectedValues = [];
    }
    updateSelection();
});

checkboxes.forEach(function(checkbox) {
    checkbox.addEventListener("click", updateSelection);
});
</script>
<!--<script src="/BookStay/resources/js/checkbox.js"></script> -->
<script>
	const select1 = document.getElementById("hselect");
	var sel = document.querySelectorAll(".sel");

	select1.addEventListener("change", function() {
	      const selectedOption = select1.value;
	      sel.forEach(content => {
	        content.style.display = "none";
	      });
	      document.getElementById(selectedOption).style.display = "block";
	    });
</script>
<script>
	var ot = document.getElementById("option");
	var hselect = document.getElementById("hselect");
	var tInput = ot.querySelector('input[name="title1"]')
	var ciInput = ot.querySelector('input[name="checkin1"]')
	var coInput = ot.querySelector('input[name="checkout1"]')
	var aInput = ot.querySelector('input[name="adult1"]')
	var kInput = ot.querySelector('input[name="kid1"]')
	var vel = document.getElementById('vel').value;
	
	hselect.addEventListener("change", function(){
		var tvalue = tInput.value;
		var civalue = ciInput.value;
		var covalue = coInput.value;
		var avalue = aInput.value;
		var kvalue = kInput.value;
		var cvalue = "<%=check1%>";
		var room = "<%=room1%>";
		var selectedValue = hselect.value;
        ot.action = 'hlist.jsp?title=' + tvalue + '&checkin=' + civalue + '&checkout=' + covalue
  	  + '&adult=' + avalue + '&kids=' + kvalue  + '&room=' + room + '&select=' + selectedValue + '&check=' + cvalue + val; 
        ot.submit();
	});
		var options = hselect.options;
		for (var i = 0; i < options.length; i++) {
		    if (options[i].value === selectedValue) {
		        options[i].selected = true;
		        break; // 선택 후 반복 종료
		    }
		}
</script>
 
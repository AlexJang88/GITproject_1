<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hotel.bean.HOrderDTO" %>
<%@ page import="hotel.bean.HOrderDAO" %>  
<%@ page import="hotel.bean.MemberDTO" %>
<%@ page import="hotel.bean.MemberDAO" %>
<%@ page import="hotel.bean.hotelDTO" %>
<%@ page import="hotel.bean.hotelDAO" %>
<%@ page import="java.util.List" %>   
<%@ page import="java.util.ArrayList" %>
<%
	List<HOrderDTO> reservationList = new HOrderDAO().getOrdersAdmin();
	MemberDAO memberDAO = MemberDAO.getInstance();
	hotelDAO dao = new hotelDAO();
	ArrayList<hotelDTO> cal = dao.calendar(); 
	
%>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

<!-- Bootstrap JavaScript 및 Popper.js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>calendar</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            locale: 'ko', // 한국어 설정
            headerToolbar: {
                start: "",
                center: "prev title next",
                end: 'dayGridMonth,dayGridWeek,dayGridDay'
            },
            selectable: true,
            droppable: true,
            editable: false,
            events: [
                <% for (hotelDTO dto : cal) { %>
                {
                    title: '<%= dto.getTitle() %>',
                    start: '<%= dto.getContent() %>',
                    end: '<%= dto.getContact() %>',
                    // 추가: 클릭 이벤트를 설정
                       extendedProps: {
                            reservationId: '<%= dto.getContact() %>',
                            kidmax: '<%= dto.getKidmax() %>',
                            content: '<%= dto.getContent() %>',
                            service: '<%= dto.getService() %>',
                            adultmax: '<%= dto.getAdultmax() %>'
                            
                    },
                },
                <% } %>
            ],
            eventClick: function(info) {
                // 클릭한 이벤트의 title 및 추가 정보 가져오기
                var eventTitle = info.event.title;
                var additionalInfo = 'Adult Max: ' + info.event.extendedProps.adultmax + '<br>' +
                'Kid Max: ' + info.event.extendedProps.kidmax + '<br>' +
                'Service: ' + info.event.extendedProps.service + '<br>' +
                'Content: ' + info.event.extendedProps.content;
                
                // 모달 창 열기
                $('#myModal').modal('show');
                
                // 모달 타이틀 및 본문에 정보 설정
                $('.modal-title').text(eventTitle);
                $('.modal-body').html(additionalInfo);
            },
        });
        calendar.render();
    });

    </script>
    <style>
        #calendarBox{
            width: 70%;
            padding-left: 15%;
        }

    </style>
</head>
<body>
    <div id="calendarBox">
        <div id="calendar"></div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modal">
      		
        <!-- 모달 내용을 추가할 수 있습니다. -->
        <!-- 예: 클릭한 이벤트의 내용을 여기에 표시 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>
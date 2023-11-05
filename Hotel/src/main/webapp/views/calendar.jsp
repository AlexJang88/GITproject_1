<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="hotel.bean.hotelDTO" %>
<%@ page import="hotel.bean.hotelDAO" %>
<%@ page import="java.util.ArrayList" %>
<%
	hotelDAO dao = new hotelDAO();
	ArrayList<hotelDTO> cal = dao.calendar(); 
%>
<!DOCTYPE html>
<html>
<head>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.0/main.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        #calendarBox {
            width: 60%;
            margin-left: 15%;
            position: relative;
        }
        .fc-day, .fc-event {
            cursor: pointer;
            text-decoration: none;
            color:black;
        }
        .fc-col-header-cell-cushion, .fc-daygrid-day-number{
        	text-decoration: none;
            color:black;
        } 
        #btn1{
        	position: absolute;
            top: 40px; 
            left: 0; 
        }
        #btn{
        	display: none;
        	border: none;
        	background-color: #2C3E50;
        	color: white;
        	height: 28px;
        }

    </style>
</head>
<body>
    <div id="calendarBox">
	<div id="btn1"><button id="btn" style="display: none;">Month</button></div>
        <div id="calendar"></div>
    </div>

    <!-- 모달 창 -->
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- 모달 내용을 추가할 수 있습니다. -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                locale: 'ko', // 한국어 설정
                headerToolbar: {
                	 start: 'prev', 
                     center: 'title', 
                     end: 'next'
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
                    var eventTitle = info.event.title;
                    var additionalInfo = 'Adult Max: ' + info.event.extendedProps.adultmax + '<br>' +
                                        'Kid Max: ' + info.event.extendedProps.kidmax + '<br>' +
                                        'Service: ' + info.event.extendedProps.service + '<br>' +
                                        'Content: ' + info.event.extendedProps.content;

                    $('#myModal').modal('show');

                    $('.modal-title').text(eventTitle);
                    $('.modal-body').html(additionalInfo);
                },
                dateClick: function(info) {
                    calendar.changeView('dayGridDay', info.dateStr);
                    document.getElementById('btn').style.display = 'block';
                },
            });
            
            calendar.render();
            document.getElementById('btn').addEventListener('click', function() {
                calendar.changeView('dayGridMonth');
                document.getElementById('btn').style.display = 'none';
            });
        });
    </script>
</body>
</html>
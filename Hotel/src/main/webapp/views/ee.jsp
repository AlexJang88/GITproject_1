<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form method="post" id="searchForm">
    <input type="text" id="text" name="title"/>
    <input type="text" id="date" name="datetimes"/>
    <input type="hidden" id="start" name="checkin"/>
    <input type="hidden" id="end" name="checkout"/>
    <input type="button" value="객실 1개, 인원 2명" id="popBtn"/>
    <div class="popup" id="popup">
        <h5>객실</h5>
        <p>성인 <input type="number" name="adult" value="2"/></p><br>
        <p>어린이 (만 17세 미만) <input type="number" name="kids" value="0"/></p>
        <input type="button" id="cadd" value="객실 추가"/>
        <input type="button" id="cBtn" onclick="updateButtonValue()" value="적용"/>
    </div>
    <div id="roomCount">총 객실 수: 1</div>
    <button id="sub" type="submit" class="btn btn-success">검색하기</button>
    <input type="hidden" name="category" value="0"/>
</form>

<script>
// 객실 추가 및 삭제를 위한 JavaScript
let roomCount = 1; // 초기 객실 개수

function updateRoomCount() {
    document.getElementById('roomCount').textContent = `총 객실 수: ${roomCount}`;
}

function addRoom() {
    roomCount++; // 객실 개수 증가
    updateRoomCount();

    const popup = document.getElementById('popup');
    const newRoom = document.createElement('div');
    newRoom.innerHTML = `<h5>객실 ${roomCount}</h5>
        <p>성인 <input type="number" name="adult" value="2"/></p><br>
        <p>어린이 (만 17세 미만) <input type="number" name="kids" value="0"/></p>
        <input type="button" id="removeRoom" value="객실 삭제"/>`;
    popup.appendChild(newRoom);
}

function removeRoom() {
    if (roomCount > 1) {
        const popup = document.getElementById('popup');
        const lastRoom = popup.lastChild;
        popup.removeChild(lastRoom);
        roomCount--; // 객실 개수 감소
        updateRoomCount();
    }
}

document.getElementById('cadd').addEventListener('click', addRoom);
document.getElementById('popup').addEventListener('click', function (event) {
    if (event.target.id === 'removeRoom') {
        removeRoom();
    }
});
</script>
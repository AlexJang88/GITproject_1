var count = 1;
var totalAdults = 0;
var totalKids = 0;
  var cnt = document.getElementById('tcnt');
  var tcnt = cnt.value;
  if(tcnt == 0){
	  count = 1;  
  }else{
	  count = tcnt;
  }

document.getElementById('cadd').addEventListener('click', function() {
  var popup = document.getElementById('pop');
  count++;

  var newContent = document.createElement('div');
  newContent.id = `pop${count}`;
  newContent.innerHTML = `
  	<hr>
    <h5>객실${count}</h5>
    <p>성인 <input type="number" id="adult${count}" name="adult${count}" value="2" max="4" min="1"/></p><br>
    <p>어린이 (만 17세 미만) <input type="number" id="kids${count}" name="kids${count}" value="0" max="4" min="0"/></p>
    <button type="button" class="btn btn-danger cRemove">객실 삭제</button>
    <hr>
  `;

  popup.appendChild(newContent);
  
  newContent.querySelector('.cRemove').addEventListener('click', function() {
    popup.removeChild(newContent);
    count -= 1;

    var remainingRooms = popup.getElementsByClassName('cRemove');
    for (var i = 0; i < remainingRooms.length; i++) {
      var room = remainingRooms[i];
      var roomDiv = room.closest('div');
      var h5 = roomDiv.querySelector('h5');
      var inputs = roomDiv.querySelectorAll('input');
      var newIdSuffix = i + 2;

      h5.textContent = `객실${newIdSuffix}`;

      for (var input of inputs) {
        var oldId = input.id;
        input.id = oldId.replace(/\d+$/, newIdSuffix);
        input.name = oldId.replace(/\d+$/, newIdSuffix);
      }
    }
  });
});
document.querySelectorAll('.cRemove').forEach(function(button) {
  button.addEventListener('click', function() {
	count -= 1;
    var parent = this.closest('div');
    parent.parentNode.removeChild(parent);

    var remainingRooms = document.querySelectorAll('.cRemove');
    remainingRooms.forEach(function(room, index) {
      var roomDiv = room.closest('div');
      var h5 = roomDiv.querySelector('h5');
      var inputs = roomDiv.querySelectorAll('input');
      var newIdSuffix = index + 2;

      h5.textContent = `객실${newIdSuffix}`;

      inputs.forEach(function(input) {
        var oldId = input.id;
        input.id = oldId.replace(/\d+/, newIdSuffix);
        input.name = oldId.replace(/\d+/, newIdSuffix);
      });
    });
  });
});
var val="";
var totalror;
var url="";
  var totalAdults = 0;
  var totalKids = 0;
  var adultValues = [];
  var kidsValues = [];

document.getElementById('cad').addEventListener('click', function() {
  var rortlf = document.getElementById('rortlf');
  var popBtn = document.getElementById('popBtn');

  var p = document.getElementById('p');
  p.innerHTML = '';
  url="";
  for (var i = 1; i <= count; i++) {

    var adultValue = parseInt(document.getElementById('adult' + i).value);
    var kidsValue1 = parseInt(document.getElementById('kids' + i).value);

    totalAdults += adultValue;
    totalKids += kidsValue1;
    adultValues.push(adultValue);
    kidsValues.push(kidsValue1);

    var nContent = document.createElement('div');
    nContent.innerHTML = `
      <input type="hidden" id="a${i}" name="a${i}" value="${adultValues[i - 1]}"/>
      <input type="hidden" id="k${i}" name="k${i}" value="${kidsValues[i - 1]}"/>
    `;
    p.appendChild(nContent);
 	totalror = totalAdults+totalKids;
    popBtn.value = "객실 " + count + "개, 인원 " + totalror + "명";
    var adultValue = parseInt(document.getElementById(`a${i}`).value);
    var kidsValue2 = parseInt(document.getElementById(`k${i}`).value);
 
    url += `&a${i}=` + adultValue + `&k${i}=` + kidsValue1;
  }
  console.log(url);
  rortlf.value = count;
  cadUrl = url;
  console.log('총 성인: ' + totalAdults + ', 총 어린이: ' + totalKids);
  
});

function ad(){
	for (var i = 1; i <= count; i++) {
	    var adultValue = parseInt(document.getElementById(`a${i}`).value);
    	var kidsValue2 = parseInt(document.getElementById(`k${i}`).value);
 	}
    	url += `&a${i}=` + adultValue + `&k${i}=` + kidsValue1;
}

function upRoomCount() {
 
  for (var i = 1; i <= count; i++) {
    adultValue = parseInt(document.getElementById('adult' + i).value);
    kidsValue1 = parseInt(document.getElementById('kids' + i).value);
	
    totalAdults -= adultValue;
    totalKids -= kidsValue1;
    //updateButtonValue();
    //alert('총 성인: ' + totalAdults + ', 총 어린이: ' + totalKids);
  }

}

	var form = document.getElementById('searchForm');
	var titleInput = form.querySelector('input[name="title"]');
	var checkinInput = form.querySelector('input[name="checkin"]');
	var checkoutInput = form.querySelector('input[name="checkout"]');
	var adultInput = form.querySelector('input[name="adult"]');
	var kidsInput = form.querySelector('input[name="kids"]');
	var startInput = form.querySelector('input[name="checkin"]'); 
	var endInput = form.querySelector('input[name="checkout"]');
	var rortlf = form.querySelector('input[name="rortlf"]');
	var popBtn = document.getElementById('popBtn');
	
	document.getElementById('subb').addEventListener('click', function () {
		
  var titleValue = titleInput.value;
  var adultValue = adultInput.value;
  var kidsValue1 = kidsInput.value;
  var startValue = startInput.value;
  var endValue = endInput.value;
  var rorValue = rortlf.value;
  console.log("ddd" + url);
  
  if(url == ""){
	  ad();
    form.action = '/BookStay/views/hlist.jsp?title=' + titleValue + '&checkin=' + startValue + '&checkout=' + endValue
      + '&adult=' + adultValue + '&kids=' + kidsValue1 + '&room=' + rorValue + '&select=1&check=1,2,3,4' + url;
  }else{
    form.action = '/BookStay/views/hlist.jsp?title=' + titleValue + '&checkin=' + startValue + '&checkout=' + endValue
      + '&adult=' + adultValue + '&kids=' + kidsValue1 + '&room=' + rorValue + '&select=1&check=1,2,3,4' + url;
}

});
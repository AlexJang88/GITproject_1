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
	  

	    form.action = '/BookStay/views/hlist.jsp?title=' + titleValue + '&checkin=' + startValue + '&checkout=' + endValue
	      + '&adult=' + adultValue + '&kids=' + kidsValue1 + '&room=' + rorValue + '&select=1&check=1,2,3,4' + url;


});
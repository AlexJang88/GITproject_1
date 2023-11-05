var form1 = document.getElementById('searchForm');
var adultInput = form1.querySelector('input[name="adult"]');
var kidsInput = form1.querySelector('input[name="kids"]');
var button = document.getElementById('popBtn');
	
function updateButtonValue() {
	  var adultValue = parseInt(adultInput.value);
	  var kidsValue = parseInt(kidsInput.value);
	  var totalValue = adultValue + kidsValue;
	
	  button.value = "객실, 인원 " + totalValue + "명";
}
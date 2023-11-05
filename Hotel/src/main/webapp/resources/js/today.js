document.addEventListener("DOMContentLoaded", function() {
	var form2 = document.getElementById('searchForm');
	var dstart = document.getElementById('start');
	var dend = document.getElementById('end');
	var date = form2.querySelector('input[name="datetimes"]');

  	var currentDate = new Date();

 	var start = currentDate.toISOString().slice(0, 10);

 	var tomorrowDate = new Date();
 	tomorrowDate.setDate(currentDate.getDate() + 1);
  	var end = tomorrowDate.toISOString().slice(0, 10);
  	dstart.value = start;
  	dend.value = end;
  	date.value = start + " - " + end;
});
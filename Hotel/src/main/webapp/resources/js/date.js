$(function() {
  $('input[name="datetimes"]').daterangepicker({
    opens: 'left',
    locale: {
      format: 'YYYY-MM-DD'
    }
  }, function(start, end, label) {
	  $('#start').val(start.format('YYYY-MM-DD'));
	  $('#end').val(end.format('YYYY-MM-DD'));
  });
});
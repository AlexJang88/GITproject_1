<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" id="cad" value="zhzh">
<input type="button" id="subb" value="qkqk">
<input type="text" id="aa">
<script>
var url=0;
document.getElementById('cad').addEventListener('click', function() {
	url =0;
	url = 1;
});
document.getElementById('subb').addEventListener('click', function () {
	var a = document.getElementById('aa');
	a.value = url;
	alert(url);
});
</script>
</body>
</html>
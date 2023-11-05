var popBtn = document.getElementById("popBtn");
var popup = document.querySelector(".popup");
var cBtn = document.getElementById("cad");

popBtn.addEventListener("click", function(){
	if(popup.classList.contains('on')){
		popup.classList.remove('on');
	}else{
		popup.classList.add('on');
	}
});
cBtn.addEventListener("click", function(){
	if(popup.classList.contains('on')){
		popup.classList.remove('on');
	}else{
		popup.classList.add('on');
	}
});
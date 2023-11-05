var list1 = document.getElementById('list1');
var list2 = document.getElementById('list2');
var list3 = document.getElementById('list3');
var list4 = document.getElementById('list4');
var list5 = document.getElementById('list5');
var list6 = document.getElementById('list6');
var list7 = document.getElementById('list7');
var list8 = document.getElementById('list8');
var hobtn1 = document.getElementById('hobtn1');

list2.style.display = "none";
list3.style.display = "none";
list4.style.display = "none";
list5.style.display = "none";
list6.style.display = "none";
list7.style.display = "none";
list8.style.display = "none";
hobtn1.style.backgroundColor = "black";
hobtn1.style.color = "white";

const buttons = document.querySelectorAll(".hobtn");

buttons.forEach((button) => {
  button.addEventListener("click", function() {
    const targetId = button.getAttribute("data-target");
    const target = document.getElementById(targetId);

    buttons.forEach((btn) => {
        btn.style.backgroundColor = "white"; // 원래의 배경색으로 변경
        btn.style.color = "rgb(128, 128, 128)";
      });
      button.style.backgroundColor = "black"; // 원하는 배경색으로 변경
      button.style.color = "white"; // 원하는 배경색으로 변경
    
    buttons.forEach((btn) => {
      document.getElementById(btn.getAttribute("data-target")).style.display = "none";
    });
	
    target.style.display = "block";
  });
});
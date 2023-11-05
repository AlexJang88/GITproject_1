<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<!DOCTYPE html>

<html>

<head>

  <style>

    body {

    height: 1500px;

      margin: 0;

      padding: 0;

      font-family: Arial, sans-serif;

    }

    .header {

      background-color: #333;

      color: #fff;

      text-align: center;

      padding: 20px 0;

    }

    .menu {

      background-color: #444;

      color: #fff;

      padding: 10px 0;

    }

    .fixed-menu {

      position: fixed;

      top: 0;

      width: 100%;

    }

    /* Add more styles as needed */

  </style>

</head>

<body>

  <div class="header">

    <h1>헤더</h1>

  </div>

  <div class="menu" id="menu">

    <ul>

      <li><a href="#">메뉴 1</a></li>

      <li><a href="#">메뉴 2</a></li>

      <li><a href="#">메뉴 3</a></li>

    </ul>

  </div>
  
  <div id="aa">
  	<div id="b">1</div>
  	<div id="c">2</div>
  	<div id="d">3</div>  	
  </div>



  <!-- Content goes here -->



  <script>

    window.onscroll = function() {

      var menu = document.getElementById("menu");

      var header = document.querySelector(".header");

      if (window.pageYOffset > header.clientHeight) {

        menu.classList.add("fixed-menu");

      } else {

        menu.classList.remove("fixed-menu");

      }

    };

  </script>

</body>

</html>
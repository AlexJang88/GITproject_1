<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        .stars {
            font-size: 13px;
            width: 75px; /* 별 하나의 넓이 */
            white-space: nowrap; /* 추가: 텍스트 한 줄로 유지 */
        }
    </style>
</head>
<body>
    <div class="stars" title="평점" style="position: relative;">
        <div class="stars-background" style="position: absolute; left:0; color: #cdcdcd;">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="stars-real" style="position: absolute; left: 0; width: calc((2.2 / 5) * 100%); overflow: hidden;">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
    </div>

    <script>
        // JavaScript를 사용하여 점수를 동적으로 설정
        const score = 2.2;
        const starsReal = document.querySelector(".stars-real");
        starsReal.style.width = `calc((4.2 / 5) * 100%)`;
    </script>
</body>
</html>


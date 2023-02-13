<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>메인화면</title>

    <style>
      /* 로그인 버튼 */
      .button {
        position: relative;
        background-color: gray;
        border: 1px;
        border-radius: 5px;
        color: white;
        padding: 15px 32px;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        left: 130px;
      }
      .button:hover {
        background-color: rgba(0, 0, 0, 0.767);
      }
      /* 전체화면 메인 div */
      .mainDiv {
        position: absolute;
        border: solid 3px black;
        height: 600px;
        width: 360px;
      }
      /* 로고 & 로그인 div */
      .loginDiv {
        position: relative;
        /* border: solid 1px red; */
        width: 360px;
        height: auto;
        margin: 3px auto;
      }
      /* 슬라이드 배너 div */
      .slideBannerDiv {
        position: relative;
        /* border: solid 1px blue; */
        width: 360px;
        height: 250px;
        margin: 3px auto;
      }
      /* 주문하기 div */
      .orderDiv {
        position: relative;
        /* border: solid 1px green; */
        width: 360px;
        height: 180px;
        margin: 3px auto;
        top: 10%;
      }
      /* 주문하기 버튼 div */
      .orderButtonDiv {
        position: absolute;
        /* border: solid 1px red; */
        width: 130px;
        height: 130px;
        margin: 3px auto;
      }
      /* 좌우 위치 조정 */
      .orderLeft {
        left: 40px;
      }
      .orderRight {
        right: 40px;
      }

      /* 주문 버튼 서식 */
      .orderButtonDesign {
        position: absolute;
        background-color: gray;
        border: 1px;
        border-radius: 5px;
        color: white;
        padding: 55px 49px;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
      }
      .orderButtonDesign:hover {
        background-color: rgba(0, 0, 0, 0.767);
      }
      /* 네비게이션바 div */
      .naviDiv {
        position: absolute;
        /* border: solid 1px magenta; */
        background-color: gainsboro;
        width: 360px;
        height: 66px;
        margin: 3px auto;
        bottom: 1px;
      }
      /* 네비게이션바 안에 추가 div 영역 */
      .naviElementDiv {
        position: absolute;
        /* border: solid 1px blue; */
        width: 50px;
        height: 50px;
        margin: 3px auto;
        cursor: pointer;
      }
      /* 왼쪽 영역 */
      .naviElementLeft {
        left: 20px;
        top: 5px;
      }
      /* 가운데 영역 */
      .naviElementCenter {
        left: 150px;
        width: 60px;
        height: 60px;
        top: 0px;
      }
      /* 오른쪽 영역 */
      .naviElementRight {
        right: 20px;
        top: 5px;
      }

      .naviLeftButton {
        background-image: url(HomeButtonImg.png);
        background-size: 100% 100%;
      }

      .naviCenterButton {
        background-image: url(CoffeeOrderImg.png);
        background-size: 100% 100%;
      }

      .naviRightButton {
        background-image: url(UserInfoBtnImg.png);
        background-size: 100% 100%;
      }
      /* 슬라이드쇼 컨테이너 */
      .slideshow-container {
        max-width: 300px;

        position: relative;
        margin: auto;
      }

      /* 기본값 이미지 */
      .mySlides {
        display: none;
      }

      /* 다음 및 이전 버튼 */
      .prev,
      .next {
        cursor: pointer;
        position: absolute;
        top: 60px;
        width: auto;
        height: 167px;
        margin-top: 0px;
        padding: 16px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
        user-select: none;
      }

      /* 오른쪽에 next 버튼 배치 */
      .next {
        right: 0;
       	
        border-radius: 3px 0 0 3px;
      }

      /* 양옆 버튼 마우스오버 */
      .prev:hover,
      .next:hover {
        background-color: rgba(0, 0, 0, 0.3);
      }

      /* 캡션 텍스트 */
      .text {
        color: black;
        font-size: 15px;
        padding: 8px 12px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
      }

      /* dot의 idle */
      .dot {
        cursor: pointer;
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: gainsboro;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.1s ease;
      }

      .active,
      .dot:hover {
        /*선택된 슬라이드의 dot을 회색으로 수정*/
        background-color: gray;
      }

      /* 애니메이션 페이딩 */
      .fade {
        animation-name: fade;
        animation-duration: 0.5s;
      }

      @keyframes fade {
        from {
          opacity: 0.3;
        }
        to {
          opacity: 1;
        }
      }
    </style>
  </head>
  <body>
  <%
  Object getData = session.getAttribute("id");

  String ObjToStringValue = (String)getData;
  %>
    <!-- 메인 div -->
    <div class="mainDiv">
      <img src="HeadBar.png" />
      <!-- 상단 로고&로그인버튼 div -->
      <div class="loginDiv">
        <img src="COFFEE_LOGO.png" width="80" height="60" align="left" />
        <p class="login_success" style="position:absolute; right: 10px;"> 환영합니다! <%=ObjToStringValue %>님
      </div>
      <!-- 슬라이드 배너 div -->
      <div class="slideBannerDiv">
        <!-- 슬라이드쇼 컨테이너 -->
        <div class="slideshow-container">
          <!-- 전체 이미지 -->
          <div class="mySlides fade">
            <img src="img1.jpg" style="width: 100%; height: 200px" />
          </div>

          <div class="mySlides fade">
            <img src="img2.jpg" style="width: 100%; height: 200px" />
          </div>

          <div class="mySlides fade">
            <img src="img3.jpg" style="width: 100%; height: 200px" />
          </div>

          <!-- 다음 및 이전 단추 -->
          <a class="prev" onclick="plusSlides(-1)"
            ><br /><br /><br />&#10094;</a
          >
          <a class="next" onclick="plusSlides(1)"><br /><br /><br />&#10095;</a>
        </div>
        <br />

        <!-- 점 / 원 -->
        <div style="text-align: center">
          <span class="dot" onclick="currentSlide(1)"></span>
          <span class="dot" onclick="currentSlide(2)"></span>
          <span class="dot" onclick="currentSlide(3)"></span>
        </div>
      </div>
      <!-- 주문하기 div -->
      <div class="orderDiv">
        <br />
        <div class="orderButtonDiv orderLeft">
          <button type="button" class="orderButtonDesign" onclick="location.href='order.jsp'">포장</button>
        </div>
        <div class="orderButtonDiv orderRight">
          <button type="button" class="orderButtonDesign" onclick="location.href='order.jsp'">매장</button>
        </div>
      </div>
      <!-- 네비게이션바 div -->
      <div class="naviDiv">
        <div class="naviElementDiv naviElementLeft naviLeftButton"></div>
        <div class="naviElementDiv naviElementCenter naviCenterButton"></div>
        <div class="naviElementDiv naviElementRight naviRightButton"></div>
      </div>
    </div>
    <script>
      let slideIndex = 1; //기본값 슬라이드 순서(첫번째)
      showSlides(slideIndex);

      //추가 슬라이드
      function plusSlides(n) {
        showSlides((slideIndex += n));
      }

      //현재 슬라이드
      function currentSlide(n) {
        showSlides((slideIndex = n));
      }

      //슬라이드 표시 함수
      function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides"); //mySlides 클래스의 기본값 이미지 넘버
        let dots = document.getElementsByClassName("dot"); //슬라이드 하단 점 클래스
        if (n > slides.length) {
          // n이 1을 초과하면
          slideIndex = 1; // 슬라이드 첫번째 순서를 표시하게 고정함
        }
        if (n < 1) {
          // n이 0 이하면
          slideIndex = slides.length; //슬라이드 마지막 순서의 이미지를 표시
        }
        for (i = 0; i < slides.length; i++) {
          //각 슬라이드 번호대로 출력한다
          slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
          //해당 슬라이드의 dot active 클래스로 수정
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block"; //이전 순서의 슬라이드는 내용을 숨김
        dots[slideIndex - 1].className += " active";
      }
    </script>
  </body>
</html>

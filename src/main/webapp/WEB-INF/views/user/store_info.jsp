<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../resources/css/colorset.css">
    <link rel="stylesheet" href="../../resources/css/store_page.css">
</head>
<body>
    <header class="header">
        <div class="headerTop">
            <div class="headerBody">
                    <a href="#"><img src="../../resources/images/mainlogo.png" style="width: 300px;"></a>
                <div class="bodyLeft">
                    <ul class="df_ul headerItem">
                        <li>
                          <a href="#">장바구니</a>
                        </li>
                        <li>
                          <a  href="#">로그인</a>
                        </li>
                        <li >
                          <a href="#">회원가입</a>
                        </li>
                        <li >
                          <a  href="#"><img src="../../resources/images/bell.png"></a>
                        </li>
                      </ul>
                </div>
            </div>
        </div>
    </header>

    <section>
        <h1 align="center" style="margin-top: 60px;">가게 정보</h1>
        <div class="at-container" style="position: relative; margin-top: 130px; display: flex; flex-direction: column; align-items: center;">
            <div class="store_logo">
                <img src="../../resources/images/8 (1).png">
            </div>
            <div class="bottom" style="border-top: 1px solid black; margin-top: 100px;">
                <div class="menu_box" style="margin-top: 100px;">
                    <div class="info_div" style="margin-top: 60px;">
                        <div style="font-size: 20pt; font-weight: bold;">상호</div>
                        <div class="info_con" style="background: #EFEFEF; width: 500px; padding: 10px 40px; font-weight: bold;">숙이네 반찬</div>
                    </div>
                    <div class="info_div">
                        <div style="font-size: 20pt; font-weight: bold;">전화번호</div>
                        <div class="info_con" style="background: #EFEFEF; width: 500px; padding: 10px 40px; font-weight: bold;">02-xxxx-xxxx</div>
                    </div>
                    <div class="info_div">
                        <div style="font-size: 20pt; font-weight: bold;">주소</div>
                        <div class="info_con" style="background: #EFEFEF; width: 500px; padding: 10px 40px; font-weight: bold;">서울시 강남구 서초동</div>
                    </div>
                    <div class="info_div">
                        <div style="font-size: 20pt; font-weight: bold;">영업시간</div>
                        <div class="info_con" style="background: #EFEFEF; width: 500px; padding: 10px 40px; font-weight: bold;">08:00 ~ 21:00</div>
                    </div>
                    <div class="info_div">
                        <div style="font-size: 20pt; font-weight: bold;">상세주소</div>
                        <div class="info_con" style="background: #EFEFEF; width: 500px; padding: 10px 40px; font-weight: bold;">xx빌라 1층</div>
                    </div>
                    <div class="info_div">
                        <div style="font-size: 20pt; font-weight: bold;">가게 소개</div>
                        <div class="info_con" style="background: #EFEFEF; width: 500px; padding: 10px 40px; font-weight: bold;">
                            <p>
                                월요일 : 두부무침, ... <br>
                                화요일 : 가지부침개, ...
                            </p>
                        </div>
                    </div>
                    <div class="info_div" style="margin-bottom: 100px;">
                        <div style="font-size: 20pt; font-weight: bold;">사업자<br>등록번호</div>
                        <div class="info_con" style="background: #EFEFEF; width: 500px; padding: 10px 40px; font-weight: bold;">678-91-01234</div>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${ sessionScope.loginMember != null }">
	       	<div id="cart_logo">
	       		<button onclick="location.href='${ pageContext.servletContext.contextPath }/user/cart'"><img src="${ pageContext.servletContext.contextPath }/resources/images/cart_logo.png"></button>
	       	</div>
      	</c:if>
    </section>

    <footer class="at-container" style="margin-top: 0;">
        <ul class="df_ul ft_list">
            <li>
                <a href="">마미손맛 소개</a>   
            </li>
            <li>
                <a href="">이용약관</a>
            </li>
            <li>
                <a href="">개인정보처리방침</a>
            </li>
            <li>
                <a href="">전자금융거래이용약관</a>
            </li>
        </ul>
        <div class="ft_img_line">
            <img src="../../resources/images/ft_img01.png" alt="소비자중심경영">
            <img src="../../resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
            <img src="../../resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
        </div>
        <div class="ft_info">
            <p>(주)마미손맛 자세히 보기</p>
            <p>대표 : 유승제 / 주소 : 서울특별시 서초구 서초대로78길 48 송림빌딩 13층</p>
            <p>사업자번호 : 123-45-67890 / 통신판매업신고 : 제 2021-서울-503호 / 개인정보 정책 및 담당 : 김준희</p>
            <p>대표번호 : 1588-0000 / 팩스번호 : 02-123-1234 / 이메일 : mommysonmat@greedy.com</p>
            <p>ⓒ SSEULEODAMJO CORP. All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>
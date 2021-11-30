<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
        <div class="at-container" style="position: relative; margin-top: 200px; display: flex; flex-direction: column; align-items: center;">
            <div class="store_logo">
                <img src="../../resources/images/8 (1).png">
            </div>
            <div class="bottom" style="border-top: 1px solid black; margin-top: 100px;">
                <div class="menu_box" style="margin-top: 100px;">
                    <!-- 메뉴 이름 -->
                    <h1 style="margin-bottom: 70px; font-weight: bold;">두부 무침</h1>
                    <!-- 메뉴 사진 -->
                    <div class="menu_pic">
                        <img src="../../resources/images/dooboo.png">
                    </div>
                    <!-- tag 들 -->
                    <div class="tags">
                        <span><a href="#" style="text-align: center;"><strong>#어린이 반찬</strong></a></span>
                        <span><a href="#" style="text-align: center;"><strong>#냉동 반찬</strong></a></span>
                        <span><a href="#" style="text-align: center;"><strong>#엄마 반찬</strong></a></span>
                    </div>

                    <!-- 메뉴 설명 -->
                    <p style="margin: 70px 0px 70px 0px; font-size: 20pt;">
                        두부 무침이 이렇게 상큼할 수 있다?!!<br>
                        지금 바로 맛을 보세요<br>
                        헤어나올 수 없습니다.
                    </p>

                    <!-- 반찬 정보 -->
                    <div class="side_info">
                        <p>제조일자</p>
                        <p>2021-11-21</p>
                    </div>
                    <div class="side_info">
                        <p>유효기한</p>
                        <p>제조일자로부터 3일</p>
                    </div>
                    <div class="side_info">
                        <p>용량</p>
                        <p>300g</p>
                    </div>
                    <div class="side_info">
                        <p>식품 유형</p>
                        <p>부침</p>
                    </div>
                    <div class="side_info">
                        <p>재료</p>
                        <p>두부, 간장, 물</p>
                    </div>
                    <div class="side_info">
                        <p>보관법</p>
                        <p>냉장보관</p>
                    </div>
                    <div class="side_info">
                        <p>가격</p>
                        <p>1000 원</p>
                    </div>
                    <div class="side_info">
                        <p>할인</p>
                        <p>(-)</p>
                    </div>
                    <div class="side_info">
                        <p>수량</p>
                        <div style="display: flex;">
                            <button class="numbtn" onclick="stepdown();">-</button>
                            <input type="text" id="num" name="num" value="0" readonly style="width: 30px; height: 30px; border-radius: 0; text-align: center;">
                            <button class="numbtn" onclick="stepup();">+</button>
                        </div>
                        <script>
                            function stepup() {
                                $('#num').val(parseInt($('#num').val()) + 1);
                            }

                            function stepdown() {
                                if($('#num').val() > 0) {
                                    $('#num').val(parseInt($('#num').val()) - 1);
                                }
                            }
                        </script>
                    </div>
                    <div style="display: flex; justify-content: space-between; width: 70%; margin: 50px 0 300px 0;">
                        <button class="pink_btn">취소</button>
                        <button class="pink_btn">장바구니 추가</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="at-container" style="margin: 0;">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    
    <link rel="stylesheet" href="../../resources/css/owners.css">
    <link rel="stylesheet" href="../../resources/css/colorset.css">
    <link rel="stylesheet" href="../../resources/css/store_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>우리동네 인기맛집</title>
</head>
<body>
    <!-- Optional JavaScript; choose one of the two! -->
    
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
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

    <div class="navbar" style="width:1550px;">
      <div class="dropdown">
        <button class="dropbtn" style="font-size: 20px; text-align: center;">전체 카테고리 
          <i class="fa fa-caret-down" style="padding-left: 20px;"></i>
        </button>
        <div class="dropdown-content"> 
          <div class="row">
            <div class="column">
              <a href="#">무침</a>
              <a href="#">볶음</a>
              <a href="#">조림</a>
              <a href="#">김치/절임/젓갈</a>
            </div>
            <div class="column">
              <a href="#">전/생선</a>
              <a href="#">국/찌개/탕</a>
              <a href="#">메인요리</a>
              <a href="#">곡류/양념</a>
            </div>
            <div class="column">
              <a href="#">어린이 반찬</a>
              <a href="#">부모님 반찬</a>
              <a href="#">제철 반찬</a>
            </div>
            <div class="column">
              <a href="#">대용량 반찬</a>
              <a href="#">묶음 반찬</a>
              <a href="#">냉동 반찬</a>
              <a href="#">할인 반찬</a>
            </div>
          </div>
        </div>
      </div> 
       <a href="#home">오늘의 추천</a>
       <a href="#news">우리동네 인기 맛집</a>
       <a href="#news">오늘 할인</a>
       <a href="#news">이벤트</a>
       <div class="search-container"></div>
       <form action="#" method="get">
        <input type="text" placeholder="Search.." name="search">
        <button type="submit" id="but"><i class="fa fa-search" style="size: 50px;"></i></button>
       </form>
      </div>
      </div>

      <div class="store-all" style="text-align: center;">
        <br><br>
        <h1>우리 동네 인기맛집</h1>
        <br><br><br><br>
        <div class="store-center">
            <div class="recommend-img">
                <img class="logo" src="../../resources/images/8.png">
                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
                <a href="#" class="menu_name">토토반찬</a>
                <div class="menu_div2">
                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
                </div>
                </div>
            </div>
            <div class="recommend-img">
                <img class="logo" src="../../resources/images/restaurantLogo001.png">
                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
                <a href="#" class="menu_name">찜닭최고</a>
                <div class="menu_div2">
                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
                </div>
                </div>
            </div>
            <div class="recommend-img">
                <img class="logo" src="../../resources/images/restaurantLogo002.png">
                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
                <a href="#" class="menu_name">경복궁</a>
                <div class="menu_div2">
                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
                </div>
                </div>
            </div>
            <div class="recommend-img-last">
                <img class="logo" src="../../resources/images/restaurantLogo003.png">
                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
                <a href="#" class="menu_name">니들이 게맛을 알아?</a>
                <div class="menu_div2">
                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
                </div>
                </div>
            </div>
        <br><br><br><br><br>
        <div class="recommend-img">
            <img class="logo" src="../../resources/images/restaurantLogo004.png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">피시스토리</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>
        <div class="recommend-img">
            <img class="logo" src="../../resources/images/7.png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">장모님 해산물</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>
        <div class="recommend-img">
            <img class="logo" src="../../resources/images/7 (1).png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">혜주야 밥무라</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>
        <div class="recommend-img-last">
            <img class="logo" src="../../resources/images/restaurantLogo006.png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">농부밥상</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>
        <br><br><br><br><br>
        <div class="recommend-img">
            <img class="logo" src="../../resources/images/8.png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">토토반찬</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>
        <div class="recommend-img">
            <img class="logo" src="../../resources/images/1 2.png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">찜닭최고</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>
        <div class="recommend-img">
            <img class="logo" src="../../resources/images/8 (1).png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">경복궁</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>
        <div class="recommend-img-last">
            <img class="logo" src="../../resources/images/restaurantLogo005.png">
            <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
            <a href="#" class="menu_name">니들이 게맛을 알아?</a>
            <div class="menu_div2">
                <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
            </div>
            </div>
        </div>

        </div>
      </div>


      <footer class="at-container">
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
            <p>대표 : 유승제 / 주소 : 서울특별시 서초구 서초대로78길 48 송림빌딩 13층</p>
            <p>사업자번호 : 123-45-67890 / 통신판매업신고 : 제 2021-서울-503호 / 개인정보 정책 및 담당 : 김준희</p>
            <p>대표번호 : 1588-0000 / 팩스번호 : 02-123-1234 / 이메일 : mommysonmat@greedy.com</p>
            <p>ⓒ SSEULEODAMJO CORP. All Rights Reserved.</p>
        </div>
        <div class="manager_center">
            <h4>고객센터</h4>
            <div class="callNum">
                <img src="../../resources/images/callImg.png" alt="call">
                <span>1644 - 1234</span>    
            </div>
            <p>평일 10:00~18:50</p>
            <p>점심시간 12:00~13:00</p>
            <p>(주말과 공휴일은 휴무입니다.)</p>
        </div>
    </footer>
</body>
</html>
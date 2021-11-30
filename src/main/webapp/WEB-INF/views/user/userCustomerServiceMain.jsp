<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="../../resources/css/colorset.css">
  <link rel="stylesheet" href="../../resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="../../resources/css/user/userCustomerServiceMain.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
  <header class="header">
    <div class="headerTop">
      <div class="headerBody">
        <a href="#"><img src="../../resources/images/mainlogo.png" style="width: 300px;"></a>
        <br><br><br>
          <div class="bodyLeft">
              <ul class="df_ul headerItem" style=" margin-left: 1150px;">
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

  <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width: 1550px; margin: 0 auto;">
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false" style="margin-left: 50px; font-weight: 700; color: black">
                전체 카테고리
              </a>
          <div class="dropdown-menu">
              <div class="dropdown-content" aria-labelledby="navbarDropdown">
                  <div class="row">
                      <div class="col-2">
                      <a href="#">무침</a>
                      <a href="#">볶음</a>
                      <a href="#">조림</a>
                      <a href="#">김치/젓갈</a>
                      </div>
                      <div class="col-1"></div>
                      <div class="col-2">
                      <a href="#">전/생선</a>
                      <a href="#">국/찌개/탕</a>
                      <a href="#">메인요리</a>
                      <a href="#">곡류/양념</a>
                      </div>
                      <div class="col-1"></div>
                      <div class="col-2">
                      <a href="#">어린이 반찬</a>
                      <a href="#">부모님 반찬</a>
                      <a href="#">제철 반찬</a>
                      </div>
                      <div class="col-1"></div>
                      <div class="col-2">
                      <a href="#">대용량 반찬</a>
                      <a href="#">묶음 반찬</a>
                      <a href="#">냉동 반찬</a>
                      <a href="#">할인 반찬</a>
                      </div>
                  </div>
              </div>
          </div> 
          </li>
          <a href="#home" style="margin-left: 100px;">오늘의 추천</a>
          <a href="#news">우리동네 인기 맛집</a>
          <a href="#news">오늘 할인</a>
          <a href="#news">이벤트</a>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" id="#\search" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
  <!-- 태그 div -->
  <div id="tags" style="display: none;">
      <div style="display: flex; justify-content: space-between; width: 100%; margin: 10px;">
        <input type="button" class="tag" value="#무침">
        <input type="button" class="tag" value="#볶음">
        <input type="button" class="tag" value="#조림">
        <input type="button" class="tag" value="#김치/절임/젓갈">
        <input type="button" class="tag" value="#전/생선">
      </div>
      <div style="display: flex; justify-content: space-between; width: 100%; margin: 10px;">
       <input type="button" class="tag" value="#국/찌개/탕">
       <input type="button" class="tag" value="#메인요리">
       <input type="button" class="tag" value="#곡류/양념">
       <input type="button" class="tag" value="#매콤한">
       <input type="button" class="tag" value="#달콤한">
      </div>
      <div style="display: flex; justify-content: space-between; width: 100%; margin: 10px;">
       <input type="button" class="tag" value="#얼큰한">
       <input type="button" class="tag" value="#톡쏘는">
       <input type="button" class="tag" value="#짭짤한">
       <input type="button" class="tag" value="#시원한">
       <input type="button" class="tag" value="#부드러운">
      </div>
    </div>
    <script>
      // 태그 div 출력 이벤트
      $('#search').on('keyup', function() {
        let text = $('#search').val();
        if(text.charAt(text.length-1) == '#') {
         $('#tags').css('display', 'block');
        } else {
         $('#tags').css('display', 'none');
        }
      });

      // 태그 클릭 이벤트
      $('.tag').on('click',function(e) {
       
       let text = $('#search').val();
       let index = text.lastIndexOf('#');
       let replace = text.replaceAt(index, e.target.value + ", ");
       $('#search').val(replace);
       $('#tags').css('display', 'none');
       $('#search').focus();
      });

      String.prototype.replaceAt=function(index, character) {
        return this.substr(0, index) + character + this.substr(index+character.length); 
      }
    </script>
    </header>
    <section>

      <div class="container">
        <div class="row" id="rowunder">
          <div class="col-md-3">
            <nav id="sidebar">
              <div class="sidebar-header">
                  <h3>고객센터</h3>
              </div>
  
              <ul class="list-unstyled components">
                  <li>
                      <a href="#">공지사항</a>
                  </li>                 
                  <li>
                      <a href="#">자주하는 질문</a>
                  </li>
                  <li>
                    <a href="#">1:1 문의</a>
                </li>
                <li>
                  <a href="#">1:1 상담 내역</a>
                 </li>
              </ul>
          </nav>
          <!-- <img src="../../resources/images/customerServiceImg.png" id="customerguide"> -->
          </div>
          <script>
            $(document).ready(function () {
                  $('#sidebarCollapse').on('click', function () {
                      $('#sidebar').toggleClass('active');
                  });
              });
          </script>

          <div class="col-md-9">
            <div id="userCouponHead">
            <br>
              <h3 id="title"><strong>고객센터</strong></h3>
            </div>
            <br>
              <h5><b>FAQ</b></h5>
              <!-- 구현하시는 분은 자주묻는 질문이나 공지사항 게시판 양식 그대로 끌어다 만드시면 됩니다. 클릭할때 관련 질문이 출력 되어야합니다.
                  아니 게시판 형식이 아니어도 내용만 양식에 맞게 출력되면 ok입니다.  
              -->
            <div style="border: solid gainsboro 2px; text-align: center; margin-top: 30px;">
              <table>
                <tbody class="qnaList">
                  <tr>
                    <td style="border-right: solid gainsboro;"><a href="#"><img class="imgFAQ" src="../../resources/images/FAQICONIdPasswordFind.png"></a></td>
                    <td style="border-right: solid gainsboro;"><a href="#"><img class="imgFAQ" src="../../resources/images/FAQICONOrderList.png"></a></td>
                    <td style="border-right: solid gainsboro;"><a href="#"><img class="imgFAQ" src="../../resources/images/FAQICONWriteReview.png"></a></td>
                    <td><a href="#"><img class="imgFAQ" src="../../resources/images/FAQICONCoupon.png"></a></td>                  
                  </tr>
                </tbody>
              </table>
            </div>

            <hr>
            <div>
            <h5><b>자주하는 질문 TOP5</b></h5>
              <table class="table board_table question_table">
                <colgroup>
                    <col width=""/>
                </colgroup>
                <tbody>
                    <tr class="click_qa">
                        <td class="tal">1. 회원가입은 어떻게 하나요?</td>
                    </tr>
                    <tr class="answer tal">
                        <td>회원가입은 홈페이지 상단 오른쪽에 회원가입 버튼을 누르고 하시면 됩니다.</td>
                    </tr>
                    <tr class="click_qa">
                        <td class="tal">2.음식을 주문하려면 어떻게 결제해야 하나요?</td>
                    </tr>
                    <tr class="answer tal">
                        <td>카카오페이로 결제하면 됩니다.</td>
                    </tr>
                    <tr class="click_qa">
                      <td class="tal">3.음식을 주문하려면 어떻게 결제해야 하나요?</td>
                  </tr>
                  <tr class="answer tal">
                      <td>카카오페이로 결제하면 됩니다.</td>
                  </tr>
                  <tr class="click_qa">
                    <td class="tal">4.음식을 주문하려면 어떻게 결제해야 하나요?</td>
                  </tr>
                  <tr class="answer tal">
                      <td>카카오페이로 결제하면 됩니다.</td>
                  </tr>
                  <tr class="click_qa">
                    <td class="tal">5.음식을 주문하려면 어떻게 결제해야 하나요?</td>
                  </tr>
                  <tr class="answer tal">
                      <td>카카오페이로 결제하면 됩니다.</td>
                  </tr>
                </tbody>
            </table>

          <script>
            $(".click_qa").on('click',function(e){
                $(event.currentTarget).next().toggle(300);
                
                // let show = e.next();
                // show.toggle();
            });
        </script>
        </div>
        <hr>
        
          <div class="containerF">
            <div class="row">
                <div class="col-sm-6">
                  <h5><b>공지사항</b></h5>
                </div>
                <div class="col-sm-6">
                  <button class="searchbutton">전체보기</button>
                </div>
            </div>
            <div class="row" id="notice">
              <ul>
                <li>최신 공지사항 5개 정도를 출력해주시면 됩니다. 구현 하시는 분은 높이도 이쁘게 조절해주세요</li>
              </ul>
            </div>
        </div>
       
        
         
          </div>
        </div>
      </div>
    </section>

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
          <img src="../../../resources/images/ft_img01.png" alt="소비자중심경영">
        <img src="../../../resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
        <img src="../../../resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
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

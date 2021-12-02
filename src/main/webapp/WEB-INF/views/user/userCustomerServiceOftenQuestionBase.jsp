<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userCustomerServiceOftenQuestionBase.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../commons/header.jsp"></jsp:include>

    <section>

      <div class="container">
        <div class="row" id="rowunder">
          <div class="col-md-3">
             <jsp:include page="../commons/userCustomerServiceCenterSidebar.jsp"></jsp:include>
          </div>
          <div class="col-md-9">
            <div id="userCouponHead">
            <br>
              <h3 id="title"><strong>자주 하는 질문</strong></h3>
            </div>
            <br>
            <div style="text-align: center;">
              <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
              <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
              <button type="submit" class="searchbutton">검색하기</button></li>
            </div>
            <div style="border: solid gainsboro 2px; text-align: center; margin-top: 30px;">
              <table>
                <tbody class="qnaList">
                  <tr>
                    <td style="border-right: solid gainsboro;"><a href="#">회원가입</a></td>
                    <td style="border-right: solid gainsboro;"><a href="#">결제/주문</a></td>
                    <td style="border-right: solid gainsboro;"><a href="#">리뷰관리</a></td>
                    <td style="border-right: solid gainsboro;"><a href="#">이용문의</a></td>
                    <td style="border-right: solid gainsboro;"><a href="#">불편관리</a></td>
                    <td>기타</td>
                  </tr>
                </tbody>
              
              </table>
            </div>

            <hr>
            <table class="table board_table question_table">
              <colgroup>
                  <col width=""/>
                  <col width=""/>
                  <col width=""/>
                  <col width=""/>
              </colgroup>
              <thead style="background-color: #EDEDED;">
                  <tr>
                      <th><input type="checkbox" name="ch1"></th>
                      <th>번호</th>
                      <th>카테고리</th>
                      <th>제목</th>
                  </tr>
              </thead>
              <tbody>
                  <tr class="click_qa">
                      <th scope="row"><input type="checkbox" name="ch1"></th>
                      <td>1</td>
                      <td>회원가입</td>
                      <td class="tal">회원가입은 어떻게 하나요?</td>
                  </tr>
                  <tr class="answer tal">
                      <td colspan="4">회원가입은 홈페이지 상단 오른쪽에 회원가입 버튼을 누르고 하시면 됩니다.</td>
                  </tr>
                  <tr class="click_qa">
                      <th scope="row"><input type="checkbox" name="ch1"></th>
                      <td>2</td>
                      <td>결제/주문</td>
                      <td class="tal">음식을 주문하려면 어떻게 결제해야 하나요?</td>
                  </tr>
                  <tr class="answer tal">
                      <td colspan="4">카카오페이로 결제하면 됩니다.</td>
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
   <nav class="page_box" aria-label="Page navigation example">
    <ul class="pagination">
      <li class="page-item"><a class="page-link-num" href="#">&laquo;</a></li>
      <li class="page-item"><a class="page-link-num" href="#">&lt;</a></li>
      <li class="page-item"><a class="page-link-num" href="#">1</a></li>
      <li class="page-item"><a class="page-link-num" href="#">2</a></li>
      <li class="page-item"><a class="page-link-num" href="#">3</a></li>
      <li class="page-item"><a class="page-link-num" href="#">4</a></li>
      <li class="page-item"><a class="page-link-num" href="#">5</a></li>
      <li class="page-item"><a class="page-link-num" href="#">6</a></li>
      <li class="page-item"><a class="page-link-num" href="#">7</a></li>
      <li class="page-item"><a class="page-link-num" href="#">8</a></li>
      <li class="page-item"><a class="page-link-num" href="#">9</a></li>
      <li class="page-item"><a class="page-link-num" href="#">10</a></li>
      <li class="page-item"><a class="page-link-num" href="#">&gt;</a></li>
      <li class="page-item"><a class="page-link-num" href="#">&raquo;</a></li>
    </ul>
    
  </nav>
            
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
          <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img01.png" alt="소비자중심경영">
        <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
        <img src="${ pageContext.servletContext.contextPath }/resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
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

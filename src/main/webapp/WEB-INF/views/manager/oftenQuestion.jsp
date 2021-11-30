<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자주하는 질문</title>
    <link rel="stylesheet" href="../../../resources/css/colorset.css">
    <link rel="stylesheet" href="../../../resources/css/mypage-sidebar.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="../../../resources/css/manager.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
    <header class="manager_header at-container">
        <img src="../../../resources/images/managerLogo.png" alt="마미손맛 MANAGEMENT">
        <a href="../main.html" class="home_btn">
            <img src="../../../resources/images/mainHome.png" alt="메인화면으로">
            <p>메인화면으로</p>
        </a>
    </header>
    <div class="head_line"></div>
    <div class="at-container total_container">
        <div class="side-2 side_menu">
            <nav id="sidebar">
                <ul class="list-unstyled components sidebar_list">
                    <li class="active">
                        <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">회원관리</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu1">
                            <li>
                                <a href="normalMember.html">일반 회원 조회</a>
                            </li>
                            <li>
                                <a href="buisnessMember.html">사업자 회원 조회</a>
                            </li>
                            <li>
                                <a href="blackMember.html">블랙 회원 조회</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">게시글 관리</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu2">
                            <li>
                                <a href="#">공지사항</a>
                            </li>
                            <li>
                                <a href="#">자주하는 질문</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#homeSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">1:1 문의</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu3">
                            <li>
                                <a href="#">사업자</a>
                            </li>
                            <li>
                                <a href="#">소비자</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">신고 관리</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu4">
                            <li>
                                <a href="#">가게 신고 현황</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#homeSubmenu5" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">설정 관리</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu5">
                            <li>
                                <a href="bannerManage.html">배너 설정</a>
                            </li>
                            <li>
                                <a href="tagManage.html">태그 설정</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#homeSubmenu6" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">관리자 관리</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu6">
                            <li>
                                <a href="#">관리자 조회</a>
                            </li>
                            <li>
                                <a href="#">관리자 아이디 생성</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="board_container">
            <h2>자주하는 질문</h2>
            <form action="" method="POST">
                <ul style="text-align: center;">
                    <img class="glass" src="../../../resources/images/glass.png">
                    <input type="text" class="searchtext" style="margin: 0;" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
                    <button type="submit" class="searchbutton">검색하기</button></li>
                </ul>
            </form>
            <form action="">
                <ul class="df_ul question_category">
                    <li>
                        <a href="">회원가입</a>
                    </li>
                    <li>
                        <a href="">결제/주문</a>
                    </li>
                    <li>
                        <a href="">리뷰관리</a>
                    </li>
                    <li>
                        <a href="">이용문의</a>
                    </li>
                    <li>
                        <a href="">불편관리</a>
                    </li>
                    <li>
                        <a href="">기타</a>
                    </li>
                </ul>
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
                            <td>회원가입</td>
                            <td class="tal">회원 탈퇴 후 동일한 아이디로 재가입이 가능한가요?</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">네, 가능합니다.<br>
                                다만, 탈퇴 시 고객님께서 보유하셨던 쿠폰과 적립금 및 주문기록은 삭제됩니다. 이 점 유의하시기 바랍니다.</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>3</td>
                            <td>회원가입</td>
                            <td class="tal">회원 아이디와 비밀번호 분실 시엔 어떻게 찾나요?</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">[로그인] -> [아이디찾기] or [비밀번호찾기]를 이용해주시기 바랍니다.<br>감사합니다</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>1</td>
                            <td>결제/주문</td>
                            <td class="tal">음식을 주문하려면 어떻게 결제해야 하나요?</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">카카오페이로 결제하면 됩니다.</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>2</td>
                            <td>결제/주문</td>
                            <td class="tal">결제수단은 어떻게 되나요?</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">결제수단은 카카오페이만 가능합니다. 감사합니다.</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>1</td>
                            <td>리뷰관리</td>
                            <td class="tal">작성한 리뷰를 수정하고 싶어요</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">고객님의 마이페이지의 '내가 쓴 리뷰' 탭에서 작성한 리뷰를 수정/삭제하실 수 있습니다.</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>2</td>
                            <td>리뷰관리</td>
                            <td class="tal">작성한 리뷰를 삭제하고 다시 작성이 가능 한가요?</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">고객님의 마이페이지의 '내가 쓴 리뷰' 탭에서 작성한 리뷰를 수정/삭제하실 수 있습니다.<br><br>
                                            그러나, 작성한 리뷰를 삭제 후 다시 재작성 하는 것은 불가능합니다. <br>감사합니다.</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>1</td>
                            <td>이용문의</td>
                            <td class="tal">제품이 상한 것 같아요.</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">먼저 이용에 불편을 드려 죄송합니다. <br><br>
                            내정보 - 1:1문의 게시판에 받으신 제품의 사진과 함께 글을 남겨주시면, 담당자 확인 후 처리 도와드리도록 하겠습니다.</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>2</td>
                            <td>이용문의</td>
                            <td class="tal">제품용기는 전자레인지에 돌려도 되나요?</td>
                        </tr>
                        <tr class="answer tal">
                            <td colspan="4">마미손맛에서 사용하는 반찬용기(소용량, 대용량)는 전자레인지 사용이 가능한 PP재질의 용기입니다.<br>
                                 비닐을 완전히 벗겨내고 사용해주세요.<br><br>
                                단, 함께 제공되는 반찬뚜껑과 쿠킹박스 용기는 전자레인지 사용이 불가합니다.<br>
                                감사합니다.</td>
                        </tr>
                        <tr class="click_qa">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>3</td>
                            <td>이용관리</td>
                            <td class="tal">주문 후 제품을 추가하고 싶은데, 어떻게 해야 하나요?</td>
                            <tr class="answer tal">
                                <td colspan="4">죄송합니다만, 주문상태가 [배송준비중]으로 변경된 경우에는<br> 
                                    제품 변경 및 추가 / 수령일 변경 / 배송방법 변경 / 주문취소 가 불가능합니다.<br><br>
                                    [주문취소]로 주문을 취소한 후, 다시 주문을 해주시면 됩니다.<br>
                                    [주문취소] 또한 반찬제조 전 단계인 [주문접수]경우에만 가능합니다.</td>
                                </tr></td>
                            </tr>
                            <tr class="click_qa">
                                <th scope="row"><input type="checkbox" name="ch1"></th>
                                <td>1</td>
                                <td>불편관리</td>
                                <td class="tal">주문한 제품이 오지 않았어요.</td>
                            </tr>
                            <tr class="answer tal">
                                <td colspan="4">이용에 불편을 드려 죄송합니다.<br><br>
                                    어떤 제품이 누락되었는지<br>
                                    고객센터(1588-3754) 연락 또는 1:1문의에 글 남겨주시면
                                    담당자 확인 후 연락드리도록 하겠습니다.</td>
                            </tr>
                            <tr class="click_qa">
                                <th scope="row"><input type="checkbox" name="ch1"></th>
                                <td>2</td>
                                <td>불편관리</td>
                                <td class="tal">교환/반품은 어떻게 하나요?</td>
                            </tr>
                            <tr class="answer tal">
                                <td colspan="4">먼저 교환/반품을 고려하게 만들어 죄송하다는 말씀 드립니다.<br><br>
                                    수령하신 제품에 이상(불량, 파손, 오배송 등)이 있는 경우 고객센터(1588-3754), 1:1문의 게시판에 글 남겨주시면 처리 도와드리겠습니다.<br>
                                    재발송, 적립금환불, 결제취소 등의 방법이 있으며, 제품은 직접 폐기처리 하시거나 고객센터를 통해 접수시 수거 접수를 도와드립니다.<br><br>
                                    고객님의 단순 변심을 이유로는 신선식품 특성상 환불, 반품이 불가합니다.<br><br>
                                    감사합니다.</td>
                            </tr>
                            <tr class="click_qa">
                                <th scope="row"><input type="checkbox" name="ch1"></th>
                                <td>3</td>
                                <td>불편관리</td>
                                <td class="tal">주문취소/환불 후 사용했던 적립금 및 쿠폰은 어떻게 처리가 되나요?
                                </td>
                            </tr>
                            <tr class="answer tal">
                                <td colspan="4">주문취소/환불은 담당자가 취소 승인 처리를 해야 취소/환불이 완료됩니다.<br>
                                    적립금은 취소 승인시 담당자가 수동으로 복구처리를 해드리고, 쿠폰은 자동으로 반환됩니다.<br>
                                    적립금이나 쿠폰에 오류가 발생한 경우, 1:1문의나 고객센터(1588-3754)로 연락주시면 빠르게 확인해드리겠습니다.<br><br>
                                    단, 쿠폰은 사용기한에 따라 복구가 불가능 할 수 있습니다.<br><br>
                                    감사합니다.</td>
                            </tr>
                    
                    </tbody>
                </table>
                <input type="submit" value="삭제하기" class="black_btn delete_btn">
                <a href="noticeWirte" class="black_btn write_btn" style="background-color: #F89E91;">작성하기</a>
            </form>
            <script>
                $(".click_qa").on('click',function(e){
                    $(event.currentTarget).next().toggle(300);
                    
                    // let show = e.next();
                    // show.toggle();
                });
            </script>
            <!-- 페이징 -->
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
            <p>대표 : 유승제 / 주소 : 서울특별시 서초구 서초대로78길 48 송림빌딩 13층</p>
            <p>사업자번호 : 123-45-67890 / 통신판매업신고 : 제 2021-서울-503호 / 개인정보 정책 및 담당 : 김준희</p>
            <p>대표번호 : 1588-0000 / 팩스번호 : 02-123-1234 / 이메일 : mommysonmat@greedy.com</p>
            <p>ⓒ SSEULEODAMJO CORP. All Rights Reserved.</p>
        </div>
        <div class="manager_center">
            <h4>고객센터</h4>
            <div class="callNum">
                <img src="../../../resources/images/callImg.png" alt="call">
                <span>1644 - 1234</span>    
            </div>
            <p>평일 10:00~18:50</p>
            <p>점심시간 12:00~13:00</p>
            <p>(주말과 공휴일은 휴무입니다.)</p>
        </div>
    </footer>
</body>
</html>
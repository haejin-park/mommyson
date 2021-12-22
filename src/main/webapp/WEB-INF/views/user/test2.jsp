<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사업자 문의 답변</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMTMConsult.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
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
                    <li class="active">
                        <a href="#homeSubmenu7" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">정산</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu7">
                            <li>
                                <a href="#">관리자 정산</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="board_container">
            <h1>1:1문의</h1>
            <div class="top_box">
                <p>사업자 문의</p>
            </div>
            <form action="">
                <table class="table bd_write_header bd_bottom_line">
                    <colgroup>
                        <col width="10%"/>
                        <col width="30%"/>
                        <col width="10%"/>
                        <col width="20%"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th>제목</th>
                            <td colspan="3">
                               결제가 안돼요
                            </td>
                        </tr>
                        <tr>
                            <th>아이디</th>
                            <td>
                                user01
                            </td>
                            <th>작성일</th>
                            <td>
                                2021-12-11
                            </td>
                        </tr>
                        <tr style="height: auto; vertical-align: middle;">
                            <th>내용</th>
                            <td colspan="3">
                                카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ 카카오페이 창이 안떠요ㅠㅠ
                            </td>
                        </tr>
                        <tr style="height: auto; vertical-align: middle; border-bottom: 0;">
                            <th>이미지</th>
                            <td colspan="3">
                               <div class="fix_photo"><img class="fixImg" src="../../../resources/images/sample.png"></div>
                               <div class="fix_photo"><img class="fixImg" src="../../../resources/images/photo.png"></div>
                               <div class="fix_photo"><img class="fixImg" src="../../../resources/images/photo.png"></div>
                            </td>
                        </tr>
                    </thead>
                    <div class="inquiry_modal">
                        <div class="inqury_box">
                            <img class="inqury_img" id="show_img">
                        </div>
                    </div>
                </table>
                <div class="top_box">
                    <p>답변 내용</p>
                </div>
                <div class="text_area2">
                    <textarea name="" id="" placeholder="내용을 작성해주세요."></textarea>
                </div>
                <div class="top_box">
                    <p>이미지 첨부</p>
                </div>
                <div class="change_photo" id="view_area1"><img class="img_size" id="view_img1" src="../../../resources/images/photo2.png"></div>
                <div class="change_photo" id="view_area2"><img class="img_size" id="view_img2" src="../../../resources/images/photo2.png"></div>
                <div class="change_photo" id="view_area3" style="margin-right:0;"><img class="img_size" id="view_img3" src="../../../resources/images/photo2.png"></div>
                <div class="photo_size">이미지당 10MB이하, 최대 3개까지 등록 가능합니다.</div>
                
                <div class="fileArea">
                    <input type="file" id="insert_img1" name="insert_img1" onchange="loadImg(this,1)" accept="image/*">
                    <input type="file" id="insert_img2" name="insert_img2" onchange="loadImg(this,2)" accept="image/*">
                    <input type="file" id="insert_img3" name="insert_img3" onchange="loadImg(this,3)" accept="image/*">
                </div>
                
                <div class="btn_box">
                    <input type="submit" value="답변하기" class="btn write_btn" style="background-color: #F89E91;">
                    <a href="noticeSelect.html" class="btn cancle_btn" style="background-color: #BEBEBE;">목록으로</a>
                </div>
                
            </form>
            
        </div>
    </div>

    <script>
        $('.fixImg').click(function(){
            let img = new Image();
            img.src = $(this).attr("src");
            $('.inquiry_box').html(img);
            $('.inquiry_modal').show();
        });

        $('.inquiry_modal').click(function(e){
            $('.inquiry_modal').toggle();
        });
    </script>

    <script>
        const $viewArea1 = document.getElementById("view_area1");
        const $viewArea2 = document.getElementById("view_area2");
        const $viewArea3 = document.getElementById("view_area3");

        $viewArea1.onclick = function(){
            document.getElementById("insert_img1").click();
        }
        $viewArea2.onclick = function(){
            document.getElementById("insert_img2").click();
        }
        $viewArea3.onclick = function(){
            document.getElementById("insert_img3").click();
        }

        function loadImg(value, num){
            if(value.files && value.files[0]){
                const reader = new FileReader();
                /* 읽기동작이 성공적으로 로드되었을 때 작동하는 함수 */
                reader.onload = function(e){
                /* 가공된 파일 url을 srcdp 넣어줌 */
                    switch(num){
                    case 1: document.getElementById("view_img1").src = e.target.result; break;
                    case 2: document.getElementById("view_img2").src = e.target.result; break;
                    case 3: document.getElementById("view_img3").src = e.target.result; break;
                    }
                }
                reader.readAsDataURL(value.files[0]);
            }
            if(value.files || value.files[0]){
                switch(num){
                    case 1: document.getElementById("view_img1").src = '../../../resources/images/photo2.png'; break;
                    case 2: document.getElementById("view_img2").src = '../../../resources/images/photo2.png'; break;
                    case 3: document.getElementById("view_img3").src = '../../../resources/images/photo2.png'; break;
                    }
            }
        }
    </script>
    
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

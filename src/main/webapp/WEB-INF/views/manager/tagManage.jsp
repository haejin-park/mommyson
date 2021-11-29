<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>태그 설정</title>
    <link rel="stylesheet" href="../../../resources/css/colorset.css">
    <link rel="stylesheet" href="../../../resources/css/mypage-sidebar.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="../../../resources/css/manager.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
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
            <h2>태그 설정</h2>
            <form action="">
                <div class="tag_container">
                    <div class="unused_tag">
                        <strong class="tag_title">미사용 태그</strong>
                        <button type="button" data-toggle="modal" data-target="#exampleModal">추가</button>
                        <ul class="df_ul tag_list">
                            <li>
                                <input type="checkbox" name="" id="cheked">
                                <label for="cheked"></label>
                                <span>#바삭</span>
                                <button>
                                    <img src="../../../resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="cheked2">
                                <label for="cheked2"></label>
                                <span>#말랑</span>
                                <button>
                                    <img src="../../../resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="cheked3">
                                <label for="cheked3"></label>
                                <span>#시원</span>
                                <button>
                                    <img src="../../../resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="cheked4">
                                <label for="cheked4"></label>
                                <span>#달달한</span>
                                <button>
                                    <img src="../../../resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                        </ul>
                    </div>
                    <div class="choice_use">
                        <button style="margin-bottom: 20px;">
                            <img src="../../../resources/images/use_tag_btn.png" alt="태그 사용">
                        </button>
                        <button>
                            <img src="../../../resources/images/unuse_tag_btn.png" alt="태그 미사용">
                        </button>
                    </div>
                    <div class="used_tag">
                        <strong class="tag_title">사용 태그</strong>
                        <ul class="df_ul tag_list">
                            <li>
                                <input type="checkbox" name="" id="uncheked">
                                <label for="uncheked"></label>
                                <span>#오징어</span>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="uncheked2">
                                <label for="uncheked2"></label>
                                <span>#생선</span>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="uncheked3">
                                <label for="uncheked3"></label>
                                <span>#과자</span>
                            </li>
                        </ul>
                        <p>최대 15개</p>
                        <div class="hot_keword">
                            <strong class="tag_title">핫 키워드</strong>
                            <button type="button" data-toggle="modal" data-target="#exampleModal2">수정</button>
                            <ul class="df_ul keyword_list">
                                <li>
                                    <span class="num">1</span>
                                    <span class="txt" id="txt1">#어린이반찬</span>
                                </li>
                                <li>
                                    <span class="num">2</span>
                                    <span class="txt" id="txt2">#엄마반찬</span>
                                </li>
                                <li>
                                    <span class="num">3</span>
                                    <span class="txt" id="txt3">#제철반찬</span>
                                </li>
                                <li>
                                    <span class="num">4</span>
                                    <span class="txt" id="txt4">#대용량반찬</span>
                                </li>
                                <li>
                                    <span class="num">5</span>
                                    <span class="txt" id="txt5">#묶음반찬</span>
                                </li>
                                <li>
                                    <span class="num">6</span>
                                    <span class="txt" id="txt6">#냉동반찬</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- 태그 추가 Modal -->
                <div class="modal fade add_tag_modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p>키워드 추가</p>
                                <input type="text" name="" id="">
                                <div class="btn_box">
                                    <button style="background-color: #F89E91; margin-right: 5px;">확인</button>
                                    <button data-dismiss="modal" aria-label="Close" style="background-color: #D7D4D4;">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 핫 키워드 수정 Modal -->
                <div class="modal fade add_tag_modal" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p>수정</p>
                                <ul class="df_ul edit_box">
                                    <li>
                                        <span class="num">1</span>
                                        <input type="text" name="" id="num1" value="">
                                    </li>
                                    <li>
                                        <span class="num">2</span>
                                        <input type="text" name="" id="num2" value="">
                                    </li>
                                    <li>
                                        <span class="num">3</span>
                                        <input type="text" name="" id="num3" value="">
                                    </li>
                                    <li>
                                        <span class="num">4</span>
                                        <input type="text" name="" id="num4" value="">
                                    </li>
                                    <li>
                                        <span class="num">5</span>
                                        <input type="text" name="" id="num5" value="">
                                    </li>
                                    <li>
                                        <span class="num">6</span>
                                        <input type="text" name="" id="num6" value="">
                                    </li>
                                </ul>
                                
                                <div class="btn_box">
                                    <button style="background-color: #F89E91; margin-right: 5px;">확인</button>
                                    <button data-dismiss="modal" aria-label="Close" style="background-color: #D7D4D4;">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" value="저장" class="save_btn">
            </form>
        </div>
    </div>

    <script>
        let hotkeyword1 =  $("#txt1").text();
        $("#num1").val(hotkeyword1);

        let hotkeyword2 =  $("#txt2").text();
        $("#num2").val(hotkeyword2);

        let hotkeyword3 =  $("#txt3").text();
        $("#num3").val(hotkeyword1);

        let hotkeyword4 =  $("#txt4").text();
        $("#num4").val(hotkeyword4);

        let hotkeyword5 =  $("#txt5").text();
        $("#num5").val(hotkeyword5);

        let hotkeyword6 =  $("#txt6").text();
        $("#num6").val(hotkeyword6);

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
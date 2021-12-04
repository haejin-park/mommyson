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
            <h2>자주하는 질문</h2>
            <form action="">
                <table class="table bd_write_header">
                    <colgroup>
                        <col width="10%"/>
                        <col width="60%"/>
                        <col width="10%"/>
                        <col width="20%"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th>질문</th>
                            <td>
                                <input type="text" name="" id="" placeholder="제목을 입력해주세요.">
                            </td>
                            <th>분류</th>
                            <td>
                                <select name="" id="">
                                    <option value="">회원가입</option>
                                    <option value="">결제주문</option>
                                    <option value="">리뷰관리</option>
                                    <option value="">이용문의</option>
                                    <option value="">불편관리</option>
                                    <option value="">기타</option>
                                </select>
                            </td>
                        </tr>
                    </thead>
                </table>
                <div class="text_area">
                    <textarea name="" id="" placeholder="내용을 작성해주세요."></textarea>
                </div>
                <div class="btn_box">
                    <input type="submit" value="등록하기" class="btn write_btn" style="background-color: #F89E91;">
                    <a href="oftenQuestion.html" class="btn cancle_btn" style="background-color: #BEBEBE;">취소하기</a>
                </div>
            </form>
            
        </div>
    </div>
    <!-- <div class="line"></div> -->
    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu2").addClass("show");
         $("#homeSubmenu2 > li:last-child > a").attr("style","color: #F89E91 !important");
     </script>
</body>
</html>
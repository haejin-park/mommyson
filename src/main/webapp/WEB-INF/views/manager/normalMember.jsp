<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일반회원조회</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage-sidebar.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
    <header class="manager_header at-container">
        <img src="${ pageContext.servletContext.contextPath }/resources/images/managerLogo.png" alt="마미손맛 MANAGEMENT">
        <a href="../main.html" class="home_btn">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/mainHome.png" alt="메인화면으로">
            <p>메인화면으로</p>
        </a>
    </header>
    <div class="head_line"></div>
    <div class="at-container total_container">
    
        <jsp:include page="../commons/managerSidebar.jsp"></jsp:include>
        
        <div class="board_container">
            <h2>회원관리</h2>
            <div class="top_box">
                <p>일반 회원 조회</p>
                <input type="button" value="회원삭제">
            </div>

            <table class="table board_table">
                <colgroup>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                    <col width=""/>
                </colgroup>
                <thead style="background-color: #EDEDED;">
                    <tr>
                        <th><input type="checkbox" name="ch1" id="chk_all"></th>
                        <th>번호</th>
                        <th>아이디</th>
                        <th>닉네임</th>
                        <th>이메일</th>
                        <th>가입일</th>
                        <th>주문횟수</th>
                        <th>총 결제금액</th>
                        <th>신고</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><input type="checkbox" name="ch1"></th>
                        <td>1</td>
                        <td>user01</td>
                        <td>혜찌마요</td>
                        <td>heju@greedy.com</td>
                        <td>2021-11-01</td>
                        <td>123</td>
                        <td>7,000,000</td>
                        <td>1</td>
                        <td>시민</td>
                    </tr>
                    <tr>
                        <th scope="row"><input type="checkbox" name="ch1"></th>
                        <td>1</td>
                        <td>user01</td>
                        <td>혜찌마요</td>
                        <td>heju@greedy.com</td>
                        <td>2021-11-01</td>
                        <td>123</td>
                        <td>7,000,000</td>
                        <td>2</td>
                        <td>시민</td>
                    </tr>
                    <tr>
                        <th scope="row"><input type="checkbox" name="ch1"></th>
                        <td>1</td>
                        <td>user01</td>
                        <td>혜찌마요</td>
                        <td>heju@greedy.com</td>
                        <td>2021-11-01</td>
                        <td>123</td>
                        <td>7,000,000</td>
                        <td>1</td>
                        <td>시민</td>
                    </tr>
                </tbody>
            </table>
            <input type="button" value="블랙등록" class="black_btn">
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
                <form action="">
                    <ul>
                        <img class="glass" src="${ pageContext.servletContext.contextPath }/manager//resources/images/glass.png">
                        <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
                        <button type="submit" class="searchbutton">검색하기</button></li>
                    </ul>
                </form>
            </nav>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
        $("#chk_all").click(function(){
         $(this).parent
        });
 
         $("#homeSubmenu1").addClass("show");
         $("#homeSubmenu1 > li:first-child > a").css("color","#F89E91");
     </script>
</body>
</html>
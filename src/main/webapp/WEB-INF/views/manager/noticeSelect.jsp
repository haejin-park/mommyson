<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>공지사항</title>
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
            <h2>공지사항</h2>
            <form action="">
                <table class="table board_table">
                    <colgroup>
                        <col width=""/>
                        <col width=""/>
                        <col width=""/>
                        <col width=""/>
                        <col width=""/>
                    </colgroup>
                    <thead style="background-color: #EDEDED;">
                        <tr>
                            <th><input type="checkbox" name="ch1"></th>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="important_notice">
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>공지</td>
                            <td class="tal">
                                <a href="${ pageContext.servletContext.contextPath }/manager/noticeDetailView">[소비자] 신규 회원 가입 이벤트 당첨자 발표</a>
                            </td>
                            <td>2021-11-01</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>1</td>
                            <td class="tal">
                                <a href="noticeDetailView.html">[안내] 방역수칙을 준수하는 안전한 외식생활 캠페인</a>
                            </td>
                            <td>2021-11-01</td>
                            <td>500</td>
                        </tr>
                        <tr>
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>2</td>
                            <td class="tal">
                                <a href="noticeDetailView.html">[공지] 고객센터 일부 서비스 중단 안내(10일,12일)</a>
                            </td>
                            <td>2021-11-01</td>
                            <td>200</td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" value="삭제하기" class="black_btn delete_btn">
                <a href="noticeWrite.html" class="black_btn write_btn" style="background-color: #F89E91;">작성하기</a>
            </form>
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
                        <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
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
 
         $("#homeSubmenu2").addClass("show");
         $("#homeSubmenu2 > li:first-child > a").css("color","#F89E91");
     </script>
</body>
</html>
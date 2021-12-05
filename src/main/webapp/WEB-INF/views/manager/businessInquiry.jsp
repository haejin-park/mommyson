<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>사업자 1:1문의 </title>
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
            <h2>1:1문의</h2>
            <div class="top_box">
                <p>사업자 문의</p>
            </div>
            <hr>
            <div>
                <div>
                <table class="table">
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
                    </colgroup>
                    <thead style="background-color: #EDEDED;">
                      <tr>
                        <th>문의 유형</th>
                        <th>제목</th>
                        <th>아이디</th>
                        <th>문의날짜</th>
                        <th>답변여부</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>결제</td>
                        <td>결제가 안돼요</td>
                        <td>혜찌마요</td>
                        <td>2021-11-10</td>
                        <td>Y</td>
                      </tr>
                      <tr>
                        <td>리뷰</td>
                        <td>리뷰는 어디서 보나요?</td>
                        <td>지지마요</td>
                        <td>2021-11-12</td>
                        <td>Y</td>
                      </tr>
                      <tr>
                        <td>배달</td>
                        <td>배달 반찬이 다 쏟아져서 왔어요</td>
                        <td>따띠마요</td>
                        <td>2021-11-13</td>
                        <td>Y</td>
                      </tr>
                      <tr>
                        <td>배달</td>
                        <td>배달 반찬이 다 쏟아져서 왔어요</td>
                        <td>따띠마요</td>
                        <td>2021-11-14</td>
                        <td>Y</td>
                      </tr>
                    </tbody>
                  </table>
                  <br><br>
                </div>
            </div>
            <!-- 페이징 -->
            <nav class="page_box" aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item"><a class="page-link-move" href="#">&laquo;</a></li>
                  <li class="page-item"><a class="page-link-move" href="#">&lt;</a></li>
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
                  <li class="page-item"><a class="page-link-move" href="#">&gt;</a></li>
                  <li class="page-item"><a class="page-link-move" href="#">&raquo;</a></li>
                </ul>
                <ul>
                    <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                    <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
                    <button type="submit" class="searchbutton">검색하기</button></li>
                 </ul>
              </nav>
            <!-- 검색 부분 -->
            <!-- <div class="search">
                <ul>
                   <img class="glass" src="../../../resources/images/glass.png">
                   <input type="text" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
                   <button type="submit" class="searchbutton">검색하기</button></li>
                </ul>
            </div> -->
        </div>
    </div>
    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu3").addClass("show");
         $("#homeSubmenu3 > li:first-child > a").attr("style","color: #F89E91 !important");
     </script>
</body>
</html>
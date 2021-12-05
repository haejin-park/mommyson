<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>블랙회원조회</title>
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
                <p>블랙 회원 조회</p>
                <input type="button" value="블랙해지">
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
                </colgroup>
                <thead style="background-color: #EDEDED;">
                <tr>
                    <th><input type="checkbox" name="ch1"></th>
                    <th>번호</th>
                    <th>아이디</th>
                    <th>닉네임</th>
                    <th>이메일</th>
                    <th>가입일</th>
                    <th>주문횟수</th>
                    <th>총 결제금액</th>
                    <th>-</th>
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
                    <td>
                        <a href="" data-toggle="modal" data-target="#exampleModal">상세보기</a>
                    </td>
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
                    <td>
                        <a href="" data-toggle="modal" data-target="#exampleModal">상세보기</a>
                    </td>
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
                    <td>
                        <a href="" data-toggle="modal" data-target="#exampleModal">상세보기</a>
                    </td>
                </tr>
                </tbody>
            </table>

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

   <!-- Modal -->
   <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                   <table border="1" class="tb_content">
                       <colgroup>
                            <col width="15%"/>
                            <col width="15%"/>
                            <col width="55%"/>
                            <col width="15%"/>
                       </colgroup>
                       <thead>
                           <tr>
                               <th>경고순번</th>
                               <th>카테고리</th>
                               <th>내용</th>
                               <th>날짜</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td>1</td>
                               <td>욕설</td>
                               <td>XX별로다.</td>
                               <td>2021-11-29</td>
                           </tr>
                       </tbody>
                   </table>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
        $("#chk_all").click(function(){
         $(this).parent
        });
 
         $("#homeSubmenu1").addClass("show");
         $("#homeSubmenu1 > li:last-child > a").attr("style","color: #F89E91 !important");
     </script>
</body>
</html>
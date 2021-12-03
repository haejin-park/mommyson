<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>사업자 정산</title>
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
            <h2>사업자 정산</h2>
                <div class="date_box" style="margin-bottom: 0px;">
                    <span style="font-size: 20px;">결제 기간</span>
                    <input type="date" class="calendar" id="startDate">
                    <label>~</label>
                    <input type="date" class="calendar" id="endDate">
                    <input type="button" class="gray_btn" value="검색">
                </div>
                <div class="top_box">
                    <input type="button" value="엑셀변환" style="background-color: #F89E91;">
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
                    <col width="14%"/>
                    <col width=""/>
                    <col width=""/>
                </colgroup>
                <thead style="background-color: #EDEDED;">
                    <tr>
                        <th><input type="checkbox" name="ch1" id="chk_all"></th>
                        <th>결제일자</th>
                        <th>타입</th>
                        <th>공급가액</th>
                        <th>세액</th>
                        <th>합계금액</th>
                        <th>공급받는자 성명</th>
                        <th>공급받는자 상호명</th>
                        <th>공급받는자 등록번호</th>
                        <th>공급받는자 이메일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row"><input type="checkbox" name="ch1"></td>
                        <td>2021/11/05</td>
                        <td>3</td>
                        <td>180,910</td>
                        <td>18,090</td>
                        <td>199,000</td>
                        <td>혜찌마요</td>
                        <td>꼬꼬반찬 꼬꼬반찬 꼬꼬반찬 꼬꼬반찬</td>
                        <td>110-123-56781</td>
                        <td><input type="text" value="lucky1@namver.comafdsfasfsdfasfsd" class="text_email"></td>
                    </tr>
                    <tr>
                        <td scope="row"><input type="checkbox" name="ch1"></td>
                        <td>2021/11/04</td>
                        <td>3</td>
                        <td>635,450</td>
                        <td>65,550</td>
                        <td>699,000</td>
                        <td>로찜마</td>
                        <td>장수가</td>
                        <td>110-123-56781</td>
                        <td><input type="text" value="lucky1@namver.com" class="text_email"></td>
                    </tr>
                    <tr>
                        <td scope="row"><input type="checkbox" name="ch1"></td>
                        <td>2021/11/03</td>
                        <td>12</td>
                        <td>180,910</td>
                        <td>18,090</td>
                        <td>199,000</td>
                        <td>따띠마요</td>
                        <td>토토반찬</td>
                        <td>110-123-56781</td>
                        <td><input type="text" value="lucky1@namver.com" class="text_email"></td>
                    </tr>
                    <tr>
                        <td scope="row"><input type="checkbox" name="ch1"></td>
                        <td>2021/11/02</td>
                        <td>12</td>
                        <td>635,450</td>
                        <td>65,550</td>
                        <td>699,000</td>
                        <td>지지마요</td>
                        <td>현기야밥묵자</td>
                        <td>110-123-56781</td>
                        <td><input type="text" value="lucky1@namver.com" class="text_email"></td>
                    </tr>
                    <tr>
                        <td scope="row"><input type="checkbox" name="ch1"></td>
                        <td>2021/11/05</td>
                        <td>12</td>
                        <td>180,910</td>
                        <td>18,090</td>
                        <td>199,000</td>
                        <td>승승마요</td>
                        <td>혜주야밥무라</td>
                        <td>110-123-56781</td>
                        <td><input type="text" value="lucky1@namver.com" class="text_email"></td>
                    </tr>
                </tbody>
            </table>
            <p style="float: right; color: gray">작성일자는 결제일자가 포함된 달의 다음달 10일까지 입니다!</p>
            <!-- 페이징 -->
            <nav class="page_box" aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link-num nbdr" href="#">&laquo;</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">&lt;</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">1</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">2</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">3</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">4</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">5</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">6</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">7</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">8</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">9</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">10</a></li>
                    <li class="page-item"><a class="page-link-num nbdr" href="#">&gt;</a></li>
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

   <script>
       $("#chk_all").click(function(){
        $(this).parent
       });
   </script>
    
     <jsp:include page="../commons/footer.jsp"></jsp:include>
</body>
</html>
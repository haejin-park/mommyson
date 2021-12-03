<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>중개이용료 리스트</title>
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
            <h2 style="text-align: center;">ㅇㅇㅇ님 중개이용료 리스트</h2>
            <div class="date_box">
                <span style="font-size: 20px;">결제 기간</span>
                <input type="date" class="calendar" id="startDate">
                <label>~</label>
                <input type="date" class="calendar" id="endDate">
                <input type="button" class="gray_btn" value="검색">
            </div>
            <table class="table border_table adjustment_table">
                <colgroup>
                    <col width="20"/>
                    <col width="20"/>
                    <col width="20"/>
                    <col width="20"/>
                    <col width="20"/>
                </colgroup>
                <thead style="background-color: #EDEDED;">
                    <tr>
                        <th>연월</th>
                        <th>매출액</th>
                        <th>배달료</th>
                        <th>중개이용료</th>
                        <th>중개이용료 외 매출액</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            
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
                        <img class="glass" src="../../../resources/images/glass.png">
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
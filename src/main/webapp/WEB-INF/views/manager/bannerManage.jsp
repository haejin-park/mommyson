<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>배너 설정</title>
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
            <h2>배너 설정</h2>
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
                            <th>번호(순서)</th>
                            <th>제목</th>
                            <th>사용여부</th>
                            <th>기능</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>1</td>
                            <td class="tal">풍미가 깊은 청국장 찌개</td>
                            <td>사용함</td>
                            <td>
                                <button value="" class="cor_btn">수정</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>2</td>
                            <td class="tal">달콤한 딸기잼</td>
                            <td>사용안함</td>
                            <td>
                                <button value="" class="cor_btn">수정</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" value="삭제하기" class="black_btn delete_btn">
                <a href="bannerAdd.html" class="black_btn write_btn" style="background-color: #F89E91;">추가하기</a>
            </form>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu5").addClass("show");
         $("#homeSubmenu5 > li:first-child > a").attr("style","color: #F89E91 !important");
    </script>
</body>
</html>
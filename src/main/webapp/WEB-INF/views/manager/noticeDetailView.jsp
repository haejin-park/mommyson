<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>공지사항 상세보기</title>
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
        
        <jsp:include page="../commons/managerSidebar.jsp"/>
        
        <div class="board_container">
            <h2>공지사항</h2>
            <form action="">
                <table class="table bd_write_header bd_detail_view">
                    <colgroup>
                        <col width="10%"/>
                        <col width="60%"/>
                        <col width="10%"/>
                        <col width="20%"/>
                    </colgroup>
                    <thead>
                        <tr style="border-bottom: 1px solid #B1B1B1;">
                            <th>제목</th>
                            <td colspan="3">[공지]${ selectNotice.postTitle } </td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>${ selectNotice.postDate }</td>
                            <th>조회수</th>
                            <td>${ selectNotice.viewCnt }</td>
                        </tr>
                    </thead>
                </table>
                <div class="text_area">
                    ${ selectNotice.postContent }
                </div>
                <div class="btn_box">
                    <input type="submit" value="수정하기" class="btn write_btn" style="background-color: #F89E91;">
                    <a href="${ pageContext.servletContext.contextPath }/manager/noticeSelect" class="btn prev_btn">이전</a>
                </div>
            </form>
            
        </div>
    </div>
   
    <jsp:include page="../commons/footer.jsp"/>

    <script>

    </script>
</body>
</html>
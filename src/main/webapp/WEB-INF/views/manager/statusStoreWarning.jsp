<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>신고 관리</title>
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
            <h2>리뷰 신고 현황</h2>
            <div class="top_box2">
                <input type="button" value="전체" style="color:  #F89E91;" >
                <span><input type="button" value="신고접수" ></span>
                <span><input type="button" value="처리완료" ></span>
            </div>
            <hr>
            <div>
                <div>
                <table class="table board_table">
                    <colgroup>
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
	                        <th>번호</th>
	                        <th>신고유형</th>
	                        <th>리뷰내용</th>
	                        <th>신고대상</th>
	                        <th>신고날짜</th>
	                        <th>처리 상황</th>
	                        <th>처리 분류</th>
                    	</tr>
                    </thead>
                    <tbody>
                    	<%-- <c:forEach items="${ requestScope.reportList }" var="rp"> --%>
		                    <tr>
		                        <td></td>
		                        <td></td>
		                        <td></td>
		                        <td></td>
		                        <td></td>
		                        <td></td>
		                        <td></td>
		                    </tr>
	                    <%-- </c:forEach> --%>
                    </tbody>
                  </table>
                </div>
            </div>
            <!-- 페이징 -->
            <jsp:include page="../commons/paging.jsp"/>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu4").addClass("show");
         $("#homeSubmenu4 > li:first-child > a").attr("style","color: #F89E91 !important");
    </script>
</body>
</html>
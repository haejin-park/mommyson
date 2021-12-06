<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<nav class="page_box" aria-label="Page navigation example">
        <ul class="pagination">
            <!-- 맨 앞으로 이동 버튼 -->
	    	 <li class="page-item"><a class="page-link-num" id="startPage" href="#">&laquo;</a></li>
			<!-- 이전 페이지 버튼 -->
			<c:if test="${ requestScope.pagination.pageNo > 1 }">
				<li class="page-item"><a class="page-link-num" id="prevPage" href="#">&lt;</a></li>
			</c:if>
			
			<!-- 숫자 버튼 -->
			<c:forEach var="page" begin="${ requestScope.pagination.startPage }" end="${ requestScope.pagination.endPage }" step="1">
				<c:if test="${ requestScope.pagination.pageNo eq page }">
					<li class="page-item"><a class="page-link-num pageNo" href="#"><c:out value="${ page }"/></a></li>
				</c:if>
			<!-- 현재 페이지 -->
				<c:if test="${ requestScope.pagination.pageNo ne page }">
					<li class="page-item"><a class="page-link-num pageNo" href="#"><c:out value="${ page }"/></a></li>
				</c:if>
			</c:forEach>
           
            <!-- 다음 페이지 버튼 -->
			<c:if test="${ requestScope.pagination.pageNo < requestScope.pagination.maxPage }">
				<li class="page-item"><a class="page-link-num" id="nextPage" href="#">&gt;</a></li>
			</c:if>
			<!-- 마지막 페이지로 이동 버튼 -->
				 <li class="page-item"><a class="page-link-num" id="maxPage" href="#">&raquo;</a></li> 
        </ul>
        <form action="${ pageContext.servletContext.contextPath }/manager/noticeSelect" method="GET">
            <ul>
                <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                <input type="text" name="searchValue" class="searchtext" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
                <button type="submit" class="searchbutton">검색하기</button></li>
            </ul>
        </form>
    </nav>
    
    <script>
	
        const link = "${ location.href }";
		let searchText = "";
		
		if(${ !empty requestScope.pagination.searchCondition? true: false }) {
			searchText += "&searchCondition=${ requestScope.pagination.searchCondition }";
		}
		
		if(${ !empty requestScope.pagination.searchValue? true: false }) {
			searchText += "&searchValue=${ requestScope.pagination.searchValue }";
		}
		
		if(document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function() {
				location.href = link + "?currentPage=1" + searchText;
			}
		}
		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.pagination.pageNo - 1 }" + searchText;
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.pagination.pageNo + 1 }" + searchText;
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.pagination.maxPage }" + searchText;
			}
		}
		
		$(".pageNo").click(function(){
			let pageNo = $(this).text();
			location.href = link + "?currentPage=" + pageNo + searchText;
		});
		
	</script>
</body>
</html>
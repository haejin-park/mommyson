<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <li class="page-item"><a class="page-link-num" id="startPage" href="#">&laquo;</a></li>
            <li class="page-item"><a class="page-link-num" id="prevPage" href="#">&lt;</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">1</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">2</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">3</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">4</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">5</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">6</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">7</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">8</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">9</a></li>
            <li class="page-item"><a class="page-link-num pageNo" href="#">10</a></li>
            <li class="page-item"><a class="page-link-num pageNo" id="nextPage" href="#">&gt;</a></li>
            <li class="page-item"><a class="page-link-num pageNo" id="maxPage" href="#">&raquo;</a></li>
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
		
		if(${ !empty requestScope.selectCriteria.searchCondition? true: false }) {
			searchText += "&searchCondition=${ requestScope.selectCriteria.searchCondition }";
		}
		
		if(${ !empty requestScope.selectCriteria.searchValue? true: false }) {
			searchText += "&searchValue=${ requestScope.selectCriteria.searchValue }";
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
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo - 1 }" + searchText;
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo + 1 }" + searchText;
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.maxPage }" + searchText;
			}
		}
		
		$(".pageNo").click(function(){
			let pageNo = $(this).text();
			location.href = link + "?currentPage=" + pageNo + searchText;
		})
		
	</script>
</body>
</html>
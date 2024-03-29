<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager.css">
</head>
<body>
	<nav class="page_box" aria-label="Page navigation example" style="margin-left: 460px">
        <ul class="pagination">
            <!-- 맨 앞으로 이동 버튼 -->
	    	 <li class="page-item"><a class="page-link-num" id="startPage" href="#">&laquo;</a></li>
			<!-- 이전 페이지 버튼 -->
				<li class="page-item"><a class="page-link-num" id="prevPage" href="#">&lt;</a></li>
			
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
				<li class="page-item"><a class="page-link-num" id="nextPage" href="#">&gt;</a></li>
			<!-- 마지막 페이지로 이동 버튼 -->
				 <li class="page-item"><a class="page-link-num" id="maxPage" href="#">&raquo;</a></li> 
        </ul>
        <div class="search_box">
        	<ul class="df_ul">
		        <li><img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png"></li>
		        <li><input type="text" class="searchtext" name="searchValue" id="value" placeholder="찾고싶은 내용 검색하기"></li>
		        <li><button type="submit" class="searchbutton">검색하기</button></li>
        	</ul>
        </div>
    </nav>
    
    <script>
        var link = "";
		var searchText = "";
		
		if(${ !empty requestScope.pagination.searchCondition? true : false }) {
			searchText += "&searchCondition=${ requestScope.pagination.searchCondition }";
		}
		
		if(${ !empty requestScope.pagination.searchValue? true : false }) {
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
				if((${ requestScope.pagination.pageNo ne requestScope.pagination.maxPage })){
					location.href = link + "?currentPage=${ requestScope.pagination.pageNo + 1 }" + searchText;
				} else {
					location.href = link + "?currentPage=${ requestScope.pagination.pageNo }" + searchText;
				}
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
			console.log(link);
			location.href = link + "?currentPage=" + pageNo + searchText;
		});
		
		 $(".searchbutton").on('click',function(){
	    	let searchValue = $('#value').val();
	    
	    	console.log(searchValue);
							// 현재 페이지 주소
	    	location.href = "${ location.href }?searchValue=" + searchValue;
		 }); 
		 
		 if(${ requestScope.pagination.searchValue != null && requestScope.pagination.searchValue != ''}){
	    	 $(".searchtext").attr("placeholder", "검색어 : " + "${ requestScope.pagination.searchValue }");
	    }   
		
	</script>
</body>
</html>
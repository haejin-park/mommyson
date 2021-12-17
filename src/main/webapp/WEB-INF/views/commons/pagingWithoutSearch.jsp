<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager.css">
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
    </nav>
    
    <script>
   
        var link = "";
        link = document.location.href;
        if(!(document.location.href).includes("?memCode") && !(document.location.href).includes("?type")) {
            link = document.location.pathname;
        } else if((document.location.href).includes("?memCode")) {
            link = document.location.pathname + '?memCode=${ requestScope.store.MEM_CODE }';
        } else if((document.location.href).includes("?type")) {
        	link = document.location.pathname + '?type=${ requestScope.realType }';
        }

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
            if(!(document.location.href).includes("?memCode")  && !(document.location.href).includes("?type")) {
               location.href = link + "?currentPage=1" + searchText;
              } else {
                 location.href = link + "&currentPage=1" + searchText;
              }
         }
      }
      
      if(document.getElementById("prevPage")) {
         const $prevPage = document.getElementById("prevPage");
         $prevPage.onclick = function() {
            if(!(document.location.href).includes("?memCode")  && !(document.location.href).includes("?type")) {
               location.href = link + "?currentPage=${ requestScope.pagination.pageNo - 1 }" + searchText;
              } else {
                 location.href = link + "&currentPage=${ requestScope.pagination.pageNo - 1 }" + searchText;
              }
         }
      }
      
      if(document.getElementById("nextPage")) {
         const $nextPage = document.getElementById("nextPage");
         $nextPage.onclick = function() {
            if(!(document.location.href).includes("?memCode")  && !(document.location.href).includes("?type")) {
               location.href = link + "?currentPage=${ requestScope.pagination.pageNo + 1 }" + searchText;
            } else {
               location.href = link + "&currentPage=${ requestScope.pagination.pageNo + 1 }" + searchText;
            }
         }
      }
      
      if(document.getElementById("maxPage")) {
         const $maxPage = document.getElementById("maxPage");
         $maxPage.onclick = function() {
            if(!(document.location.href).includes("?memCode")  && !(document.location.href).includes("?type")) {
               location.href = link + "?currentPage=${ requestScope.pagination.maxPage }" + searchText;
              } else {
                 location.href = link + "&currentPage=${ requestScope.pagination.maxPage }" + searchText;
              }
         }
      }
      
      $(".pageNo").click(function(){
         let pageNo = $(this).text();
         console.log(link);
         location.href = link + "?currentPage=" + pageNo + searchText;
         if(!(document.location.href).includes("?memCode")  && !(document.location.href).includes("?type")) {
             location.href = link + "?currentPage=" + pageNo + searchText;
         } else {
             location.href = link + "&currentPage=" + pageNo + searchText;
         }
      });
      
      function search_onclick_submit(){
			let searchValue = $('input[name=searchValue]').val();
			console.log(searchValue);
			// 현재 페이지 주소
			if((document.location.href).includes("?searchCondition") && (document.location.href).includes("&searchValue")) {
				location.href = document.location.pathname + "?searchCondition=${ requestScope.pagination.searchCondition }" + "&searchValue=" + searchValue;
			} else if((document.location.href).includes("?searchCondition")){
				location.href = document.location.href + "&searchValue=" + searchValue;
	 		} else if((document.location.href).includes("?searchValue") || (document.location.href).includes("&searchValue")){
				location.href = document.location.pathname + "?searchValue=" + searchValue;
	 		} else {
	 			location.href = document.location.href + "?searchValue=" + searchValue;
	 		}
			
		};
   </script>
</body>
</html>
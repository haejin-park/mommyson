<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>소비자 1:1문의</title>
</head>
<body>
	<header class="manager_header at-container">
		<img
			src="${ pageContext.servletContext.contextPath }/resources/images/managerLogo.png"
			alt="마미손맛 MANAGEMENT"> <a href="../main.html" class="home_btn">
			<img
			src="${ pageContext.servletContext.contextPath }/resources/images/mainHome.png"
			alt="메인화면으로">
			<p>메인화면으로</p>
		</a>
	</header>
	<div class="head_line"></div>
	<div class="at-container total_container">

		<jsp:include page="../commons/managerSidebar.jsp"></jsp:include>

		<div class="board_container">
			<div class="title_border">
				<a class="title_a">소비자</a><a class="title_b">&nbsp;&nbsp;⏤ 1:1
					문의 조회</a>
			</div>
			<hr>
			<form action="${ pageContext.servletContext.contextPath }/manager/normalInquiry" method="GET">
				<div class="itab tab_pink" id="all"
					onclick="location.href='${ pageContext.servletContext.contextPath }/manager/normalInquiry'">전체</div>
				<div class="itab tab_both" id="no"
					onclick="location.href='${ pageContext.servletContext.contextPath }/manager/normalInquiry?searchCondition=N'">미답변</div>
				<div class="itab tab_both" id="yes"
					onclick="location.href='${ pageContext.servletContext.contextPath }/manager/normalInquiry?searchCondition=Y'">답변완료</div>

				<table class="table board_table">
					<colgroup>
						<col width="5%"/>
						<col width="10%"/>
						<col width="50%"/>
						<col width="10%"/>
						<col width="15%"/>
						<col width="10%"/>
					</colgroup>
					<thead style="background-color: #EDEDED;">
						<tr>
							<th></th>
							<th>문의 유형</th>
							<th>제목</th>
							<th>아이디</th>
							<th>문의날짜</th>
							<th>답변여부</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${ requestScope.normalInquiryList }" var="ni" varStatus="status">
					<c:set var="num" value="${(pagination.totalCount-status.index) - ((pagination.pageNo-1) * 10)}"/>
						<tr>
							<td>${ num }</td>
							<td>
							<c:if test="${ ni.boardCode eq '12' }">회원가입</c:if>
							<c:if test="${ ni.boardCode eq '13' }">결제주문</c:if>
							<c:if test="${ ni.boardCode eq '14' }">리뷰관리</c:if>
							<c:if test="${ ni.boardCode eq '15' }">이용문의</c:if>
							<c:if test="${ ni.boardCode eq '16' }">불편관리</c:if>
							<c:if test="${ ni.boardCode eq '17' }">기타</c:if>
							</td>
							<td><a href="${ pageContext.servletContext.contextPath }/manager/normalAnswer?queNo=${ ni.queNo }">${ ni.postTitle }</a></td>
							<td>${ ni.member.memId }</td>
							<td>${ ni.postDate }</td>
							<td>
							<c:if test="${ ni.ansStatus eq 'W'}"><img src="${ pageContext.servletContext.contextPath }/resources/images/pink_btn.png"></c:if>
							<c:if test="${ ni.ansStatus eq 'Y'}"><img src="${ pageContext.servletContext.contextPath }/resources/images/gray_btn.png"></c:if>							
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				</form>

				<jsp:include page="../commons/paging.jsp" />
		</div>
	</div>

	<jsp:include page="../commons/footer.jsp" />

	<script>
         $("#homeSubmenu3").addClass("show");
         $("#homeSubmenu3 > li:last-child > a").attr("style","color: #F89E91 !important");
         
         if((document.location.href).includes("?searchCondition=N")){
        		if($('#all').hasClass('tab_pink')){
    	        	 $('#all').removeClass('tab_pink');
    	        	 $('#all').addClass('tab_both');
            	}
            	if($('#yes').hasClass('tab_pink')){
    	        	 $('#yes').removeClass('tab_pink');
    	        	 $('#yes').addClass('tab_both');
            	} 
    	        	 $('#no').removeClass('tab_both');
    				 $('#no').addClass('tab_pink');
    				 
        	 } else if((document.location.href).includes("searchCondition=Y")){
        		 if($('#all').hasClass('tab_pink')){
                	 $('#all').removeClass('tab_pink');
                	 $('#all').addClass('tab_both');
                 }
               	 if($('#no').hasClass('tab_pink')){
               	     $('#no').removeClass('tab_pink');
               	     $('#no').addClass('tab_both');
                 } 
                	 $('#yes').removeClass('tab_both');
        			 $('#yes').addClass('tab_pink');
        			 
        	 } else {
        		 if($('#no').hasClass('tab_pink')){
                	 $('#no').removeClass('tab_pink');
                	 $('#no').addClass('tab_both');
                	}
                 if($('#yes').hasClass('tab_pink')){
                	 $('#yes').removeClass('tab_pink');
                	 $('#yes').addClass('tab_both');
                	} 
                	 $('#all').removeClass('tab_both');
        			 $('#all').addClass('tab_pink');
        	 }
         
     </script>
</body>
</html>
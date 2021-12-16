<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet"
		href="${ pageContext.servletContext.contextPath }/resources/css/coupon.css">
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
		integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
	<title>주문관리</title>
	</head>
	<body>
	<!-- header -->
	<jsp:include page="../commons/header.jsp" />

	<br><br><br>
	<div class="page-text" style="width: 1550px; margin: 0 auto;">
		<h3 style="margin-left: 100px; font-weight: 900; margin-bottom: 10px">주문
			관리</h3>
	</div>
	
	<div class="body-all">
		<div class="body-inside">

		<!-- sidebar  -->
		<jsp:include page="../commons/ownerSidebar.jsp" />


		<div style="margin-left: 450px;">
			<ul class="nav nav-tabs" id="myTab" role="tablist"
				style="margin-bottom: 50px;">
				<li class="nav-item" role="presentation"><a
					class="nav-link active" id="home-tab" data-toggle="tab"
					href="#home" role="tab" aria-controls="home" aria-selected="true">주문
						접수</a></li>
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="profile-tab" data-toggle="tab" href="#profile" role="tab"
					aria-controls="profile" aria-selected="false">완료된 주문</a></li>
			</ul>
		</div>
		<div style="text-align: center">
			<img
				src="${ pageContext.servletContext.contextPath }/${ owner.ceo.store.storeImg }"
				width="300px"><br>
			<br>
		</div>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">
			<div>
				<br>
				<c:set var="today" value="<%=new java.util.Date()%>" />
				<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set>
				<p style="text-align: right; font-size:large; margin-bottom: 10px">주문 접수일 : <c:out value="${date}" /></p>
			</div>
			<div style="text-align: center;">
				<div style="margin-left: 450px;">
					<table class="table table" style="width: 1050px; ">
						<thead style="background-color: #EDEDED;">
						<tr>
							<th scope="col">주문 시간</th>
							<th scope="col">주문 번호</th>
							<th scope="col">고객명</th>
							<th scope="col">주문 유형</th>
							<th scope="col">주문 상품</th>
							<th scope="col">접수 상태</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ orderList }" var="ol">
						<tr>
							<th scope="row">${ ol.acceptTime }</th>
							<td>${ ol.orderCode }</td>
							<td>${ ol.memberDTO.nickname }</td>
							<td>${ ol.orderType }</td>
							
							<td  style="vertical-align: baseline ;">
							<button type="button" value="${ ol.orderCode }" class="detailOD" data-toggle="modal" data-target="#exampleModal" 
							style="height: 40px; border: none; background: none; color: black;">
							
							<!-- 주문한 상품이 두개 이상이면 두개까지 보여주고 ...으로 대체  -->
							<c:if test="${ ol.product.size() > 2 }">
							<c:forEach items="${ ol.product }" var="p" varStatus="status" begin="0" end="1" step="1">
							${ p }<c:if test="${ !status.last }">,</c:if><c:if test="${ status.last }">...</c:if>
							</c:forEach>
							</c:if>
							
							<c:if test="${ ol.product.size() < 2 }">
							<c:forEach items="${ ol.product }" var="p" varStatus="status">
							${ p }<c:if test="${ !status.last }">,</c:if>
							</c:forEach>
							</c:if>
							</button>
							</td>
							
							<td><button class="couponBtn" id="btn1">접수</button>
								&nbsp;&nbsp;
								<button class="couponBtn" id="can1"
									style="background-color: #777777;">취소</button></td>
						</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>
				<!-- 페이지네이션 -->
				<div style="margin-left: 450px; position: relative; top: 400px;">
				<jsp:include page="../commons/pagingWithoutSearch.jsp"/>
				</div>
			</div>
			</div>
		<div class="tab-pane fade" id="profile" role="tabpanel"
			aria-labelledby="profile-tab">
			<div style="text-align: center;">
				<div style="margin-left: 450px;">
				
				<!-- 기간 조회 -->
				<div style="float: right;"> 
			      <p style="float: left; margin-right: 15px; font-weight: 700;">조회 일자 &nbsp;&nbsp;&nbsp;<input type="date" min="" id=""></p>
			      <p style="float: left;margin-right: 15px;">~ &nbsp;&nbsp; <input type="date" id="now_date"/></p>
			      <button type="submit" class="couponBtn" style="width: 80px; margin-top: 2px;">조회하기</button>
   						</div><br><br>
   						
				<table class="table table" style="width: 1050px;">
					<thead style="background-color: #EDEDED;">
						<tr>
							<th scope="col">주문 번호</th>
							<th scope="col">주문일</th>
							<th scope="col">고객명</th>
							<th scope="col">주문상품</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ orderList }" var="ol">
							<tr>
								<th scope="row">${ ol.orderCode }</th>
								<td>${ ol.acceptTime }</td>
								<td>${ ol.memberDTO.nickname }</td>
								
								<td>
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="height: 40px;">
								<!-- 주문한 상품이 두개 이상이면 두개까지 보여주고 ...으로 대체  -->
								<c:if test="${ ol.product.size() > 2 }">
								<c:forEach items="${ ol.product }" var="p" varStatus="status" begin="0" end="1" step="1">
								${ p }<c:if test="${ !status.last }">,</c:if><c:if test="${ status.last }">...</c:if>
								</c:forEach>
								</c:if>
								
								<c:if test="${ ol.product.size() < 2 }">
								<c:forEach items="${ ol.product }" var="p" varStatus="status">
								${ p }<c:if test="${ !status.last }">,</c:if>
								</c:forEach>
								</c:if>
								</button>
								</td>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
				
				<!-- 페이지네이션 -->
				<div style="margin-left: 450px; position: relative; top: 400px;">
				<jsp:include page="../commons/pagingWithoutSearch.jsp"/>
				</div>
				
				</div>
			</div>
		</div>
	</div>
		
		<!-- 모달 -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
	    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" style="max-width: 800px !important;">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="exampleModalLabel" style="text-align: center;">주문 상세보기</h5>
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	            <span aria-hidden="true">&times;</span>
	          </button>
	        </div>
	        <div class="modal-body" style="margin: 0 auto;">
	          <br>
	          <table class="table table" id="orderDetail" style="width: 700px; text-align: center;">
	          <thead>
              <tr>
                <th scope="row" style=" background-color: rgba(252, 235, 233, 1);">주문 일자</th>
                <th scope="row" style=" background-color: rgba(252, 235, 233, 1);">주문 번호</th>
                <th scope="row" style=" background-color: rgba(252, 235, 233, 1);">고객명</th>
                <th scope="row" style=" background-color: rgba(252, 235, 233, 1);">주문 유형</th>
                <th scope="row" style=" background-color: rgba(252, 235, 233, 1);">주문 상품</th>
              </tr>
	          </thead>
            <tbody>
               
            </tbody>
          </table>
	          <br><br>
	        </div>
	        <div class="modal-footer">
	          <button type="reset" class="btn btn-secondary" data-dismiss="modal" style="margin: 0 auto;">닫기</button>
	        </div>
	      </div>
	    </div>
	    </div>

		<script>
     $(function() {
        $('#btn1').click( function() {
          if( $(this).html() == '접수' ) {
            $(this).html('완료').css("background-color","#68BF6B")
          }
        });
     
        $('#can1').click( function() {
            $("#btn1").remove();
            $("#can1").css("background-color","#AEAEAE").html("접수 취소")
        });
      
      $('#myTab a').on('click', function (event) {
    	  event.preventDefault()
    	  $(this).tab('show')
    	});
    
      /* $('#detailOD').on('click', function (event) {
    	  let orderCode2 = $(this).val();
      }); */
    	
     /* 모달로 orderCode 넘겨주기 */
     $('.detailOD').click(function(e) {
    	let orderCode = e.target.value;  // id가 아닌 클래스로 먹여야 나온다....
    	console.log(orderCode);
    	
    	$.ajax({
    		url : '${ pageContext.servletContext.contextPath }/owner/order',
    		type : 'post',
    		data : { orderCode : orderCode},
    		success : function(data){
    			console.log(data);
    			
    			const $table = $("#orderDetail tbody");
				$table.html("");
				
				/* 변수 선언 부분 */
					$tr = $("<tr>");
					$orderTime = $("<td>").text(data.acceptTime);
					$orderNum = $("<td>").text(data.orderInfoDTO.orderCode);
					$customer = $("<td>").text(data.memberDTO.nickname);
					$ordertype = $("<td>").text(data.orderType);
					$product = $("<td>").text(data.product);
					
					console.log($customer);
					
					$tr.append($orderTime);
					$tr.append($orderNum);
					$tr.append($customer);
					$tr.append($ordertype);
					$tr.append($product);
					$table.append($tr);
    			}
      		}); 
    	 });
     });
      
    </script>

	<!-- footer -->
	<jsp:include page="../commons/footer.jsp" />

</body>
</html>
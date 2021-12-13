<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/coupon.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>주문관리</title>
</head>
<body>
	<header>
	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	</header>
	
	<section>
	<br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 100px; font-weight: 900; margin-bottom: 10px">주문 관리</h3>
        
    </div>
	
	<div class="body-all">
      <div class="body-inside">
      
        <!-- sidebar  -->
        <jsp:include page="../commons/ownerSidebar.jsp"/>
        
    
	<div style="margin-left: 450px;">
		<ul class="nav nav-tabs" id="myTab" role="tablist" style="margin-bottom : 50px;">
		  <li class="nav-item" role="presentation">
		    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">주문 접수</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">완료된 주문</a>
		  </li>
		</ul>
	</div>
	<div style="text-align: center">
		<img src="${ pageContext.servletContext.contextPath }/${ owner.ceo.store.storeImg }" width="300px"><br><br>
	</div>
		<div class="tab-content" id="myTabContent">
		  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
		    <div>
		      <br>
		      <p style="text-align: right;">주문 접수일 : 2021-11-23</p>
		    </div>
			<div style="text-align: center;">
	        <div style="margin-left: 450px;">
	        <table class="table table" style="width: 1050px;">
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
	                <td>${ ol.productDTO.sdName }</td>
	                <td><button class="couponBtn" id="btn1">접수</button> &nbsp;&nbsp; <button class="couponBtn" id="can1" style="background-color: #777777;">취소</button></td>
	              </tr>
	              </c:forEach>
	            </tbody>
	          </table>
	        </div>
		 	</div>
		</div>
		  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab"> 
		  	<div style="text-align: center;">
	        <div style="margin-left: 450px;">
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
	                <td>${ ol.productDTO.sdName }</td>
	              </tr>
	              </c:forEach>
	            </tbody>
	          </table>
	        </div>
		 	</div>
		  </div>        
    
    <br>
    
        <div>
        	<br><br><br>
            <nav aria-label="Page navigation example" style="margin-left: 450px;">
                <ul class="pagination" style="justify-content: center;">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
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
      });
      $(function() {
        $('#can1').click( function() {
            $("#btn1").remove();
            $("#can1").css("background-color","#AEAEAE").html("접수 취소")
        });
      });
      
      $('#myTab a').on('click', function (event) {
    	  event.preventDefault()
    	  $(this).tab('show')
    	})
    </script>  
    </section>
	
	    <!-- footer -->
	  <jsp:include page="../commons/footer.jsp"/>
    
</body>
</html>
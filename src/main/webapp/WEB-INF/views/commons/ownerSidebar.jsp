<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage-sidebar.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
		<div class="side-all">
            <div class="side-1">
                <br>
                <form action="" method="post" id="ownerFrm">
                    <img src="${ pageContext.servletContext.contextPath }/${ sessionScope.owner.ceo.store.storeImg }" width="150px;"><br> <hr>
                    <h3>${ sessionScope.owner.ceo.name }사장님</h3>
                    <br>
                    <h5>21-11-22 ~</h5>
                    <h6>정액제 사용중</h6>
                    <h6>만료일 : 22-2-22</h6>
                    <input type="hidden" name="statusYN">
                </form><br>

                <a href="${ pageContext.servletContext.contextPath }/owner/ownerPay">
                <button style="background-color: rgba(248, 158, 145, 1); border: none; border-radius: 5px; color: white; width: 100px; margin-bottom: 10px;" id="pay">연장하기</button>
                </a>
                <hr>
               	<c:if test="${ sessionScope.loginMember.ceo.store.statusYN == 'Y' }">
                	<button id="button3" style="margin-top: 10px; margin-bottom: 30px;">영업중</button> 
                </c:if>
                <c:if test="${ sessionScope.loginMember.ceo.store.statusYN == 'N' }">
                	<button id="button3" style="margin-top: 10px; margin-bottom: 30px; background-color: #777777">영업시작</button> 
                </c:if>
                </div>
            <script>
            $(function(){
              	$("#button3").click(function(){
              		let result = "";
                    if($("#button3").html() == "영업시작"){
                      $(this).css("background-color","#F89E91").html("영업중");
                      result = "Y";
                    } else{
                      $(this).css("background-color","#777777").html("영업시작");
                      result="N";
                    }
                    
                    $.ajax({
                    	url : '${ pageContext.servletContext.contextPath }/owner/ownerSidebar',
                    	type : 'post',
                    	data : { statusYN : result },
                    	success : function(data){
                    		console.log(data);
                    	}
                    })
               });
              	
               $('#pay').click(function(){
            	   
               })	
            });
                </script> 
                
            
            <div class="side-2" style="width: 300px; ">
              <nav id="sidebar" style="min-width: 295px; max-width: 295px;">
              <ul class="list-unstyled components">
	             <li>
                   <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false">정보변경</a><hr>
                   <ul class="collapse list-unstyled" id="pageSubmenu3">
                       <li>
                           <a href="${ pageContext.servletContext.contextPath }/owner/modifyStore">가게정보 변경</a>
                       </li>
                       <li>
                           <a href="${ pageContext.servletContext.contextPath }/owner/modifyOwnerInfo">비밀번호 변경</a>
                       </li>
                   </ul>
                </li>
            	  <li class="active">
                            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">상품관리</a><hr>
                            <ul class="collapse list-unstyled" id="homeSubmenu">
                                <li>

                                    <a href="${ pageContext.servletContext.contextPath }/owner/productRegist">상품등록</a>
                                </li>
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/productManagement">판매 상품 관리</a>
                                </li>
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/todayDiscount">오늘의 할인</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">주문관리</a><hr>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/order">주문접수</a>
                                </li>
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/order2">완료된 주문</a>
                                </li>
                            
                            </ul>
                        </li>
                        <li>
                            <a href="${ pageContext.servletContext.contextPath }/owner/coupon">쿠폰발행</a>
                        </li><hr>
                        <li>
                            <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">매출내역</a><hr>
                            <ul class="collapse list-unstyled 1" id="pageSubmenu1">
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/salesDay">일별 매출</a>
                                </li>
                                <li>
                                    <a href="#">월별 매출</a>
                                </li>
                                <li>
                                    <a href="#">정산</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false">고객관리</a><hr>
                            <ul class="collapse list-unstyled" id="pageSubmenu2">
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/review">리뷰관리</a>
                                </li>                                                            
                            </ul>
                        </li>
                        
                        <li>
                            <a href="#">탈퇴하기</a>
                        </li>
		              </ul>
		          </nav>
	     		<script>
		      		$(document).ready(function(){
		              $('#sidebarCollapse').on('click', function () {
		                  $('#sidebar').toggleClass('active');
		              });
		          	});
	      	</script> 
     	 </div>
   	 </div>
</body>
</html>
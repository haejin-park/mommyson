<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
            <nav id="sidebar">
              <div class="sidebar-header">
                  <h3 style="border-bottom: black solid 2px;"><a href="${ pageContext.servletContext.contextPath }/userMyPage/" style="color: black;">마이페이지</a></h3>
              </div>
  
              <ul class="list-unstyled components">
                  <li>
                      <a href="${ pageContext.servletContext.contextPath }/userMyPage/myOrderList">주문내역</a>
                  </li>                 
                  <li>
                      <a href="${ pageContext.servletContext.contextPath }/userMyPage/userInfoChange">개인정보변경</a>
                  </li>
                  <li>
                      <a href="${ pageContext.servletContext.contextPath }/userMyPage/userSignOut1">회원탈퇴</a>
                  </li>
                  <li>
                    <a href="${ pageContext.servletContext.contextPath }/userMyPage/userCoupon">쿠폰함</a>
                </li>
                <li>
                  <a href="${ pageContext.servletContext.contextPath }/userMyPage/userReview">내가 쓴 리뷰</a>
              </li>
              <li>
                <a href="${ pageContext.servletContext.contextPath }/userMyPage/userRecommendStore">자주찾는가게</a>
               </li>
              </ul>
              
          </nav>
          <!-- <img src="${ pageContext.servletContext.contextPath }/resources/images/customerServiceImg.png" id="customerguide"> -->

			<script>
		      $(document).ready(function () {
		            $('#sidebarCollapse').on('click', function () {
		                $('#sidebar').toggleClass('active');
		            });
		        });
		    </script>	
         
  </body>
  </html>
    
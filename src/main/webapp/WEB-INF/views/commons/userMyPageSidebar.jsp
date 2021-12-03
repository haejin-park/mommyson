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
                  <h3>마이페이지</h3>
              </div>
  
              <ul class="list-unstyled components">
                  <li>
                      <a href="#">주문내역</a>
                  </li>                 
                  <li>
                      <a href="#">개인정보변경</a>
                  </li>
                  <li>
                      <a href="#">회원탈퇴</a>
                  </li>
                  <li>
                    <a href="#">쿠폰함</a>
                </li>
                <li>
                  <a href="#">내가 쓴 리뷰</a>
              </li>
              <li>
                <a href="#">자주찾는가게</a>
               </li>
               <li>
                <a href="#">나의 신고 내역</a>
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
    
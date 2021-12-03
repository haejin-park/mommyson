<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owners.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/store_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>우리동네 인기맛집</title>
    <style>
    	.col-3 {
    		display: flex;
    		flex-direction: column;
    	}
    	
    	.container-xl {
    		max-width: 1300px !important;
    	}
    	
    	.row {
   		    padding-left: 70px;
    	}
    	
    	.store_name {
   		    margin-bottom: 20px;
    	}
    </style>
</head>
<body>
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    
    <jsp:include page="../commons/header.jsp"/>

    <section class="at-container">
    	  <div class="store-all" style="text-align: center;">
        <br><br>
        <h1 style="margin-top: 80px;">${ requestScope.type }</h1>
        <br><br><br><br>
        <div class="container-xl" style="margin-top: 50px;">
            <div class="row">
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
                <div class="col-3">
                    <img class="logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
	                <div class="store_name" style="text-align: center; width: 200px; font-size: large;"><br>
	                <a href="#" class="menu_name">토토반찬</a>
	                <div class="menu_div2">
	                    <pre style="font-size: 13pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
	                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
	                    </svg> <strong style="margin-right: 10px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
	                </div>
	                </div>
                </div>
	       </div>
	       <!-- 페이지네이션 -->
	       <div style="display: flex; align-items: center; flex-direction: column; margin-top: 100px;">
	           <nav aria-label="Page navigation example">
	               <ul class="pagination">
	                 <li class="page-item">
	                   <a class="page-link" href="#" aria-label="Previous">
	                     <span aria-hidden="true">&laquo;</span>
	                   </a>
	                 </li>
	                 <li class="page-item"><a class="page-link" href="#">1</a></li>
	                 <li class="page-item"><a class="page-link" href="#">2</a></li>
	                 <li class="page-item"><a class="page-link" href="#">3</a></li>
	                 <li class="page-item"><a class="page-link" href="#">4</a></li>
	                 <li class="page-item"><a class="page-link" href="#">5</a></li>
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

      <c:if test="${ sessionScope.loginMember != null }">
       	<div id="cart_logo">
       		<button onclick="location.href='${ pageContext.servletContext.contextPath }/user/cart'"><img src="${ pageContext.servletContext.contextPath }/resources/images/cart_logo.png"></button>
       	</div>
      </c:if>
    </section>

      <footer class="at-container">
        <ul class="df_ul ft_list">
            <li>
                <a href="">마미손맛 소개</a>   
            </li>
            <li>
                <a href="">이용약관</a>
            </li>
            <li>
                <a href="">개인정보처리방침</a>
            </li>
            <li>
                <a href="">전자금융거래이용약관</a>
            </li>
        </ul>
        <div class="ft_img_line">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img01.png" alt="소비자중심경영">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
        </div>
        <div class="ft_info">
            <p>대표 : 유승제 / 주소 : 서울특별시 서초구 서초대로78길 48 송림빌딩 13층</p>
            <p>사업자번호 : 123-45-67890 / 통신판매업신고 : 제 2021-서울-503호 / 개인정보 정책 및 담당 : 김준희</p>
            <p>대표번호 : 1588-0000 / 팩스번호 : 02-123-1234 / 이메일 : mommysonmat@greedy.com</p>
            <p>ⓒ SSEULEODAMJO CORP. All Rights Reserved.</p>
        </div>
        <div class="manager_center">
            <h4>고객센터</h4>
            <div class="callNum">
                <img src="${ pageContext.servletContext.contextPath }/resources/images/callImg.png" alt="call">
                <span>1644 - 1234</span>    
            </div>
            <p>평일 10:00~18:50</p>
            <p>점심시간 12:00~13:00</p>
            <p>(주말과 공휴일은 휴무입니다.)</p>
        </div>
    </footer>
</body>
</html>
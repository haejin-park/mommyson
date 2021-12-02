<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>header</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    </head>
<body>
    <header class="header">
      <div class="headerTop">
        <div class="headerBody">
          <a href="${ pageContext.servletContext.contextPath }/"><img src="${ pageContext.servletContext.contextPath }/resources/images/mainlogo.png" style="width: 300px;"></a>
          <br><br><br>
            <div class="bodyLeft" style="display: block;">
                <ul class="df_ul headerItem">
                <!-- 로그인 후 -->
                <c:if test="${ sessionScope.loginMember != null }">
                	<!-- 소비자의 경우 -->
                    <c:if test="${ sessionScope.loginMember.memType == 'user' }">
	                  	<li id="ca_lo">
	                    	<a href="${ pageContext.servletContext.contextPath }/user/cart">장바구니</a>
	                  	</li>
                    </c:if>
                    <!-- 사업자의 경우 -->
                    <c:if test="${ sessionScope.loginMember.memType == 'ceo' }">
	                  	<li>
	                    	<a href="${ pageContext.servletContext.contextPath }/user/cart">상점관리</a>
	                  	</li>
                    </c:if>
                    <!-- 관리자의 경우 -->
                    <c:if test="${ sessionScope.loginMember.memType == 'manager' }">
	                  	<li>
	                    	<a href="${ pageContext.servletContext.contextPath }/manager/normalMember">관리페이지</a>
	                  	</li>
                    </c:if>
                  <li>
                  	<a href="#"><img style="height: 35px" src="${ pageContext.servletContext.contextPath }/resources/images/profile.png">${ sessionScope.loginMember.nickname }</a>
                  </li>
                  <li>
                    <a href="${ pageContext.servletContext.contextPath }/member/logout">로그아웃</a>
                  </li>
                  <li >
                    <a href="#"><img src="${ pageContext.servletContext.contextPath }/resources/images/bell.png"></a>
                  </li>
                </c:if>
                
                <!-- 로그인 전 -->
                <c:if test="${ sessionScope.loginMember == null }">
                  <li>
                    <a  href="${ pageContext.servletContext.contextPath }/member/login">로그인</a>
                  </li>
                  <li >
                    <a href="">회원가입</a>
                  </li>
                </c:if>
              </ul>
          </div>
        </div>
      </div>  
    </header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width: 1550px; margin: 0 auto;">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false" style="margin-left: 50px; font-weight: 700; color: black">
                	전체 카테고리
                </a>
            <script>
	            $(function() {
	        	// 카테고리 리스트 불러오기
	        	$('#categoryList').append(
	        				'<div class="col-2">' +
	        		<c:forEach items="${ sessionScope.categoryList }" var="categoryList" end="3">
        					'<a href="${ pageContext.servletContext.contextPath }/user/category/${ categoryList.CATEGORY_CODE }">' + '<c:out value = "${ categoryList.CATEGORY_NAME }"/>' + '</a>' +
	        		</c:forEach>
	        				'</div>' +
	        				'<div class="col-1"></div>'
	        		);
	        	
	        	$('#categoryList').append(
	        				'<div class="col-2">' +
	        		<c:forEach items="${ sessionScope.categoryList }" var="categoryList" begin="4" end="7">
        					'<a href="${ pageContext.servletContext.contextPath }/user/category/${ categoryList.CATEGORY_CODE }">' + '<c:out value = "${ categoryList.CATEGORY_NAME }"/>' + '</a>' +
	        		</c:forEach>
	        				'</div>' +
	        				'<div class="col-1"></div>'
	        		);
	        	
	        	$('#categoryList').append(
	        				'<div class="col-2">' +
	        		<c:forEach items="${ sessionScope.categoryList }" var="categoryList" begin="8" end="11">
        					'<a href="${ pageContext.servletContext.contextPath }/user/category/${ categoryList.CATEGORY_CODE }">' + '<c:out value = "${ categoryList.CATEGORY_NAME }"/>' + '</a>' +
	        		</c:forEach>
	        				'</div>' +
	        				'<div class="col-1"></div>'
	        		);
	        	
	        	$('#categoryList').append(
	        				'<div class="col-2">' +
	        		<c:forEach items="${ sessionScope.categoryList }" var="categoryList" begin="12" end="15">
        					'<a href="${ pageContext.servletContext.contextPath }/user/category/${ categoryList.CATEGORY_CODE }">' + '<c:out value = "${ categoryList.CATEGORY_NAME }"/>' + '</a>' +
	        		</c:forEach>
	        				'</div>' +
	        				'<div class="col-1"></div>'
	        		);
	    		})
            </script>
            
            <div class="dropdown-menu">
                <div class="dropdown-content" aria-labelledby="navbarDropdown">
                <!-- 카테고리 리스트 -->
                    <div class="row" id="categoryList">
                    </div>
                </div>
            </div> 
            </li>
            <a href="${ pageContext.servletContext.contextPath }/user/category/recommend" style="margin-left: 100px;">오늘의 추천</a>
            <a href="${ pageContext.servletContext.contextPath }/user/category/famous">우리동네 인기 맛집</a>
            <a href="${ pageContext.servletContext.contextPath }/user/category/sale">오늘만 할인</a>
            <a href="${ pageContext.servletContext.contextPath }/user/category/recommend">이벤트</a>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" id="search" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
    <!-- 태그 div -->
    <div id="tags" style="display: none;">
        <div style="display: flex; justify-content: space-between; width: 100%; margin: 10px;">
          <input type="button" class="tag" value="#무침">
          <input type="button" class="tag" value="#볶음">
          <input type="button" class="tag" value="#조림">
          <input type="button" class="tag" value="#김치/절임/젓갈">
          <input type="button" class="tag" value="#전/생선">
        </div>
        <div style="display: flex; justify-content: space-between; width: 100%; margin: 10px;">
         <input type="button" class="tag" value="#국/찌개/탕">
         <input type="button" class="tag" value="#메인요리">
         <input type="button" class="tag" value="#곡류/양념">
         <input type="button" class="tag" value="#매콤한">
         <input type="button" class="tag" value="#달콤한">
        </div>
        <div style="display: flex; justify-content: space-between; width: 100%; margin: 10px;">
         <input type="button" class="tag" value="#얼큰한">
         <input type="button" class="tag" value="#톡쏘는">
         <input type="button" class="tag" value="#짭짤한">
         <input type="button" class="tag" value="#시원한">
         <input type="button" class="tag" value="#부드러운">
        </div>
      </div>
      <script>
        // 태그 div 출력 이벤트
        $('#search').on('keyup', function() {
          let text = $('#search').val();
          if(text.charAt(text.length-1) == '#') {
           $('#tags').css('display', 'block');
          } else {
           $('#tags').css('display', 'none');
          }
        });

        // 태그 클릭 이벤트
        $('.tag').on('click',function(e) {
         
         let text = $('#search').val();
         let index = text.lastIndexOf('#');
         let replace = text.replaceAt(index, e.target.value + ", ");
         $('#search').val(replace);
         $('#tags').css('display', 'none');
         $('#search').focus();
        });

        String.prototype.replaceAt=function(index, character) {
          return this.substr(0, index) + character + this.substr(index+character.length); 
        }
      </script>
</body>
</html>
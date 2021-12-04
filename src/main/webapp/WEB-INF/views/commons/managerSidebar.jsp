<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="KO">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>매니저 사이드메뉴</title>
	<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage-sidebar.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/buisnessMember.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
	<div class="side-2 side_menu">
		<nav id="sidebar">
		    <ul class="list-unstyled components sidebar_list">
		    	<li>
		    		<select name="location" id="location" class="manager_location"></select>
		    	</li>
		        <li class="active" id="active_menu">
		            <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">회원관리</a>
		            <ul class="collapse list-unstyled" id="homeSubmenu1">
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/normalMember">일반 회원 조회</a>
		                </li>
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/buisnessMember">사업자 회원 조회</a>
		                </li>
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/blackMember">블랙 회원 조회</a>
		                </li>
		            </ul>
		        </li>
		        <li class="active">
		            <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">게시글 관리</a>
		            <ul class="collapse list-unstyled" id="homeSubmenu2">
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/noticeSelect">공지사항</a>
		                </li>
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/oftenQuestion">자주하는 질문</a>
		                </li>
		            </ul>
		        </li>
		        <li class="active">
		            <a href="#homeSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">1:1 문의</a>
		            <ul class="collapse list-unstyled" id="homeSubmenu3">
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/businessInquiry">사업자</a>
		                </li>
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/normalInquiry">소비자</a>
		                </li>
		            </ul>
		        </li>
		        <li class="active">
		            <a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">신고 관리</a>
		            <ul class="collapse list-unstyled" id="homeSubmenu4">
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/statusStoreWarning">가게 신고 현황</a>
		                </li>
		            </ul>
		        </li>
		        <li class="active">
		            <a href="#homeSubmenu5" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">설정 관리</a>
		            <ul class="collapse list-unstyled" id="homeSubmenu5">
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/bannerManage">배너 설정</a>
		                </li>
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/tagManage">태그 설정</a>
		                </li>
		                <li>
		                	<a href="${ pageContext.servletContext.contextPath }/manager/categoryManage">카테고리 설정</a>
		                </li>
		            </ul>
		        </li>
		        <li class="active">
		            <a href="#homeSubmenu6" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">관리자 관리</a>
		            <ul class="collapse list-unstyled" id="homeSubmenu6">
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/manageManager">관리자 조회</a>
		                </li>
		                <li>
		                    <a href="${ pageContext.servletContext.contextPath }/manager/createManager">관리자 아이디 생성</a>
	                    </li>
	                </ul>
	            </li>
	            <li class="active">
                        <a href="#homeSubmenu7" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">정산</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu7">
                            <li>
                                <a href="${ pageContext.servletContext.contextPath }/manager/taxAdjustment ">관리자 정산</a>
                            </li>
                        </ul>
                    </li>
	        </ul>
    	</nav>
	</div>
	<script>
    	$(function() {
    		<c:forEach items="${ sessionScope.locationList }" var="locationList">
			$('#location').append('<option value = ' + '<c:out value = "${ locationList.LOCATION_CODE }"/>' + '>'
						 + '<c:out value = "${ locationList.LOCATION_NAME }" /></option>')
			</c:forEach>
    	})
    </script>
	
</body>
</html>
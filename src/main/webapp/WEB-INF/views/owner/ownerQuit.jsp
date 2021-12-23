<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/coupon.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>리뷰페이지</title>
</head>
<body>
<script>
	if(${ requestScope.message != null && requestScope.message != ''}){
		alert('${ requestScope.message }');
	}
</script>

	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	 <br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 100px; font-weight: 900;">탈퇴하기</h3>
        <hr>
    </div>
	
	<div class="body-all">
      <div class="body-inside">
	
	<!-- sidebar  -->
      <jsp:include page="../commons/ownerSidebar.jsp"/>
      
      <div style="text-align: center;">
      
      <br><br>
        <img src="${ pageContext.servletContext.contextPath }/resources/images/MommyLogo.png" style="width:300px;"><br><br>
        <br><br>
        <div style="width: 700px; background-color: gray; margin-left: 570px;">
        <p>탈퇴 규정
        탈퇴시 회원의 쿠폰과 마일리지는 모두소멸됩닏.
        </p></div>
        <br><br><br>
	        <h2>비밀번호 확인</h2><br>
	        <input type="password" placeholder="비밀번호를 작성해주세요" style="width: 300px; height:30px; text-align: center;">
	        
          <br><br><br><br>
          <h4></h4>
          <button id="couponBtn2">취소하기</button>
          <button type="button" id="couponBtn" >탈퇴하기</button>
        </div>
        
        
        
        
      </div>
   </div>  
  </div>
  
  
  <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
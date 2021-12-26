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
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>사업자 탈퇴</title>
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
        <div style="width: 800px; background-color: #fcebe9; margin-left: 530px;">
        <br>
        <h2>탈퇴 규정 </h2>
        <br>
        <h5>회원탈퇴 신청에 앞서 아래의 사항을 <font class="highlight">반드시 확인</font>하시기 바랍니다.</h5>
        <br>
        <h6>회원탈퇴를 신청하면, 서비스 이용시 보유하고 있던 개인의 모든 재산은 삭제 됩니다.</h6>
        <h6>회원탈퇴 후, 해당 서비스를 더이상 이용할 수 없으며 모든 사적인 정보는 삭제됩니다.</h6>
        <h6>지급한 쿠폰이 남아있을 경우 회원탈퇴를 신청하면 즉시 삭제됩니다.</h6>
        <h6>회원탈퇴를 하더라도 특정한 사유가 있을 시 일정기간동안 개인정보를 보관할 수 있습니다.</h6>
        <br>
        </div>
        <br><br><br>
	      <h2>비밀번호 확인</h2><br><br>
	        
	      <input type="password" placeholder="비밀번호를 작성해주세요" name="memPwd" id="pwd" style="width: 300px; height:30px; text-align: center;">
	        
          <br><br><br>
          <h4></h4>
          <button type="reset" id="couponBtn2" style="margin-left: 0px; margin-right: 50px;">취소하기</button>
          <button type="submit" id="couponBtn" onclick="confirmation();" >탈퇴하기</button>
        </div>
      </div>
   </div>  
  
  <script>
  function confirmation() {
	  const memPwd = document.getElementById('pwd').value;
	  
	  console.log(memPwd);
	  
	  if(memPwd == null) {
		  alert("비밀번호를 입력해주세요");
		  memPwd.focus();
	  } else {
		  
		  $.ajax({
			  url : "${pageContext.servletContext.contextPath }/owner/ownerQuitGo",
			  type : 'post',
			  data : {
				  memPwd : memPwd
			  },
			  success : function (data) {
					if(parseInt(data) > 0) {
						alert("회원탈퇴처리가 되었습니다.");
						localStorage.clear();
						location.href="${ pageContext.servletContext.contextPath }/member/logout";
					} else {
						alert("비밀번호가 일치하지 않습니다. 비밀번호를 다시 확인해주세요.");
						
					}
				}
		  });
	  }
	  
  }
  </script>
  
  <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
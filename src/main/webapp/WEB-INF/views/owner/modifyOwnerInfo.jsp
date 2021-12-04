<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owners.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/ownerStore.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>비밀번호 변경</title>
</head>
<body>

	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<div class="page-text" style="width: 1550px; margin: 0 auto;">
	<br><br><br>
        <br><h2 style="margin-left: 100px; font-weight: 900;">가게정보 수정</h2>
        <hr>
    </div>
	
	<div class="body-all"style="margin-bottom: 600px">
	  <div class="body-inside">
        
        <!-- sidebar  -->
        <jsp:include page="../commons/ownerSidebar.jsp"/>
	
		<div class="body-center" style="text-align: center;">
        <form action="${ pageContext.servletContext.contextPath }/owner/modifyStore" method="post">
            <div class="main_box" style="display : table;">
                <h1 align="center">비밀번호 변경</h1>
                 <div style="width: 1000px; margin-right: 200px">
		            <br><br><br>
		          <div class="changeUserInfo">
		            <label>비밀번호</label><input type="password" name="pwd" id="pwd">
		          </div>
		          <div class="changeUserInfo"> 
		            <label>비밀번호 확인</label><input type="password" name="checkPwd" id="checkPwd">
		          </div>
		          <font id="chkNotice" size="4" style="margin-left: 195px"></font>
		        </div>
                <input type="hidden" name="memCode" value="${ sessionScope.loginMember.memCode }">
                <input type="button" class="pink_btn" id="btn" style="background: #AEAEAE; margin-right: 20px" value="취소">
                <input type="submit"class="pink_btn" value="완료">
              </div>
             </form>
          </div>
        </div>
      </div>
       <script>
    	$(function() {
			$("#btn").click(function() {
				location.href="${ pageContext.servletContext.contextPath }/owner/ownerMain"
			});
			
			$('#pwd').keyup(function(){
			      $('#chkNotice').html('');
			    });

			    $('#checkPwd').keyup(function(){

			        if($('#pwd').val() != $('#checkPwd').val()){
			          $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
			          $('#chkNotice').attr('color', '#f82a2aa3');
			        } else{
			          $('#chkNotice').html('비밀번호 일치함<br><br>');
			          $('#chkNotice').attr('color', '#199894b3');
			        }
			
			});
    	});
    </script>  
      
  <!-- footer --> 
  <jsp:include page="../commons/footer.jsp"/>
   
</body>
</html>
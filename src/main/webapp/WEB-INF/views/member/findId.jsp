<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디 찾기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"href="${ pageContext.servletContext.contextPath }/resources/css/user/findId.css">
<link rel="stylesheet" type="text/css"href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"crossorigin="anonymous"></script>
	
</head>
<body>
	<div class="center">
		<br>
		<br>
		<h1>아이디 찾기</h1>
		<img class="logo"
			src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
		<br>
	
			<input type="text" class="name" id="name" name="name" placeholder=" 이름을 입력해주세요" style="border-radius: 9px;"> <br>
			<br> <input type="email" class="email" id="email" name="email" placeholder=" 이메일을 입력해주세요"> <br>
			<br>

			<!-- 아이디 찾기 누르면 알럿이나 모달창으로 아이디 띄워주고 로그인 페이지로 이동 -->
			<button type="submit" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal" id="findIdButton" 
				onclick="findIdButton1()"
				style="width: 100px; height: 40px; border-radius: 9px; 
				background-color: rgb(247, 170, 145); color: black; border: 2px solid black;">아이디찾기</button>
			&nbsp; &nbsp; &nbsp; &nbsp;
			<button type="reset" class="goLogin" id="goLogin"
				style="border-radius: 9px; background-color: rgb(247, 170, 145);">취소</button>

			<!-- 아이디 찾기 모달 -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">아이디 찾기</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body" style="text-align: center;">
							<p id="id"></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" id="ok">확인</button>
						</div>
					</div>
				</div>
			</div>
		<br>
	</div>
	<jsp:include page="../commons/footer.jsp" />
	<script>
        

  		/* 아이디 찾기 모달창 */
		$('#findIdButton').click(function(){
			$('#exampleModal').modal('show');
		});
		
	  	$('#ok').click(function(){
			$('#exampleModal').modal('hide');
		});
	

	  /* 아이디 찾기 */
       
    	function findIdButton1(){
    		 var name = $('#name').val();        	
       		 var email = $('#email').val();	
	    	
	    	$.ajax({
	    		url:"${ pageContext.servletContext.contextPath }/member/findIdCheck",
	    		type:"post",
	    		data : {
	    			name : name, 
	    			email : email
	    		}, 
	    		async : false, 
	    		success:function(data){
	    				console.log(data);
	    			if(data == null) {
	    				$('#id').text("회원정보를 다시 확인해주세요.");
	    			} else if(data != null) {
	    				$('#id').text(data);
	    			}
	    		}
    		});
    	}
        
   
    	/* 로그인 화면으로 돌아가기 */
    	const $goLogin = document.getElementById("goLogin");
    		$goLogin.onclick = function() {
    			location.href = "${ pageContext.servletContext.contextPath }/member/login";
    		}
    </script>
</body>
</html>
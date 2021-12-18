<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 변경</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/modifyPwd.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"crossorigin="anonymous"></script>
    
    
    <style>
    .correct {
    color : green;
    }
     .incorrect {
    color : red;
    }
    </style>

</head>
<body>
    <div class = center>
        <br><br>
        <h1>비밀번호 변경</h1>
        <img class=logo src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
        <br>
         <form action="modifyPwd" method="post" onsubmit="return validate();">
        <input type="password" class="pwd1" id="pwd1" name="memPwd" placeholder="비밀번호는 [영문,숫자,특수기호] 4~12글자"
        style=" border-radius: 9px; width: 440px; height: 40px;">
        <br><br>
        <input type="password" class="pwd2" id="pwd2" placeholder="비밀번호를 확인해주세요"
		style=" border-radius: 9px; width: 440px; height: 40px;">
        <br>
        <span id="pwdCheckResult"></span>
        <br><br>
        <!-- 비밀번호가 일치하지 않을 경우 비밀번호가 존재하지않습니다. 비밀번호를 다시 입력해주세요.  -->
        <!-- 비밀번호 변경하기 누르면 알럿이나 모달창으로 비밀번호가 변경되었습니다 나오고 로그인 페이지로 이동 -->
        <button type="submit" id="changePwd"
         style="width:100px; height:40px; border-radius: 9px; background-color:rgb(247, 170, 145); text-align : center;">변경</button>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <button type="reset" id="goLogin"
         style="width:100px; height:40px; border-radius: 9px; background-color:rgb(247, 170, 145); text-align : center;">취소</button>
        </form>
    </div>

    <br><br>
    
    <jsp:include page="../commons/footer.jsp"/>
    <script>
        function validate(){
            var pwd1=document.getElementById("pwd1");
            var pwd2=document.getElementById("pwd2");

            if(pwd1.value==""){
                alert("비밀번호를 입력해주세요.");
                pwd1.focus();
                return false;  
            }   


            if(pwd1.value != pwd2.value){
                alert("비밀번호를 확인해주세요.")
                pwd2.focus()
                return false;
            }
            
        }
        
        
        /* 비밀번호 입력 여부 확인 알럿 & 정규식 확인 */
        $("#pwd1").blur(function(){
       	var inputPwd = $("#pwd1").val();
      		var regex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{4,12}$/;
      		var result = regex.exec(inputPwd);

      		
      			if(inputPwd == ""){
      				alert("비밀번호를 입력해주세요.");
	        		return false;
      				
      			} else {
      				
      				if(result != null){
	        			return true;
	        			
	        		} else {
	        			alert("비밀번호 형식이 올바르지 않습니다. 비밀번호는 알파벳과 특수기호 !@#$%^*+=- 와 숫자를 혼합하여 4~12글자를 작성해주세요 ");
	        			return false;
	        		}
      				
      			}	
       	}); 
       
       
       
       /* 비밀번호 입력 여부 확인 알럿 & 일치 여부 확인 */
       $("#pwd2").blur(function(){
      	 
      	 var inputPwd1 = $("#pwd1").val();
      	 var inputPwd2 = $("#pwd2").val();
   	 	 var pwdCheckResult = $("#pwdCheckResult");
      	 
      	 if(inputPwd2 == "") {
			alert("비밀번호를 확인해주세요.");
			return false;
			
      	 }	else {
      		 
	        	if(inputPwd1 != inputPwd2){
	        		pwdCheckResult.html("비밀번호가 일치하지않습니다. 비밀번호를 동일하게 입력해주세요.");
	        		pwdCheckResult.attr("class", "incorrect");
	        		return false;
	        		
	        	} else {
	        		pwdCheckResult.html("비밀번호가 일치합니다.");
	        		pwdCheckResult.attr("class", "correct");
	        		return true;
	        	}
      		 }	
      }); 
       
/*        $("#changePwd").click(function(){
    	  if($("#pwd1").val() == ""){
    		  alert("비밀번호를 입력해주세요.")
    		  $("#pwd1").focus(); 
    		  return false;
    	  } 
       });
       
       $("#changePwd").click(function(){
     	  if($("#pwd2").val() == ""){
     		  alert("비밀번호를 확인해주세요.")
     		  $("#pwd2").focus(); 
     		  return false;
     	  } 
        }); */
       
        $('#changePwd').click(function(){
        
        	var email;
        	console.log(email);
        	
        	var pwd1 = $("#pwd1").val();
        	var pwd2 = $("#pwd2").val();
        	
        	if(pwd1 == pwd2 && pwd1 != "" || pwd2 != ""){
        		$.ajax({
        			type : "post",
        			url : "modifyPwd",
        			data : {
        				pwd1 : pwd1,
        				email : email
        			},
        			async : false,
        			success : function(data){
        				console.log("data  : " + data);
        				alert("비밀번호 변경에 성공했습니다.");
        			},
        			error : function(error){
	       				alert(error);
        			}		
        			
        		});
        	}
        	
        });
        
        
        
	    /* 로그인 화면 이동 */ 
	    const $goLogin = document.getElementById("goLogin");
	    $goLogin.onclick = function() {
	    	location.href = "${ pageContext.servletContext.contextPath }/member/login";
	    }
    </script>   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/findPwd.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
</head>
<body>
    <div class=center>
        <br><br>
        <h1>비밀번호 찾기</h1>
        <img class=logo src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
    </div>
    <form onsubmit="return validate();">
    <div class=text style="margin-left:37%">
        <input type="text" class="id" id="id" name="id" placeholder=" 아이디(알파벳 소문자,숫자 혼합 4~12글자)"
        style=" border-radius: 9px; width: 440px; height: 40px;">
        <br><br> 
        <input type="password" class="email" id="email" name="email" placeholder=" 이메일주소(@ 포함)"
        style=" border-radius: 9px; width: 440px; height: 40px;">
        <button type="button" id="button"
        style="width:100px; height:40px; border-radius: 9px; background-color:rgb(247, 170, 145); text-align : center;">코드전송</button>
        <br><br>
        <input type="text" class="code" id="code" placeholder="인증번호(이메일 전송 버튼 클릭 후 수신된 인증번호 입력)"
        style=" border-radius: 9px; width: 440px; height: 40px;">
        <br><br>
    </div>    
    <!-- null값일 경우 ~를 입력해주세요 -->
    <!-- 아이디가 올바르지 않을경우 아이디를 올바르게 입력해주세요 -->
    <!-- 이메일주소가 올바르지 않을경우 @를 포함하여 이메일주소를 올바르게 입력해주세요 -->
    <!-- 인증번호가 올바르지 않을경우 인증번호를 올바르게 입력해주세요 -->
    <!-- 아이디 찾기 누르면 알럿이나 모달창으로 아이디 띄워주고 로그인 페이지로 이동 -->
    <div class="button" style="text-align: center;">
        <button type="submit" id="findPwdButton" onclick="findPwdButton1()"
        style="width:100px; height:40px; border-radius: 9px; background-color:rgb(247, 170, 145); text-align : center;">비밀번호 찾기</button>
        &nbsp; &nbsp; 
        <button type="submit" id="changePwdButton"
        style="width:100px; height:40px; border-radius: 9px; background-color:rgb(247, 170, 145); text-align : center;">비밀번호 변경</button>
        &nbsp; &nbsp;
        <button type="reset" id="goLogin" 
        style="width:100px; height:40px; border-radius: 9px; background-color:rgb(247, 170, 145); text-align : center;">로그인</button>
        <br><br>
    </div>
    </form>
    <jsp:include page="../commons/footer.jsp"/>
    <script>
        function validate(){
            var id = document.getElementById("id");
            var email = document.getElementById("email");
            var code = document.getElementById("code");
    
            if(id.value==""){
                alert("아이디를 입력해주세요");
                id.focus();
                return false;
            }

            if(email.value==""){
                alert("이메일을 입력해주세요");
                email.focus();
                return false;
            }


            if(code.value==""){
                alert("인증번호를 입력해주세요");
                code.focus();
                return false;
            }
        }  

        function chk(re, ele, msg){
                if(!re.test(ele.value)){
                    alert(msg);
                    ele.select();
                    return false;
                }
                return true;
        }
        
        /* 비밀번호 찾기 버튼 클릭 */
        /* 아이디, 이메일, 인증번호를 입력하지 않고 비밀번호 찾기를 누르면 회원정보를 입력해주세요 라는 알럿이 나온다. */	
	    /* 아이디, 이메일, 인증번호가 회원정보와 일치하지 않은 상태에서 비밀번호 찾기 버튼을 누르면 "회원정보를 다시 확인해주세요." 라는 알럿이 나온다. */	
	    function findPwdButton1(){
        	var id = $("#id").val();
        	var email = $("#email").val();
			var code = $("#code").val();
        	
        	if(id == "" || email == "" || code == ""){
        		alert("회원 정보를 입력해주세요.");
        		return false; 
        		
        	} else {
        		$.ajax({
        			url:"${ pageContext.servletContext.contextPath }/member/findPwdCheck",
					type : "post",
					data : {
						id : id,
						email : email
					},
					async : false,
					success : function(data){
						console.log("data : " + data);
						
						if(data != null && data!= ""){
							alert("고객님의 비밀번호는 " + data + "입니다.");
							return true;
						} else {
							alert("입력하신 정보가 일치하지 않습니다. 올바른 정보를 입력해주세요.");
						 	return false;
						}
					},
					
					error : function(error){
						alert(error);
					}
        		});
        	}
		}
	    
        
	    /* 비밀 번호 변경하기 화면으로 이동 */
	    const $changePwdButton = document.getElementById("changePwdButton");
	    $changePwdButton.onclick = function() {
	    	location.href = "${ pageContext.servletContext.contextPath }/member/changePwd";
	    }
	    
	    
	    /* 로그인 화면 이동  */ 
	    const $goLogin = document.getElementById("goLogin");
	    $goLogin.onclick = function() {
	    	location.href = "${ pageContext.servletContext.contextPath }/member/login";
	    }
    </script>        
</body>
</html>
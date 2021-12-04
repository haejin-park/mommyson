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
    <div class=text>
        <input type="text" class="id" id="id" placeholder="아이디는 [영문,숫자] 4~12글자">
        <br><br> 
        <input type="password" class="email" id="email" placeholder="이메일을 입력해주세요">
        <button type="button" id="button">코드전송</button>
        <br><br>
        <input type="text" class="code" id="code" placeholder="인증번호를 입력해주세요">
        <br><br>
    </div>    
    <!-- null값일 경우 ~를 입력해주세요 -->
    <!-- 아이디가 올바르지 않을경우 아이디를 올바르게 입력해주세요 -->
    <!-- 이메일주소가 올바르지 않을경우 @를 포함하여 이메일주소를 올바르게 입력해주세요 -->
    <!-- 인증번호가 올바르지 않을경우 인증번호를 올바르게 입력해주세요 -->
    <!-- 아이디 찾기 누르면 알럿이나 모달창으로 아이디 띄워주고 로그인 페이지로 이동 -->
    <div class="button" style="text-align: center;">
        <button type="submit" id="button">확인</button>
        &nbsp; &nbsp; &nbsp; &nbsp; 
        <button type="reset" id="button"><a href="login.html">취소</a></button>
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

            if(!chk(/^[a-z][a-z\d]{3,11}$/,id,"아이디는 [영문,숫자] 4~12")){
                return false;
            }

            if(!chk(/[0-9]/,id,"아이디에 숫자 하나 이상 포함")){
                return false;
            }

            if(email.value==""){
                alert("이메일을 입력해주세요");
                email.focus();
                return false;
            }

            if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,email,"이메일 형식에 어긋납니다.")){
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
        
    </script>        
</body>
</html>
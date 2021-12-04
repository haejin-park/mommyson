<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 변경</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/changePwd.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
</head>
<body>
    <div class = center>
        <br><br>
        <h1>비밀번호 변경</h1>
        <img class=logo src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
        <br>
        <form onsubmit="return validate();">
        <input type="password" class="pwd1" id="pwd1" placeholder="비밀번호는 [영문,숫자,특수기호] 4~12글자">
        <br><br>
        <input type="password" class="pwd2" id="pwd2" placeholder="비밀번호를 확인해주세요" >
        <br><br>
        <!-- 비밀번호가 일치하지 않을 경우 비밀번호가 존재하지않습니다. 비밀번호를 다시 입력해주세요.  -->
        <!-- 비밀번호 변경하기 누르면 알럿이나 모달창으로 비밀번호가 변경되었습니다 나오고 로그인 페이지로 이동 -->
        <button type="submit" id="button">변경</button>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <button type="reset" id="button"><a href="login.html">취소</a></button>
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

            if(!chk(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{4,12}$/,pwd1, "숫자+영문자+특수문자 조합으로 4~12글자를 입력해주세요.")){            
	        return false;
            }

            if(pwd1.value != pwd2.value){
                alert("비밀번호를 확인해주세요.")
                pwd2.focus()
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
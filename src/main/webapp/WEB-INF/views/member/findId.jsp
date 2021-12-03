<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/findId.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
</head>
<body>
    <div class=center>
        <br><br>
        <h1>아이디 찾기</h1>
        <img class=logo src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
        <br>
        <form onsubmit="return validate();">
        <input type="text" class="name" id="name" placeholder="이름을 입력해주세요">
        <br><br>
        <input type="email" class="email" id="email" placeholder="이메일을 입력해주세요">
        <br><br>

        <!-- null값일 경우 ~를 입력해주세요 -->
        <!-- 이메일주소가 올바르지 않을경우 @를 포함하여 이메일주소를 올바르게 입력해주세요 -->
        <!-- 아이디 찾기 누르면 알럿이나 모달창으로 아이디 띄워주고 로그인 페이지로 이동 -->
        <button type="submit" id="button">아이디 찾기</button>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <button type="reset" id="button"><a href="login.html">취소</a></button>
        </form>
        <br>
    </div>
    <jsp:include page="../commons/footer.jsp"/>
    <script>
        function validate(){
            var name = document.getElementById("name");
            var email = document.getElementById("email");
       
            if(name.value==""){
                alert("이름을 입력해주세요.");
                name.focus();
                return false;
            }

            if(!chk(/^[가-힣]{2,}$/,name,"이름은 한글로 2글자 이상을 넣으세요")){
                return false;
            }

            if(email.value==""){
                alert("이메일을 입력해주세요.");
                email.focus();
                return false;
            }

            if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,email,"이메일 형식에 어긋납니다.")){
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/join.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
   
    <br><br>
    <div class = center>
        <h1>회원 가입</h1>
        <img class=logo src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
        <h2 class=h2>회원구분을 선택해 주세요</h2>
        <br>
    </div>    
    <button type="button" id=goCustomer
     style="width:100px; height:45px; margin-left: 40%; padding: 10px; border-radius: 9px; background-color:rgb(247, 170, 145);">소비자</button>
    &nbsp; &nbsp; 
    <button type="button" id=goBusinessman
     style="width:100px; height:45px;  padding: 10px; border-radius: 9px; background-color:rgb(247, 170, 145);">사업자</button>
    &nbsp; &nbsp; 
    <button type="reset" id="goMain"
     style="width:100px; height:45px;  padding: 10px; border-radius: 9px; background-color:rgb(247, 170, 145);">취소하기</button>
    <br><br><br><br><br><br>
    <jsp:include page="../commons/footer.jsp"/>  
    
    <script>
    
    /* 소비자 회원가입 */
   	const $goCustomer = document.getElementById("goCustomer");
    	$goCustomer.onclick = function() {
    		location.href = "${ pageContext.servletContext.contextPath }/member/customerJoin";
    	}
    	
    /* 사업자 회원가입 */
    const $goBusinessman = document.getElementById("goBusinessman");
    	$goBusinessman.onclick = function() {
    		location.href = "${ pageContext.servletContext.contextPath }/member/businessJoin";
    	}
    
    
    /* 메인 화면으로 돌아가기 */
    
    const $goMain = document.getElementById("goMain");
    	$goMain.onclick = function() {
    		location.href = "${ pageContext.servletContext.contextPath }/"
    	}
    </script>
</body>
</html>
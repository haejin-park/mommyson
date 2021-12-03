<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/login.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
</head>
<body>
	
    <div class=center>
        <br><br>
        <h1>로그인</h1>
        <img class=logo src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
        <br><br>
        <input type="text" name="memId" class="id" id="id" placeholder="아이디는 [영문,숫자] 4~12글자">
        <br><br>
        <input type="password" name="memPwd" class="pwd" id="pwd" placeholder="비밀번호는 [영문,숫자,특수기호] 4~12글자"  onKeypress="javascript:if(event.keyCode==13) {validate();}">
        <br><br>

         <!-- 아이디와 비밀번호가 일치하면  메인페이지 이동하기 -->
        <button type="submit" class=login onclick="validate();">로그인</button>
        &nbsp; &nbsp; &nbsp; 
        <button type="reset" class=reset><a href="login.html">취소</a></button>
        <br>
        <a href="findId.html">아이디 찾기</a> &nbsp; 
        <a href="findPwd.html">비밀번호 찾기</a> &nbsp; 
        <a href="join.html">회원가입</a> 
    </div>
    <br><br>
    <footer class="at-container" style="margin:0 auto">
        <ul class="df_ul ft_list">
            <li>
                <a href="">마미손맛 소개</a>   
            </li>
            <li>
                <a href="">이용약관</a>
            </li>
            <li>
                <a href="">개인정보처리방침</a>
            </li>
            <li>
                <a href="">전자금융거래이용약관</a>
            </li>
        </ul>
        <div class="ft_img_line">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img01.png" alt="소비자중심경영">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
        </div>
        <div class="ft_info">
            <p>대표 : 유승제 / 주소 : 서울특별시 서초구 서초대로78길 48 송림빌딩 13층</p>
            <p>사업자번호 : 123-45-67890 / 통신판매업신고 : 제 2021-서울-503호 / 개인정보 정책 및 담당 : 김준희</p>
            <p>대표번호 : 1588-0000 / 팩스번호 : 02-123-1234 / 이메일 : mommysonmat@greedy.com</p>
            <p>ⓒ SSEULEODAMJO CORP. All Rights Reserved.</p>
        </div>
        <div class="manager_center">
            <h4>고객센터</h4>
            <div class="callNum">
                <img src="${ pageContext.servletContext.contextPath }/resources/images/callImg.png" alt="call">
                <span>1644 - 1234</span>    
            </div>
            <p>평일 10:00~18:50</p>
            <p>점심시간 12:00~13:00</p>
            <p>(주말과 공휴일은 휴무입니다.)</p>
        </div>
    </footer>  
    <script>
        function validate(){
            let memId = $('#id').val();
            let memPwd = $('#pwd').val();
       
            if(memId.value==""){
                alert("아이디를 입력해주세요.");
                memId.focus();
            }

            if(memPwd.value==""){
                alert("비밀번호를 입력해주세요.");
            }
            
            $.ajax({
       			url: "/mommyson/member/login",
    				type: 'post',
    				data: {
    					memId : memId,
    					memPwd : memPwd
    				},
    				success: function(data) {
    					switch(data){
    						case "main" : location.href="${ pageContext.servletContext.contextPath }/"; break;
    						default : alert(data); break;
    					}
    				}
       		});
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
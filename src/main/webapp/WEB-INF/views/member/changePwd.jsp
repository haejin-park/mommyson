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
    <link rel="stylesheet" type="text/css" href="../../resources/css/user/changePwd.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/colorset.css">
</head>
<body>
    <div class = center>
        <br><br>
        <h1>비밀번호 변경</h1>
        <img class=logo src="../../resources/logoimage/logo.png">
        <br>
        <form onsubmit="return validate();">
        <input type="password" class="pwd1" id="pwd1" placeholder="비밀번호는 [영문,숫자,특수기호] 4~12글자">
        <br><br>
        <input type="password" class="pwd2" id="pwd2" placeholder="비밀번호를 확인해주세요" >
        <br><br>
        <!-- 비밀번호 형식이 맞지 않을 때 [영문,숫자,특수기호]를 사용하여 6~8자로 다시 입력해주세요.  -->
        <!-- 비밀번호가 일치하지 않을 경우 비밀번호가 존재하지않습니다. 비밀번호를 다시 입력해주세요.  -->
        <!-- 비밀번호 변경하기 누르면 알럿이나 모달창으로 비밀번호가 변경되었습니다 나오고 로그인 페이지로 이동 -->
        <button type="submit" id="button">변경</button>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <button type="reset" id="button"><a href="login.html">취소</a></button>
        </form>
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
            <img src="../../resources/images/ft_img01.png" alt="소비자중심경영">
            <img src="../../resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
            <img src="../../resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
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
                <img src="../../resources/images/callImg.png" alt="call">
                <span>1644 - 1234</span>    
            </div>
            <p>평일 10:00~18:50</p>
            <p>점심시간 12:00~13:00</p>
            <p>(주말과 공휴일은 휴무입니다.)</p>
        </div>
    </footer>    
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
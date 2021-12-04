<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>관리자 아이디 섕성</title>

    <script>
        // 아이디 확인
        $(function(){
                $('#id').keyup(function(){
                    let regExp = /^[a-z]+$/;

                    if(!regExp.test($(this).val())){
                        $(this).focus().css('background','lightgray');
                        $('#idCheck').html('아이디는 영어소문자로 입력해주세요.').css('color','red');
                    } else {
                        $(this).focus().css('background','white');
                        $('#idCheck').html('');
                    }
                });
        });

        // 비밀번호 확인
        $(function(){
            $('#pwd2').keyup(function(){

                if($('#pwd1').val() != $('#pwd2').val()){
                    $('#pwdCheck').html('비밀번호가 일치하지 않습니다.').css('color','red');
                }  else {
                    $('#pwdCheck').html('비밀번호가 일치합니다.').css('color','green');
                }
            })
        });

        function validate(){

            let regExp = /^[a-z]+$/

            if($('#id').val() == '') {
                alert("아이디를 확인해주세요.");
                return false;
            }
            if($('#pwd1').val() == '' || $('#pwd1').val() != $('#pwd2').val()) {
                alert("비밀번호를 확인해주세요.");
                return false;
            }
            if($('#mng').val() == ''){
                alert("관리자 파트를 선택해주세요.");
                return false;
            }
            
            alert("아이디가 생성되었습니다.");
            return true;
        }
        
    </script>
</head>
<body>
    <header class="manager_header at-container">
        <img src="${ pageContext.servletContext.contextPath }/resources/images/managerLogo.png" alt="마미손맛 MANAGEMENT">
        <a href="../main.html" class="home_btn">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/mainHome.png" alt="메인화면으로">
            <p>메인화면으로</p>
        </a>
    </header>
    <div class="head_line"></div>
    <div class="at-container total_container">
    
        <jsp:include page="../commons/managerSidebar.jsp"></jsp:include>
        
        <div class="board_container">
            <form action="${ pageContext.servletContext.contextPath }/manager/createManager" method="POST" onsubmit="return validate();">
            	<h1>관리자 관리</h1>
	            <div class="top_box space">
	                <p>관리자 아이디 생성</p>
	            </div>
	            <div>
	                <label>아이디</label>
	            </div>
	            <div>
	            <input type="text" name="memId" id="id" class="manager_text">
	            &nbsp;&nbsp;&nbsp;<a id="idCheck"></a>
	            </div>
	            <div>
	                <label>비밀번호</label>
	            </div>
	            <input type="password" name="memPwd" id="pwd1" class="manager_text">
	            <div>
	                <label>비밀번호확인</label>
	            </div>
	            <input type="password" id="pwd2" class="manager_text">
	            &nbsp;&nbsp;&nbsp;<a id="pwdCheck"></a>
	            <div>
	                <label>관리자파트선택</label>
	            </div>
	            <select name="code" id="mng" class="manager2">
	                <option value="">선택해주세요</option>
	                <option value="1">회원 관리</option>
	                <option value="2">게시글 관리</option>
	                <option value="3">신고 관리</option>
	                <option value="4">설정 관리</option>
	                <option value="5">정산 관리</option>
	            </select>
	            <div>
	                <button type="submit" class="cre_btn">관리자 아이디 만들기</button>
	            </div>
            </form>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu6").addClass("show");
         $("#homeSubmenu6 > li:last-child > a").css("color","#F89E91");
    </script>
</body>
</html>
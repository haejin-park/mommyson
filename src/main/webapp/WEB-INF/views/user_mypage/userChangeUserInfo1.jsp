<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userSignOut1.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/changePwd.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../commons/header.jsp"></jsp:include>
    <section>

      <div class="container">
        <div class="row">
          <div class="col-md-3">
              <jsp:include page="../commons/userMyPageSidebar.jsp"></jsp:include>
          </div>
          <div class="col-md-9">
            <div id="changeUserHead">
              <br><br>
              <h3><strong>개인 정보 변경</strong></h3>
            </div>
            <div class="changeUserInfo">
              <label>ID</label><input name="memId" id="id" type="text">
            </div>
            <div class="changeUserInfo">
              <label>비밀번호</label><input name="memPwd" id="pwd" type="password">
            </div>
                        
            <div id="confirmInfobtn">
              <button type="submit" onclick="confirmation();">&nbsp; &nbsp; 확&nbsp;&nbsp;  인</button>
            </div>
            
          </div>
        </div>
      </div>
      
      <script>
      function confirmation() {
		const memId = document.getElementById('id').value;
			/* $('#id').val(); */
		const memPwd = document.getElementById('pwd').value;
			/* $('#pwd').val(); */
		console.log(memId);
		console.log(memPwd);
		if(memId==""){
			alert("아이디를 입력해주세요.");
			memId.focus();
		}
		
		if(memPwd==null) {
			alert("비밀번호를 입력해주세요");
			memPwd.focus();
		}
		$.ajax({
			url : "${ pageContext.servletContext.contextPath }/userMyPage/userConfirmation",
			type : 'post',
			data : {
				memId : memId,
				memPwd : memPwd
			},
			success : function (data) {
				if(data == true) {
					alert("개인정보 변경절차에 들어가겠습니다.");
					location.href="${ pageContext.servletContext.contextPath }/userMyPage/userInfoChange2";
				} else {
					alert("회원정보가 일치하지 않습니다.");
					location.replace();
				}

			}
			
		});
	}
      
      </script>
    </section>
	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

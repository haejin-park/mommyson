<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/changeUserInfo.css">
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
              <h3><strong>개인정보 변경</strong></h3>
            </div>
            <form action="" method="post">
            <div class="changeUserInfo">
              <label>새비밀번호</label><input type="password" name="password">
            </div>
            <div class="changeUserInfo">
              <label>새비밀번호 확인</label><input type="password">
            </div>
            <div class="changeUserInfo">
              <label>이름</label><input type="text" name="name">
            </div>
            <div class="changeUserInfo">
              <label>닉네임</label><input type="text" name="nickname">
            </div>
            <div class="changeUserInfo">
              <label>이메일</label><input type="email" name="email">
            </div>
            <div class="changeUserInfo">
              <label>우편번호</label><input type="text" name="zipcode">
            </div>
            <div class="changeUserInfo">
              <label>주소</label><input type="text" name="address">
            </div>
            <div class="changeUserInfo">
              <label>상세주소</label><input type="text" name="datailAdress">
            </div>
            <div id="confirmInfobtn">
              <button type="submit">&nbsp;&nbsp;확 &nbsp;&nbsp; 인</button>
            </div>
            </form>
          </div>
        </div>
      </div>
    </section>
	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>
    
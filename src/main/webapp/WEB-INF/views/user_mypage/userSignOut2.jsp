<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/signoutUser.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
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
            <div>
              <br><br>
              <h3><strong>회원탈퇴</strong></h3>
            </div>
            <div>
              
              <h3 id="signoutMessage">회원을 탈퇴하시겠습니까?</h3>
              <br><br>
            </div>
            <div>
              <h5><strong>탈퇴사유</strong></h5>
              <textarea id="signoutTextArea" placeholder="탈퇴사유를 적어주세요">

              </textarea>
              <br>
              <br>
              <div id="signoutUserBtn">
                <button class="sgbnt 1">탈퇴</button>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <button class="sgbnt 2">취소</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

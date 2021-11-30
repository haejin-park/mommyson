<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../../resources/css/mypage-sidebar.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
		<div class="side-all">
            <div class="side-1">
                <br>
                <form>
                    <img src="../../resources/images/owner-logo.png" width="150px"><br> <hr>
                    <h3>김미숙 사장님</h3>
                    <br>
                    <h5>21-11-22 ~</h5>
                    <h6>정액제 사용중</h6>
                    <h6>만료일 : 22-2-22</h6>
                </form><br>

                <button style="background-color: rgba(248, 158, 145, 1); border: none; border-radius: 5px; color: white; width: 100px;">연장하기</button>
            </div>
            
            <div class="side-2" style="width: 300px; ">
              <nav id="sidebar" style="min-width: 295px; max-width: 295px;">
  
              <ul class="list-unstyled components">
                  <li>
                      <a href="#">가게관리</a>
                  </li><hr>
                  <li class="active">
                      <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" >상품관리</a><hr>
                      <ul class="collapse list-unstyled" id="homeSubmenu">
                          <li>
                              <a href="#">상품등록</a>
                          </li>
                          <li>
                              <a href="#">판매 상품 관리</a>
                          </li>
                          <li>
                              <a href="#">오늘의 메뉴</a>
                          </li>
                          <li>
                              <a href="#">오늘의 할인</a>
                          </li>
                      </ul>
                  </li>
                  <li>
                      <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">주문관리</a><hr>
                      <ul class="collapse list-unstyled" id="pageSubmenu" >
                          <li>
                              <a href="#">주문접수</a>
                          </li>
                          <li>
                              <a href="#">완료된 주문</a>
                          </li>
                      
                      </ul>
                  </li>
                  <li>
                      <a href="#">쿠폰발행</a>
                  </li><hr>
                  <li>
                      <a href="#">고객관리</a>
                  </li><hr>
                  <li>
                      <a href="#">탈퇴하기</a>
                  </li>
              </ul>
          </nav>
      
      </div>
        <script>
        $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>
    </div>
</body>
</html>
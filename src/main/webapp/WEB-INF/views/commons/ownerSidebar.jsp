<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage-sidebar.css">

</head>
<body>
		<div class="side-all">
            <div class="side-1">
                <br>
                <form>
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/owner-logo.png" width="150px"><br> <hr>
                    <h3>김미숙 사장님</h3>
                    <br>
                    <h5>21-11-22 ~</h5>
                    <h6>정액제 사용중</h6>
                    <h6>만료일 : 22-2-22</h6>
                </form><br>

                <button style="background-color: rgba(248, 158, 145, 1); border: none; border-radius: 5px; color: white; width: 100px;">연장하기</button>
                <hr>
                <button id="button1" style="margin-top: 10px;">영업시작</button>
            </div>
            
            <div class="side-2" style="width: 300px; ">
              <nav id="sidebar" style="min-width: 295px; max-width: 295px;">
  
              <ul class="list-unstyled components">
                  <li>
                      <a href="${ pageContext.servletContext.contextPath }/owner/ownerMain">가게관리</a>
                  </li><hr>
                  <li class="active">
                            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">상품관리</a><hr>
                            <ul class="collapse list-unstyled" id="homeSubmenu">
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/productManagement">상품등록</a>
                                </li>
                                <li>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/productManagement">판매 상품 관리</a>
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
                            <ul class="collapse list-unstyled" id="pageSubmenu">
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
                            <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">매출내역</a><hr>
                            <ul class="collapse list-unstyled 1" id="pageSubmenu1">
                                <li>
                                    <a href="#">일별 매출</a>
                                </li>
                                <li>
                                    <a href="#">월별 매출</a>
                                </li>
                                <li>
                                    <a href="#">정산</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false">고객관리</a><hr>
                            <ul class="collapse list-unstyled" id="pageSubmenu2">
                                <li>
                                    <a href="#">리뷰관리</a>
                                </li>                                                            
                            </ul>
                        </li>
                        
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
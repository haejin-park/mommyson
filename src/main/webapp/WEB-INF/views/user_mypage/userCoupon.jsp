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
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userCoupon.css">
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
            <div id="userCouponHead">
              <br><br>
              <h3 style="text-align: center;"><strong>쿠폰함</strong></h3>
            </div>
            <br><br><br>
            <table class="table table" style="width: 1050px;">
              <thead style="background-color: #EDEDED;">
                <tr>
                  <th id="tablecol1" scope="col">가게</th>
                  <th id="tablecol2" scope="col">쿠폰내용</th>
                  <th id="tablecol3" scope="col">할인율</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><img class="storeimg" src="${ pageContext.servletContext.contextPath }/resources/images/1 2.png"></td><!-- 450 * 550-->
                  <td style="padding-top: 40px;">리뷰작성 감사쿠폰</td>
                  <td style="padding-top: 40px;">10%</td>
                </tr>
                <tr>
                  <td><img class="storeimg" src="${ pageContext.servletContext.contextPath }/resources/images/1 2.png"></td><!-- 450 * 550-->
                  <td style="padding-top: 40px;"">리뷰작성 감사쿠폰</td>
                  <td style="padding-top: 40px;">10%</td>
                </tr>
              </tbody>
            </table>
            <!-- 페이징 -->
            <nav class="page_box" aria-label="Page navigation example">
              <ul class="pagination">
                <li class="page-item"><a class="page-link-num" href="#">&laquo;</a></li>
                <li class="page-item"><a class="page-link-num" href="#">&lt;</a></li>
                <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                <li class="page-item"><a class="page-link-num" href="#">6</a></li>
                <li class="page-item"><a class="page-link-num" href="#">7</a></li>
                <li class="page-item"><a class="page-link-num" href="#">8</a></li>
                <li class="page-item"><a class="page-link-num" href="#">9</a></li>
                <li class="page-item"><a class="page-link-num" href="#">10</a></li>
                <li class="page-item"><a class="page-link-num" href="#">&gt;</a></li>
                <li class="page-item"><a class="page-link-num" href="#">&raquo;</a></li>
              </ul>
              <ul>
                  <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                  <form action="" method="get">
                  	<input type="text" class="searchtext" placeholder="찾고싶은 쿠폰 내용을 입력해주세요" name="couponSearch"></li>
                  	<button type="submit" class="searchbutton">검색하기</button></li>
                  </form>
               </ul>
            </nav>
            
          </div>
        </div>
      </div>
    </section>
  	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

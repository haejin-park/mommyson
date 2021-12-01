<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../resources/css/coupon.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>주문관리</title>
</head>
<body>
	
	<!-- header -->
	<jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/header.jsp"/>
	
	<br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 760px; font-weight: 900; font-size: 60px;">주문 관리</h3>
        <hr>
    </div>
	
	<div class="body-all">
      <div class="body-inside">
        
        <!-- sidebar  -->
        <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/ownerSidebar.jsp"/>
        
      <div>
      <br>
      <p style="text-align: right;">주문 접수일 : 2021-11-23</p>
     </div>
    
    <br>
    <div style="text-align: center;">
        <div style="margin-left: 450px;">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col">주문 번호</th>
                <th scope="col">고객명</th>
                <th scope="col">상품명</th>
                <th scope="col">접수</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>로찜마</td>
                <td>두부 무침, 오뎅 볶음...</td>
                <td><button class="couponBtn" id="btn1">접수</button> &nbsp;&nbsp; <button class="couponBtn" id="can1" style="background-color: #777777;">취소</button></td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>시민 조헤주</td>
                <td>로제찜닭마요</td>
                <td><button class="couponBtn" id="btn2">접수</button> &nbsp;&nbsp; <button class="couponBtn" style="background-color: #777777;">취소</button></td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>튼튼한 군인</td>
                <td>장조림, 두부 무침</td>
                <td><button class="couponBtn" id="btn3">접수</button> &nbsp;&nbsp; <button class="couponBtn" style="background-color: #777777;">취소</button></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div style="margin: 500px 0 300px 900px;">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
	        </div>
	      </div>
	    </div>
	  </div>  
    
    <script>
     $(function() {
        $('#btn1').click( function() {
          if( $(this).html() == '접수' ) {
            $(this).html('완료').css("background-color","#68BF6B")
          }
        });
      });
      $(function() {
        $('#can1').click( function() {
            $("#btn1").remove();
            $("#can1").css("background-color","#AEAEAE").html("접수 취소")
        });
      });
    </script>  
    
     <!-- footer -->
	 <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/footer.jsp"/>
</body>
</html>
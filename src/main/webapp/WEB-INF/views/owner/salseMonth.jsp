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
<title>월별 매출</title>
</head>
<body>
	
	<!-- header -->
	<jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/header.jsp"/>
	
	<br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 150px; font-weight: 900; font-size: 40px;">월별 매출</h3>
        <hr>
    </div>
	
	 <div class="body-all">
        <div class="body-inside">
        
        <!-- sidebar  -->
      <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/ownerSidebar.jsp"/>
      
      <div>
      <br>
      <h2 style="text-align: center;">월별 매출</h2>
      <br><br><br>
      <form action="">
      <div style="float: right;"> 
      <p style="float: left; margin-right: 15px; font-weight: 700;">조회 일자 &nbsp;&nbsp;&nbsp;<input type="month" min="" id=""></p>
      <p style="float: left;margin-right: 15px;">~ &nbsp;&nbsp;<input type="month" min="" id=""></p>
      <button type="submit" class="couponBtn" style="width: 80px; margin-top: 2px;">조회하기</button>
      </div>
    </form>
    </div>
    <br>
    <div style="text-align: center;">
        <div style="margin-left: 450px;">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col">월</th>
                <th scope="col">포장 판매액</th>
                <th scope="col">배달 판매액</th>
                <th scope="col">총 매출</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">2021-10월</th>
                <td>500,000원</td>
                <td>800,000원</td>
                <td style="font-weight: 700;">1,300,000원</td>
              </tr>
              <tr>
                <th scope="row">2021-11월</th>
                <td>300,000원</td>
                <td>1,000,000원</td>
                <td style="font-weight: 700;">1,300,000원</td>
              </tr>
              <tr>
                <th scope="row">2021-12월</th>
                <td>600,000원</td>
                <td>270,000원</td>
                <td style="font-weight: 700;">870,000원</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div style="margin: 500px 0 300px 900px;">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&raquo;</span>
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
    
    <!-- footer -->
  <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/footer.jsp"/>
	
</body>
</html>
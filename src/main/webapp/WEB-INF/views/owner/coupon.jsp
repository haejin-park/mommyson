<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 발행</title>
<link rel="stylesheet" href="../../resources/css/coupon.css"><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/header.jsp"/>

    <br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 100px; font-weight: 900;">쿠폰 발행</h3>
        <hr>
    </div>

    <div class="body-all">
        <div class="body-inside">
        
        <!-- sidebar  -->
        <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/ownerSidebar.jsp"/>
        
        <div style="text-align: center;">
        <br><br>
        <img src="../../resources/images/owner-logo.png" width="200px">
        <br><br><br><br>
        <div style="margin-left: 450px;" id="before">
        <h3 style="font-weight: 900; text-align: left; margin-left: 70px;">발행한 쿠폰</h3>
        <br><br>
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col"><input type="checkbox" name="ch1"></th>
                <th scope="col">발행일</th>
                <th scope="col">쿠폰이름</th>
                <th scope="col">할인율</th>
                <th scope="col">할인조건</th>
                <th scope="col">유효기간</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row"><input type="checkbox" name="ch1"></th>
                <td>2021-11-23</td>
                <td>자주 이용해주세요~</td>
                <td>10%</td>
                <td>10000원 이상 구매시</td>
                <td>2021-11-30</td>
              </tr>
              <tr>
                <th scope="row"><input type="checkbox" name="ch1"></th>
                <td>2021-11-23</td>
                <td>자주 이용해주세요~</td>
                <td>15%</td>
                <td>10000원 이상 구매시</td>
                <td>2021-11-30</td>
              </tr>
              <tr>
                <th scope="row"><input type="checkbox" name="ch1"></th>
                <td>2021-11-23</td>
                <td>자주 이용해주세요~</td>
                <td>20%</td>
                <td>10000원 이상 구매시</td>
                <td>2021-11-30</td>
              </tr>
            </tbody>
          </table>
          <br><br>
          <!-- 모달쿠폰 -->
          <button type="button"  id="couponBtn" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="height: 40px;">
            추가</button>
          <button class="couponBtn" style="background-color: #777777; height: 40px; margin-left: 50px;">삭제</button>
        </div>  
      </div>
	    
	    </div>  
	    <!-- 모오오오달 -->
	    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" >
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="exampleModalLabel">쿠폰 추가</h5>
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	            <span aria-hidden="true">&times;</span>
	          </button>
	        </div>
	        <div class="modal-body" style="margin: 0 auto;">
	          <br>
	          <h4>쿠폰이름</h4><input type="text" min="0" placeholder="쿠폰이름을 작성해주세요"><br><br>
	          <h4>할인율</h4><input type="number" min="0" style="width: 80px; margin-left: 20px;"><h4>%</h4><br><br>
	          <h4>할인조건</h4><input type="text" name="" id=""><br><br>
	          <h4>유효기간</h4><input type="date">
	          <br><br>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
	          <button type="button" class="btn btn-primary"  id="couponBtn" style="width: 100px;">추가하기</button>
	        </div>
	      </div>
	    </div>
	    </div>
	  </div>
	  
	  <!-- footer -->
	  <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/footer.jsp"/>
	  
</body>
</html>
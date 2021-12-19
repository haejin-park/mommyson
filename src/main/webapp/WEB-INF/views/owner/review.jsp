<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/coupon.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>리뷰페이지</title>
</head>
<body>
<script>
	if(${ requestScope.message != null && requestScope.message != ''}){
		alert('${ requestScope.message }');
	}
</script>

	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	 <br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 100px; font-weight: 900;">리뷰 관리</h3>
        <hr>
    </div>
	
	<div class="body-all">
      <div class="body-inside">
	
	<!-- sidebar  -->
      <jsp:include page="../commons/ownerSidebar.jsp"/>
      
      <div style="text-align: center;">
      <br><br>
        <img src="${ pageContext.servletContext.contextPath }/${ owner.ceo.store.storeImg }" width="300px"><br><br>
        <br><br>
        <div style="margin-left: 450px;" id="before">
        <h3 style="font-weight: 900; text-align: left; margin-left: 30px;">작성된 리뷰</h3>
        <br>
       		<form action="${ pageContext.servletContext.contextPath}/owner/registGiveAndDeleteCp" method="POST">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col"><input type="checkbox" name="selectAll" id="selectAll" onclick='selectAll(this)'></th>
                <th scope="col">리뷰 번호</th>
                <th scope="col">작성자</th>
                <th scope="col">작성내용</th>
              </tr>
            </thead>
            <tbody>
                <c:forEach var="review" items="${ reviews }">
              <tr>
                <th scope="row"><input type="checkbox" name="reviews" value="${ review.rvCode }" onclick='selectAll(this)'></th>
                <th>${ review.rvCode }</th>
                <td>${ review.memberDTO.nickname }</td>
                <td>${ review.content }</td>
              </tr>
                <input type="hidden" value="${ review.memCode }"/>
                </c:forEach>
            </tbody>
          </table>
          <br><br><br>
          <button type="button" id="couponBtn" class="btn btn-primary" data-toggle="modal" 
          data-target="#staticBackdrop" data-memCode ="${ review.memCode }" >쿠폰 주기</button>
          <button id="couponBtn2">삭제</button>
        	</form>
        </div>
        
        
        <!-- 페이지네이션 -->
		<div style="margin-left: 450px; position: relative; top: 100px;">
			<jsp:include page="../commons/pagingWithoutSearch.jsp"/>
		</div>
        
      </div>
    <!-- 모오오오다라라라라랄 -->
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true"  style="left: -180px; top: -50px;">
      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" >
      <div class="modal-dialog modal-dialog-scrollable" >
      <div class="modal-dialog modal-xl" >
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title" id="staticBackdropLabel" style="margin-left: 450px;">쿠폰 주기</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
              <table class="table table" style="width: 1050px;">
                  <thead style="background-color: #EDEDED;">
                  <tr>
                      <th scope="col"><input type="checkbox" name="allCheck2"  id="allCheck2"></th>
                      <th scope="col">쿠폰 번호</th>
                      <th scope="col">쿠폰 이름</th>
                      <th scope="col">등록일</th>
                      <th scope="col">할인금액</th>
                  </tr>
                  </thead>
                  <tbody>
                
                <c:forEach items="${ coupon }" var="cp">
                  <tr>
                      <td><input type="checkbox" name="allCheck2"></td>
                      <td>${ cp.cpCode }</td>
                      <td>${ cp.cpName }</td>
                      <td>${ cp.startDate }</td>
                      <td>${ cp.disWon }</td>
                  </tr>
				</c:forEach>
                  </tbody>
              </table>
              <br><br>
              
            <!-- 페이지네이션 -->
			<div >
				<jsp:include page="../commons/pagingWithoutSearch.jsp"/>
			</div>
          </div>
          <div class="modal-footer" >
            <button type="submit" class="btn btn-primary" id="btn1">쿠폰 주기</button>
            <button type="reset" class="btn btn-secondary" data-dismiss="modal">닫기</button>
          </div>
         </div>
       </div>
      </div>
     </div>
    </div>
   </div>  
  </div>
  <script>
  
  function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="reviews"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="reviews"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="selectall"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

	}

	function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('reviews');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}
	
  </script>
  
  <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
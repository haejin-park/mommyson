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
       		<form action="${ pageContext.servletContext.contextPath}/owner/registGiveAndDeleteCp" method="POST" id="formOne">
        <table class="table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col"><input type="checkbox" id="chk_all" class="checkAll"></th>
                <th scope="col">리뷰 번호</th>
                <th scope="col">작성자</th>
                <th scope="col">작성내용</th>
              </tr>
            </thead>
            <tbody>
                <c:forEach var="review" items="${ reviews }">
              <tr>
                <th scope="row"><input type="checkbox" name="chk" value="${ review.rvCode }" ></th>
                <td>${ review.rvCode }</td>
                <td>${ review.memberDTO.nickname }</td>
                <td>${ review.content }</td>
              </tr>
                </c:forEach>
            </tbody>
          </table>
          <br><br><br>
          <button type="button" id="couponBtn" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">쿠폰 주기</button>
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
              <table class="table table" id="table2" style="width: 1050px;">
                  <thead style="background-color: #EDEDED;">
                  <tr>
                      <th scope="col"><input type="checkbox" id="chk_all2" class="checkAll2"></th>
                      <th scope="col">쿠폰 번호</th>
                      <th scope="col">쿠폰 이름</th>
                      <th scope="col">등록일</th>
                      <th scope="col">할인금액</th>
                  </tr>
                  </thead>
                  <tbody>
                
                <c:forEach items="${ coupon }" var="cp">
                  <tr>
                      <th><input type="checkbox" name="cps" value="${ cp.cpCode }"></th>
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
            <button type="button"class="btn btn-primary" id="giveCp">쿠폰 주기</button>
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
  $(document).ready(function() { 

	  $("#chk_all").click(function(){
	   	 let chk = $(this).is(":checked");
	   	 if(chk){
	   		 $(".table > tbody > tr th input").prop('checked', true);
	   	 } else{
	   		 $(".table > tbody > tr th input").prop('checked', false);
	   	 }
	   	 
	  });
	  
	  $("#chk_all2").click(function(){
	   	 let chk = $(this).is(":checked");
	   	 if(chk){
	   		 $("#table2 > tbody > tr th input").prop('checked', true);
	   	 } else{
	   		 $("#table2 > tbody > tr th input").prop('checked', false);
	   	 }
	   	 
	 });
  });	  
  
   let rvs = []; // 리뷰들
   let cps = []; // 쿠폰들

  // 선택된 리뷰들 배열로 담고
  $("#couponBtn").click(function(){
	  
	  $("input:checkbox[name=chk]:checked").each(function() {
		  rvs.push($(this).val());
   	  });
		  console.log(rvs);
  });
   
   // 쿠폰도 선택해서 배열로 넘겨주자
   $("#giveCp").on('click', function(){
	   
	  $("input:checkbox[name=cps]:checked").each(function(){
		  cps.push($(this).val());
	  });
		  console.log(cps);
	  
   let form = $('<form></form>');
   form.attr('action', '${pageContext.servletContext.contextPath}/owner/giveCoupons');
   form.attr('method','post');
   form.appendTo('body');
   form.append($('<input type="hidden" value="' + rvs + '" name=chk>'));
   form.append($('<input type="hidden" value="' + cps + '" name=cps>'));
   form.submit();
	  
   });  
  </script>
  
  <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
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
<title>Insert title here</title>
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
        <div style="margin-left: 450px;">
       		<form action="${ pageContext.servletContext.contextPath}/owner/registGiveAndDeleteCp" method="POST">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col"><input type="checkbox" id="allCheck"></th>
                <th scope="col">리뷰 번호</th>
                <th scope="col">작성자</th>
                <th scope="col">작성내용</th>
              </tr>
            </thead>
            <tbody>
                <c:forEach var="review" items="${ reviews }">
              <tr>
                <th scope="row"><input type="checkbox" name="chkreview" class="test" value="${ review.rvCode }" ></th>
                <th>${ review.rvCode }</th>
                <td>${ review.memberDTO.nickname }</td>
                <td>${ review.content }</td>
              </tr>
                <input type="hidden" value="${ review.memCode }"/>
                </c:forEach>
            </tbody>
          </table>
          <button type="button" id="rebtn1" class="btn btn-primary" data-toggle="modal" 
          data-target="#staticBackdrop" data-memCode ="${ review.memCode }" >쿠폰 주기</button>
          <button id="rebtn2">삭제</button>
        	</form>
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
                      <th scope="col"><input type="checkbox" name=""  id="allCheck2"></th>
                      <th scope="col">쿠폰 번호</th>
                      <th scope="col">쿠폰 이름</th>
                      <th scope="col">등록일</th>
                      <th scope="col">할인금액</th>
                  </tr>
                  </thead>
                  <tbody>
                
                <c:forEach items="${ coupon }" var="cp">
                  <tr>
                      <td><input type="checkbox" ></td>
                      <td>${ cp.cpCode }</td>
                      <td>${ cp.cpName }</td>
                      <td>${ cp.startDate }</td>
                      <td>${ cp.disWon }</td>
                  </tr>
				</c:forEach>
                  </tbody>
              </table>
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
  	/* 체크박스 체크 */
	  $("#allCheck").click(function(){
	      if($("#allCheck").prop("checked")){
	        $("input[type=checkbox]").prop("checked",true);
	      } else{
	        $("input[type=checkbox]").prop("checked",false);
	      }
	    });
	  
	  $("#allCheck2").click(function(){
	      if($("#allCheck2").prop("checked")){
	        $("input[type=checkbox]").prop("checked",true);
	      } else{
	        $("input[type=checkbox]").prop("checked",false);
	      }
	    });
	  
	/* 모달로 memCode 넘겨주기 */
	var memCode ="";
	
	$('#btn1').on('click',function(){
		let checkBox = $('.test');
		
	});
	
	$(document).ready(function(){
		$('#staticBackdrop1').on('show.bs.modal', function(event){
			console.log(event);
			/* memCode = $(event.relatedTarget).data('memCode'); 
		}); 
	});		
	  
  </script>
  
  <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
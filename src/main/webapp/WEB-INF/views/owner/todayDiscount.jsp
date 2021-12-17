<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 할인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/owners.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
<script>
	if(${ requestScope.msg != null && requestScope.msg != ''}){
		alert('${ requestScope.msg }');
	}

	if(${ requestScope.message != null && requestScope.message != ''}){
		alert('${ requestScope.message }');
	}
</script>

	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
      <br><h2 style="margin-left: 150px; font-weight: 900;">오늘의 할인</h2>
      <hr>
    </div>
    
   	
     <div class="body-all">
      <div class="body-inside">
      
      <!-- sidebar  -->
      <jsp:include page="../commons/ownerSidebar.jsp"/>
    
    <div class="center-table" style="margin-left: 450px; margin-top:100px; text-align: center;">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
            <tr>
                <th scope="col"><input type="checkbox" id="ch1"></th>
                <th scope="col">번호</th>
                <th scope="col">상품</th>
                <th scope="col">할인율</th>
                <th scope="col">등록일</th>
                <th scope="col">원가</th>
                <th scope="col">할인가</th>
            </tr>
            </thead>
            <tbody>
			<c:if test="${ DCList.size() ne 0 }">     
            <c:forEach var="list" items="${ DCList }">
            <c:set var="i" value="${ i + 1 }"/>
            <c:set var="price" value="${ list.price }"/>
            <c:set var="dcRate" value="${ list.discountRate }"/>
            <c:set var="dcPrice" value="${ price * ((100 - dcRate) / 100) }"/>
            <c:set var="j" value="${ (requestScope.pagination.pageNo / 2) * 10 }"/>
            <fmt:parseNumber var="page" integerOnly="true" value="${ j }"/>
            <tr>
                <th scope="row"><input type="checkbox" name="ch1" value="${ list.sdCode }"></th>
                <c:if test="${ requestScope.pagination.pageNo > 1 }">
                	<td>${ i + j }</td>
                </c:if>
                <c:if test="${ requestScope.pagination.pageNo <= 1 }">
                	<td>${ i }</td>
                </c:if>
                <td>${ list.sdName }</td>
                <td>${ list.discountRate }%</td>
                <td>${ list.insertDate }</td>
                <td><fmt:formatNumber value="${ list.price }" type="number"/>원</td>
                <td><fmt:formatNumber value="${ dcPrice }" type="number"/>원</td>
            </tr>
            </c:forEach>
            </c:if> 
            <c:if test="${ DCList.size() eq 0 }">  
            	<tr>
            		<td colspan="7" style="font-weight: 700; font-size: 20px; padding-top : 70px;">등록된 상품이 없습니다.</td>
            	</tr>
            </c:if>        
            </tbody>
        </table>
        
        <br><br>
        
        <!-- 모달버튼 -->
        <div style="margin-bottom: 150px">
        <button type="button" id="button1" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
            등록</button>
        <button id="button2" style="height: 35px;">삭제</button>
        </div>
    </div>
    
     <script>
	        $("#ch1").click(function(){
	  	      if($("#ch1").prop("checked")){
	  	        $("input[name=ch1]").prop("checked",true);
	  	      } else{
	  	        $("input[name=ch1]").prop("checked",false);
	  	      }
	  	    });
	        
	        $("#button2").click(function(){
		    	
		    	let arr = [];
		    	$('input:checkbox[name=ch1]:checked').each(function(){
		    		let value = $(this).val();
		    		arr.push(value);
		    	})
		    	
		    	console.log(arr);
		    	
		    	let form = $('<form></form>');
		        form.attr('action', '${pageContext.servletContext.contextPath}/owner/todayDiscount');
		        form.attr('method', 'post');
		        form.appendTo('body');
		        form.append($('<input type="hidden" value="' + arr + '" name=deleteCode>'));
		        form.submit();
		    	
		    });
	        
        </script>
	
	 <c:if test="${ DCList ne null and !empty DCList }">
    <jsp:include page="../commons/ownerPaging.jsp"/>
	</c:if>
	
	<!-- 모오오오달 -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true"  style="padding-right: 544px;">
	    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" >
	    <div class="modal-dialog modal-xl" style="text-align: center;">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h5 class="modal-title" id="staticBackdropLabel">할인 추가</h5>
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	            <span aria-hidden="true">&times;</span>
	          </button>
	        </div>
	        <div class="modal-body">
	            <table class="table table" style="width: 1050px;">
	                <thead style="background-color: #EDEDED;">
	                <tr>
	                    <th scope="col"></th>
	                    <th scope="col">번호</th>
	                    <th scope="col">상품</th>
	                    <th scope="col">제조일</th>
	                    <th scope="col">할인율</th>
	                </tr>
	                </thead>
	                <tbody>
	            	<c:forEach var="product" varStatus="index" items="${ productList }">
	            	<c:set var="k" value="${ k + 1 }"/>
	                <tr>
	                    <td scope="row"><input type="checkbox" name="checkCode" value="${ product.sdCode }"></td>
	                    <td>${ k }</td>
	                    <td>${ product.sdName }</td>
	                    <td>${ product.mDate }</td>
	                    <td>
	                    	<select name="rate">
	                    		<option value="0">선택해주세요</option>
	                    		<option value="5">5%</option>
	                    		<option value="10">10%</option>
	                    		<option value="15">15%</option>
	                    		<option value="20">20%</option>
	                    		<option value="25">25%</option>
	                    		<option value="30">30%</option>
	                    		<option value="35">35%</option>
	                    		<option value="40">40%</option>
	                    		<option value="45">45%</option>
	                    		<option value="50">50%</option>
	                    	</select>
	                    </td>
	                </tr>
	                </c:forEach>
	                </tbody>
	            </table>
	        </div>
	        <div class="modal-footer" >
	          <button type="button" class="btn btn-primary" id="button">할인 등록</button>
	          <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	        </div>
	       </div>
	      </div>
	    </div>
	   </div>
	  </div>
	 </div>
    
    <script>
    	$(function() {
	    	$("#button").click(function(){
	    		
	    		let arr = [];
	    		let dcRate = [];

	    		let count = 0;
		    	$('input:checkbox[name=checkCode]:checked').each(function(){
		    		let value = $(this).val();
		    		arr.push(value);
		    		
		    		let result = $(this).parent().parent().children().last().children().val();
		    		if(result == 0){
		    			count = 1;
		    		}
		    		
		    		dcRate.push(result);
		    	});
		    	
				console.log(arr); 
				console.log(dcRate);
				
				
				if(count == 0){
				 	$('input:checkbox[name=checkCode]').attr("checked",false).prop('disabled');
					$('input:checkbox[name=checkCode]').attr("checked",false).parent().last().prop('disabled');
					
			    	 let form = $('<form></form>');
			        form.attr('action', '${ pageContext.servletContext.contextPath }/owner/todayDiscount');
			        form.attr('method', 'post');
			        form.appendTo('body');
			        form.append($('<input type="hidden" value="' + arr + '" name=sdCode>'));
			        form.append($('<input type="hidden" value="' + dcRate + '" name=dcRate>'));
			        form.submit(); 
				} else {
					 alert('할인율이 선택되지 않았습니다.');
				}
	    	}); 
    	});
    </script>
    
    <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
    
</body>
</html>
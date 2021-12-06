<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/coupon.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owners.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>     
<title>판매상품 관리</title>
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
        <h2 style="margin-left: 100px; font-weight: 900;">판매 상품 관리</h2>
        <hr>
    </div>
	
	<div class="body-all">
      <div class="body-inside">
      
     <!-- sidebar  -->
      <jsp:include page="../commons/ownerSidebar.jsp"/>
      
      <div style="text-align: center;">
        <div style="margin-left: 450px;">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
              <tr>
                <th scope="col"><input type="checkbox" id="allCheck"></th>
                <th scope="col">상품 번호</th>
                <th scope="col">상품</th>
                <th scope="col">제조일</th>
                <th scope="col">유통기한</th>
                <th scope="col">판매여부</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="list" items="${ productList }">
              <c:set var="i" value="${ i + 1}"/>
              <tr>
                <th scope="col"><input type="checkbox" name="menu" id=""></th>
                <th scope="row">${ i }</th>
                <td>${ list.sdName }</td>
                <td>${ list.mDate }</td>
                <td>${ list.eDate }</td>
                <td>
	               	<c:if test="${ list.orderableStatus eq 'Y' }">
	                <button class="couponBtn" id="btn1">판매</button>
	                </c:if>
	                
	                <c:if test="${ list.orderableStatus eq 'N' }">
	                <button class="couponBtn" style="background-color : #777777;" id="btn1">판매중단</button>
	                </c:if>
                </td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
        <div style="float: right; margin: 20px 60px 0 0;">
          <button class="dateControll">제조일자 오늘로 변경</button>
          <button class="couponBtn" style="background-color: #777777;">삭제</button>
        </div>
        </div>
      </div>  
    </div>
	<script>
	  $(function(){
	    $("#btn1").click(function(){
	      if($("#btn1").html() == "판매"){
	        $(this).css("background-color","#777777").html("판매중단");
	      } else{
	        $(this).css("background-color","#F89E91").html("판매");
	      }
	    });
	
	    $("#allCheck").click(function(){
	      if($("#allCheck").prop("checked")){
	        $("input[type=checkbox]").prop("checked",true);
	      } else{
	        $("input[type=checkbox]").prop("checked",false);
	      }
	    });
	
	  });
	</script>  
	
	<!-- footer -->
	 <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
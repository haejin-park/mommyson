<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/coupon.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>   
<title>월별 매출</title>
</head>
<body>
	
	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 150px; font-weight: 900; font-size: 40px;">월별 매출</h3>
        <hr>
    </div>
	
	 <div class="body-all">
        <div class="body-inside">
        
        <!-- sidebar  -->
      <jsp:include page="../commons/ownerSidebar.jsp"/>
      
      <div>
      <br>
      <h2 style="text-align: center;">월별 매출</h2>
      <br><br><br>
      <form action="${ pageContext.servletContext.contextPath }/owner/salseMonth" method="get" id="frm">
      <div style="float: right;"> 
      <p style="float: left; margin-right: 15px; font-weight: 700;">조회 일자 &nbsp;&nbsp;&nbsp;<input type="month" name="date1" value="${ map.date1 }"></p>
      <p style="float: left;margin-right: 15px;">~ &nbsp;&nbsp;<input type="month" name="date2" value="${ map.date2 }"></p>
      <button type="button" class="couponBtn" style="width: 80px; margin-top: 2px;">조회하기</button>
      </div>
    </form>
    </div>
    <br><br>
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
            <c:if test="${ salseMonth != null and !empty salseMonth }">
            <c:forEach var="list" items="${ salseMonth }">
              <tr>
                <th scope="row">${ list.PAYDATE }</th>
                
                <c:if test="${ list.PICKPRICE != null and !empty list.PICKPRICE }">
                <td><fmt:formatNumber value="${ list.PICKPRICE }" pattern="#,###"/>원</td>
                </c:if>
                
                <c:if test="${ list.PICKPRICE == null and empty list.PICKPRICE }">
                <td>0원</td>
                </c:if>
                
                <c:if test="${ list.DELPRICE != null and !empty list.DELPRICE }">
                <td><fmt:formatNumber value="${ list.DELPRICE }" pattern="#,###"/>원</td>
                </c:if>
                
                <c:if test="${ list.DELPRICE == null and empty list.DELPRICE }">
                <td>0원</td>
                </c:if>
                
                <td style="font-weight: 700;"><fmt:formatNumber value="${ list.TOTALPRICE }" pattern="#,###"/>원</td>
              </tr>
              </c:forEach>
             </c:if>
             
             <c:if test="${ salseMonth == null and empty salseMonth }">
             	<tr>
             		<td colspan="4">매출이 없습니다.</td>
             	</tr>
             </c:if>
            </tbody>
          </table>
        </div>
        </div>
        <br><br><br><br>
        <jsp:include page="../commons/pagingWithoutSearch.jsp"/>
      </div>
    </div>  
    
     <script>
    	$('.pagination').css('margin-left','693px');
     
    	$('.couponBtn').on('click',function(){
    		
	    	if($('input[name=date1]').val() !== null && $('input[name=date1]').val() != '' && $('input[name=date2]').val() !== null && $('input[name=date2]').val() != ''){
	    		$('#frm').submit();
	    	} else{
	    		alert('조회날짜를 입력해주세요.');
	    	}
    	});
    </script>
    
    
    <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
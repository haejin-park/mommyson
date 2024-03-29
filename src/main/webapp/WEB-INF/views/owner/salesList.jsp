<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/coupon.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>매출 내역</title>      
</head>
<body>
	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<div class="page-text" style="width: 1550px; margin: 0 auto;">
        <br><h3 style="margin-left: 150px; font-weight: 900; font-size: 40px">매출 내역</h3>
        <hr>
    </div>
    <div class="body-all">
        <div class="body-inside">
        <jsp:include page="../commons/ownerSidebar.jsp"/>
        
    <div class="body-center" style="text-align: center;">
        <h2 style="margin-left: 150px;"><strong>오늘의 매출 내역</strong></h2>
        <br><br>
            <table class="table table" style="width: 1050px; margin-left: 60px; text-align: center;" >
                <thead>
                    <tr>
                        <th rowspan="2" style="background-color: rgba(252, 235, 233, 1); width: 200px;">배달</th>
                        <td >주문 총 금액</td>
                        <td >주문금액(영업이익)</td>
                        <td >배송비</td>
                    </tr>
                    <tr>
                    	<c:if test="${ requestScope.delPrice != null and !empty requestScope.delPrice }">
                        <td><fmt:formatNumber value="${ requestScope.delPrice.TOTALPRICE }" pattern="#,###"/>원</td>
                        <td><fmt:formatNumber value="${ requestScope.delPrice.REAL }" pattern="#,###"/>원</td>
                        <td><fmt:formatNumber value="${ requestScope.delPrice.DELCOST }" pattern="#,###"/>원</td>
                        </c:if>
                        
                        <c:if test="${ requestScope.delPrice == null and empty requestScope.delPrice }">
                        <td colspan="3" style="font-weight: 700; font-size: 20px;">등록된 주문이 없습니다.</td>
                        </c:if>
                        
                    </tr>
                </thead>
                </table><br>

            <table class="table table" style="width: 1050px;margin-left: 60px; text-align: center;" >
                <thead>
                    <tr>
                        <th rowspan="2" style="background-color: rgba(252, 235, 233, 1); width: 200px;">포장</th>
                        <td colspan="3">주문금액(영업이익)</td>
                        </tr>
                        <tr>
                        	<c:if test="${ requestScope.pickupPrice != null and !empty requestScope.pickupPrice }">
                            <td colspan="3"><fmt:formatNumber value="${ requestScope.pickupPrice }" pattern="#,###"/>원</td>
                            </c:if>
                            
                            <c:if test="${ requestScope.pickupPrice == null and empty requestScope.pickupPrice }">
                            <td colspan="3" style="font-weight: 700; font-size: 20px;" >등록된 주문이 없습니다.</td>
                            </c:if>
                        </tr>
                    </thead>            
            </table><br>   
  

            <table class="table table" style="width: 1050px; margin-left: 60px; text-align: center;" >
                <thead>
                    <tr>
                        <th rowspan="2" style="background-color: rgba(252, 235, 233, 1); width: 200px;">총 매출</th>
                        <td>주문 총 금액</td>
                        <td>주문금액(영업이익)</td>
                        <td>배송비</td>
                    </tr>
                    <tr>
                    	<c:if test="${ requestScope.totalPrice != null and !empty requestScope.totalPrice }">
                        <td><fmt:formatNumber value="${ requestScope.totalPrice.TOTALPRICE }" pattern="#,###"/>원</td>
                        <td><fmt:formatNumber value="${ requestScope.totalPrice.REAL }" pattern="#,###"/>원</td>
                        <td><fmt:formatNumber value="${ requestScope.totalPrice.DELCOST }" pattern="#,###"/>원</td>
                        </c:if>
                        
                        <c:if test="${ requestScope.totalPrice == null and empty requestScope.totalPrice }">
                        <td colspan="3" style="font-weight: 700; font-size: 20px;">등록된 주문이 없습니다.</td>
                        </c:if>
                    </tr>
                </thead>
            </table><br>
            <div style="float: right;">
            <button type="button"  id="couponBtn" style="height: 30px;" onclick="location.href='${pageContext.servletContext.contextPath}/owner/salesDay'">일별 매출</button>
          	<button id="couponBtn" style="height: 30px; margin-left: 20px;" onclick="location.href='${pageContext.servletContext.contextPath}/owner/salseMonth'">월별 매출</button>
            </div>
			
			<br><br><br><br><br><br>
            <canvas id="bar-chart-grouped" width="830" height="450" style="margin-left: 80px;"></canvas>

            <script>
            	let str = '${ requestScope.str }';
	            let delPrice = '${ requestScope.delPrices }'
	            let pickPrice = '${ requestScope.pickPrice }'
	            
	            let str2 = str.split(',');
            	let delPrice2 = delPrice.split(",");
            	let pickPrice2 = pickPrice.split(",");
            	
               new Chart(document.getElementById("bar-chart-grouped"), {
                type: 'bar',
                data: {
                    // x축 / y축은 데이터 값에 따라 자동으로 바뀜
                labels: str2,
                datasets: [
                    {
                    label: "배달",
                    backgroundColor: "rgba(195, 191, 239, 1)",
                    // 데이터 값
                    data: delPrice2
                    }, {
                    label: "포장",
                    backgroundColor: "rgba(252, 235, 233, 1)",
                    // 데이터 값
                    data: pickPrice2
                    }
                ]
                },
                options: {
                title: {
                    display: true,
                    text: '월별 매출 현황',
                    fontSize:30,
                },scales: {
                    xAxes: [{ 
                    scaleLabel: {
                        display: true,
                        labelString: "단위 : 만(원)"
                    }
                    }]
                }

                }
            });
            </script>
    	</div>
       </div>  
	 </div>

 <!-- footer --> 
  <jsp:include page="../commons/footer.jsp"/>
   

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/orderComplete.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>

<body>
<jsp:include page="../commons/header.jsp"/>
    <br><br><br>

    <form>
    <h3 id="orderComplete">주문완료</h3>
    <br>
    <div id="div">
      <p id="p">주문이 성공적으로 완료되었습니다.</p>
      <br>
      <button id="myOrderList">주문내역</button>
      <button id="customerCare">1:1문의</button>
    </div>
    <br><br>

    <p id="information">주문자 정보</p>
    <br>
    
    <table id="table1">  
        <tr>    
            <th>연락처</td>
            <td value="${ phone }"></td>
        </tr>
        <!-- 만약 딜리버리 페이에서 주소 Order_TBL걸로 하나만 업로드했다면 주소만 쓸것  -->
        <tr>
            <th>우편번호</th>
            <td value="${ postCode }"></td>
        </tr>
        <tr>
            <th>주소</th>
            <td value="${ address }"></td>
        </tr>
        <tr>
            <th>상세주소</th>
            <td value="${ dAddress }"></td> 
        </tr>
    </table>
    <br>
    <br>

    <p id="orderProduct">주문 내역</p>
    <br>    
    <c:forEach var="row" items="${ list.map }" varStatus="i">
	    <table id="table2">  
	        <tr>
	            <th id="restaurantInformation">가게상호 </th>
	            <th id="productInformation">반찬명</th>
	            <th id="quantity">수량</th>
	            <th id="paymentAmount">결제금액</th>
	            <th id="takeTime">예약시간</th>
	        </tr>
	        <tr>
	            <td value="${ row.storeName }"></td>
	            <td value="${ row.sdName }"></td>
	            <td value="${ row.amount }"></td>
	            <td value="${ row.totalPrice }"></td>
	        	<td value="${ row.takeTime }"></td>
	        </tr>
	    </table>
    </c:forEach>
    </form>
    <br><br><br><br>
    <jsp:include page="${ pageContext.servletContext.contextPath }/views/commons/footer.jsp"/>
    
    
    <script>
    
    const $myOrderList = document.getElementId("myOrderList");
    	$myOrderList.onclick = function(){
    		location.href = "${ pageContext.servletContext.contextPath }/userMyPage/myOrderList";
    	}
    	
   const $customerCare = document.getEementId("customerCare");
   		$customerCare.onclick = function(){
   			location.href = "${ pageContext.servletContext.contextPath }/user/ucc/MTMQnA";
   		}
    </script>
</body>
</html>
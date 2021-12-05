<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/shppingBusket.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

	<jsp:include page="../commons/header.jsp"/>
	<br>
	<form>
	    <img class=cart1 src="${ pageContext.servletContext.contextPath }/resources/images/cart1.png" >
	    <table id="table1">
	      <tr id="tr1">
	        <th><input type=checkbox id="all"></th>
	        <th>가게 정보</th>
	        <th>제품 정보</th>
	        <th>제품 금액</th>
	        <th>수량</th>
	        <th>총 제품 금액</th>
	      </tr>
	      <tr id="tr2">
	        <td><input type=checkbox name="checkbox"></td>
	        <td><img class=restaurantLogo001 src="${ pageContext.servletContext.contextPath }/resources/images/restaurantLogo001.png"><br>찜닭최고</td>
	        <td><img class=chicken src="${ pageContext.servletContext.contextPath }/resources/images/chicken.png"><br>고추장 야채 찜닭</td>
	        <td>10,000원</td>
	        <td>
          	<div class="number">
            	<a href="#" id="decreaseQuantity"> - </a>
	            <span id="numberUpDown">1</span>
	            <a href="#" id="increaseQuantity"> + </a>
         	</div>
	        </td>
	        <td>10,000원</td>
	      </tr>
	    </table>
    	<div id="div1">
		  <table id="table2">
	        <tr>
	          <th>가게별 총 제품 금액(배달시 배송비 별도)</th>
	          <td id="totalAmountByStore">10,000원</td>
	        </tr>
	      </table>
	    </div>
	    <div id="div2">
	      <table id="table3">
	        <tr>
	          <th>총 제품 금액 합계(배달 시 배송비 별도)</th>
	          <td id="paymentAmount">10,000원</td>
	        </tr>
	      </table>
	    </div>
	    <br> 
	    <p id="p1">쿠폰으로 추가 할인 받으세요!</p>
	    <br>  
      	<button type="button" id="selectDelete">선택삭제</button>
      	<button type="submit" id="package">방문포장</button>
      	<button type="submit" id="delivery">배달예약</button>
	</form>  
	<br><br><br><br><br>
    <jsp:include page="../commons/footer.jsp"/>

	<script>
	 
	  /* 전체 체크, 해제 */
	  $("#all").on("change",function(){
	        if($("#all").is(":checked")){
	            $("input[name=checkbox]").prop("checked",true);
	        } else {
	            $("input[name=checkbox]").prop("checked",false);
	        }
	    });
	
	  /* 수량 증감 */
	  $(function(){
	    $('#decreaseQuantity').click(function(e){
	      e.preventDefault();
	      var stat = $('#numberUpDown').text();
	      var num = parseInt(stat,10);
	      num--;
	      if(num < 0){
	      	num = 0;
	      }
	      $('#numberUpDown').text(num);
	    });
	    
	    $('#increaseQuantity').click(function(e){
	      e.preventDefault();
	      var stat = $('#numberUpDown').text();
	      var num = parseInt(stat,10);
	      num++;
	      $('#numberUpDown').text(num);
	  });
	});
	
	
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>배달 예약 주문</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/deliveryPay.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<jsp:include page="../commons/header.jsp"></jsp:include>
	<form action="${ pageContext.servletContext.contextPath }/user/deliveryPay" method="POST">
		<div class="delivery-container at-container">
	    	<h2 class="title">배달 예약 주문</h2>
		    <div class="infoBox">
		    	<h3 class="title2">배송 정보</h3>
		    	<div>
				    <span>연락처</span>
				    <input type="text" id="phone" placeholder=" 연락처를 입력해주세요" style="width: 200px;">
			    </div>
			    <div>
				    <span>우편번호</span>
				    <input type="text" class="input1" name="zipCode" id="zipCode" placeholder=" 우편번호를 검색해주세요" style="width: 200px;" readonly>
				    <input type="button" id="searchZipCode" value="검색" class="search_btn">
			    </div>
			    <div>
				    <span>주소</span>
				    <input type="text" class="input1" id="address1" style="width: 500px;" readonly>
			    </div>
			    <div>
				    <span>상세주소</span>
				    <input type="text" class="input1" id="address2" style="width: 500px;" required>
				    <input type="checkbox" class="myCheckBtn" id="myaddress">
				    <label for="myaddress"></label>
				    <span>내 주소로 배달</span>
			    </div>
		    </div>
		    
		    <div class="infoBox2">
		    	<table id="table1" class="info_table" border="0">
		    		<colgroup>
		    			<col width="20%"/>
		    			<col width="20%"/>
		    			<col width="20%"/>
		    			<col width="20%"/>
		    			<col width="20%"/>
		    		</colgroup>
		    		<thead>
			      		<tr id="tr1">
				          	<th>가게정보</th>
				          	<th>가게별 총 제품 금액</th>
				          	<th>배송비</th>
				          	<th>쿠폰</th>
				          	<th>예약시간</th>
			        	</tr>
		        	</thead>
		        	<tbody>
			        	<tr id="tr2">
					        <td>
					        	<img src="${ pageContext.servletContext.contextPath }/resources/images/restaurantLogo001.png">
					        </td>
					        <td></td>
					        <td>10,000원</td>
					        <td>
						        <select>
						        <option value="1">쿠폰을선택하세요</option>
						        <option value="2">회원가입기념10%할인</option>
						        </select>
					        </td>
				            <td><input type="time" id="time"></td>
			        	</tr>
		        	</tbody>
	      		</table>
		    </div>
		    
		    <div class="info_box3">
		    	<ul class="df_ul payment_list">
		    		<li>
		    			<p>총 제품금액</p>
		    			<strong>1<span class="won">원</span></strong>
		    		</li>
		    		<li>
		    			<img src="${ pageContext.servletContext.contextPath }/resources/images/pay_minus.png" alt="-">
		    		</li>
		    		<li>
		    			<p>할인금액</p>
		    			<strong>1<span class="won">원</span></strong>
		    		</li>
		    		<li>
		    			<img src="${ pageContext.servletContext.contextPath }/resources/images/pay_plus.png" alt="+">
		    		</li>
		    		<li>
	    				<p>총 배송비</p>
		    			<strong>1<span class="won">원</span></strong>
		    		</li>
		    		<li>
		    			<img src="${ pageContext.servletContext.contextPath }/resources/images/pay_result.png" alt="=">
		    		</li>
		    		<li>
		    			<p>결제 금액</p>
		    			<strong>1<span class="won">원</span></strong>
		    		</li>
		    	</ul>
		    </div>
		    <div class="btn_box">
			    <input type="submit" value="결제하기" class="final_btn" style="margin-right: 15px;">
			    <a href="${ pageContext.servletContext.contextPath }/user/cart" class="final_btn" style="background-color: #EDEDED; color: #333 !important;">취소하기</a>
		    </div>
	   	</div>
	</form>
        

    <!-- <div id="div2">
      <table id="table2">
        <tr>
          <th>제품금액</th>
          <th></th>
          <th>할인금액</th>
          <th></th>
          <th>결제 금액</th>
        </tr>
        <tr>
          <td>10,000원</td>
          <td> - </td>
          <td>1,000원</td>
          <td> = </td>
          <td id="paymentAmount">9,000원</td>
        </tr>
      </table>
    </div> -->
    <!-- <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" id="pay">결제하기</button>
    <button type="reset" id="goShoppingBasket">취소하기</button> -->
    
    <jsp:include page="../commons/footer.jsp"/>
   
    <script>
        function validate(){
          var name = document.getElementById("name");
          var phone = document.getElementById("phone");
          var zipCode = document.getElementById("zipCode");
          var address1 = document.getElementById("address1");
          var address2 = document.getElementById("address2");

          if(name.value == ""){
              alert("이름을 입력해주세요.")
              name.focus()
              return false;
          }

          if(!chk(/^[가-힣]{2,}$/,name,"이름은 한글로 2글자 이상을 넣으세요")){
              return false;
          }
          if(phone.value == ""){
                alert("전화번호를 입력해주세요.")
                phone.focus()
                return false;
            }

            var reg = /^[0-9]+/g;
            if(!reg.test(phone.value)) {
                alert("전화번호는 숫자만 입력할 수 있습니다.")
                phone.focus();
                return false;
            }

          if(zipCode.value == ""){
              alert("우편번호 입력해주세요.")
              zipCode.focus()
              return false;
          }
          if(address1.value == ""){
              alert("주소를 입력해주세요.")
              address1.focus()
              return false;
          }
          if(address2.value == ""){
              alert("상세주소를 입력해주세요.")
              address2.focus()
              return false;
          }
      
      }

      function chk(re, ele, msg){
    	  
	      if(!re.test(ele.value)){
	          alert(msg);
	          ele.select();
	          return false;
	      }
	      return true;
      }

    </script>

    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    const $searchZipCode = document.getElementById("searchZipCode");

    $searchZipCode.onclick = function() {

    //다음 우편번호 검색 창을 오픈하면서 동작할 콜백 메소드를 포함한 객체를 매개변수로 전달한다.
    new daum.Postcode({
      oncomplete: function(data){
        //팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
        document.getElementById("zipCode").value = data.zonecode;
        document.getElementById("address1").value = data.address;
        document.getElementById("address2").focus();
        }
      }).open();
    }

    </script>

    <script>
	    const $goShoppingBasket = document.getElementById("goShoppingBasket");
	
	      $goShoppingBasket.onclick = function() {
	      location.href = "${ pageContext.servletContext.contextPath }";
	    }
    </script>

</body>
</html>
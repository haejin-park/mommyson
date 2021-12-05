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
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/deliveryPay.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<jsp:include page="../commons/header.jsp"></jsp:include>
	<br>
    <form>
    <h2 id="order">배달 예약 주문</h2>
    <br>
    <div id="div1">
      <div id="deliveryLocation">
        <h3>배송 정보 입력</h3>
        <br><br>
        <span>연락처</span> &nbsp; &nbsp; &nbsp;
        <input type="text" id="phone" placeholder=" 연락처를 입력해주세요" >
        <br><br>
        <span>우편번호</span> &nbsp;
        <input type="text" class="input1" name="zipCode" id="zipCode" placeholder=" 우편번호를 검색해주세요" readonly>
        <input type="button" id="searchZipCode" value="검색">
        <br><br>
        <span>주소</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="text" class="input1" id="address1" readonly>
        <br><br>
        <span>상세주소</span> &nbsp;
        <input type="text" class="input1" id="address2" required>
        <br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <input type="checkbox">&nbsp;<span>내 주소로 배달</span>
      </div>
    </div>
    <br><br>
    <div>
      <table id="table1">
        <tr id="tr1">
          <th>가게정보</th>
          <th>가게별 총 제품 금액</th>
          <th>쿠폰</th>
          <th>예약시간</th>
        </tr>
        <tr id="tr2">
          <td><img class=restaurantLogo001 src="${ pageContext.servletContext.contextPath }/resources/images/restaurantLogo001.png"><br>찜닭최고</td>
          <td>10,000원</td>
          <td>
            <select>
              <option value="1">쿠폰을선택하세요</option>
              <option value="2">회원가입기념10%할인</option>
            </select>
          </td>
          <td><input type="time" id="time"></td>
        </tr>
    </table>
  </div>
  <br>  

    <div id="div2">
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
    </div>
    <br><br>
    <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" id="pay">결제하기</button>
    <button type="reset" id="goShoppingBasket">취소하기</button>
    

    </form>
    <br><br><br><br>
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
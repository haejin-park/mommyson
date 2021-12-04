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
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/packagePay.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  	<jsp:include page="../commons/header.jsp"></jsp:include>
    <br>

    <form>
      <div id="information">
        <h3>주문자정보</h3>
        <br><br>
        <input type="text" class="input1" id="name" placeholder=" 이름을 입력해주세요">
        <br><br>
        <input type="text" class="input1" id="phone" placeholder=" 전화번호를 입력해주세요">
      </div>
      <br>


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
      <br>  


      
      <div id="div2">
        <table id="table2">
          <tr id="tr3">
          <th>제품금액</th>
          <th></th>
          <th>할인금액</th>
          <th></th>
          <th>결제 금액</th>
          </tr>
          <tr>
            <td id="tr4">10,000원</td>
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
    
<!--       결제하기 Modal
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">결제하기</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" style="text-align: center;">결제 수단
              <select>
                <option>카카오페이</option>
                <option>받을 때 결제</option>
              </select>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" id="ok">결제</button>
              <button type="reset" class="btn btn-secondary" data-dismiss="modal" id="cancle">취소</button>
            </div>
          </div>
        </div>
    </div> -->
    </form>
    <br><br><br><br>
    <jsp:include page="../commons/footer.jsp"/>
    
    <script>
    function validate(){
      var name = document.getElementById("name");
      var phone = document.getElementById("phone");
      

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

    function chk(re, ele, msg){
      if(!re.test(ele.value)){
              alert(msg);
              ele.select();
              return false;
          }
          return true;
      }

    }
</script>

<!-- <script>

  /* 방문 포장 모달창 */
$('#pay').click(function(e){
$('#exampleModal').modal('show');
e.preventDefault();
});
$('#ok').click(function(e){
$('#exampleModal').modal('hide');
});

</script> -->

</body>
</html>
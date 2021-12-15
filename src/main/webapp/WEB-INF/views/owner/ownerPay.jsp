<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/pay.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>정액제 결제</title>
</head>
<body>

	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<br><br><br><br>
    <div class="owner">
        <p style="text-align: center; margin-bottom: 50px; font-size: 40px; font-weight: 900;">사업자 결제</p>
        <hr>
    </div>
    <div class="payAll">
        <div style="text-align: center; padding-top: 100px;">
            <h1>사업자 정액제</h1>
            <form id="frm" action="${ pageContext.servletContext.contextPath }/owner/ownerPay2" method="post">
            <div class="month">
                <h3 class="title">90일 이용권</h3>
                <p class="price">199,000원</p>
                <p class="vat">12%할인, VAT포함</p>
                <button class="start" id="monthBtn">시작하기</button>
            </div>
            <div class="year">
                <h3 class="title">1년 이용권</h3>
                <p class="price">699,000원</p>
                <p class="vat">12%할인, VAT포함</p>
                <button class="start" id="yearBtn">시작하기</button>
            </div>
            <input type="hidden" name="pay">
            </form>
        </div>
        <h2 style="text-align: center; margin-top: 530px;">이용하실 이용권을 선택해주세요.</h2>
    </div>
    
    <script>
    	$('#monthBtn').click(function(){
    		$("input[name=pay]").val(1);
    		$("#frm").submit();
    	});
    	
    	$('#yearBtn').click(function(){
    		$("input[name=pay]").val(2);
    		$("#frm").submit();
    	});
    </script>
    
    
    <!-- footer -->
  <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
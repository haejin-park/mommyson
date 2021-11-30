<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../resources/css/pay.css">
<title>정액제 결제</title>
</head>
<body>

	<!-- header -->
	<jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/header.jsp"/>
	
	<br><br><br><br>
    <div class="owner">
        <p style="text-align: center; margin-bottom: 50px; font-size: 40px; font-weight: 900;">사업자 결제</p>
        <hr>
    </div>
    <div class="payAll">
        <div style="text-align: center; padding-top: 100px;">
            <h1>사업자 정액제</h1>
            <div class="month">
                <h3 class="title">3개월 이용권</h3>
                <p class="price">199,000원</p>
                <p class="vat">12%할인, VAT별도</p>
                <button class="start">시작하기</button>
            </div>
            <div class="year">
                <h3 class="title">1년 이용권</h3>
                <p class="price">699,000원</p>
                <p class="vat">12%할인, VAT별도</p>
                <button class="start">시작하기</button>
            </div>
        </div>
        <h2 style="text-align: center; margin-top: 530px;">이용하실 이용권을 선택해주세요.</h2>
    </div>
    
    <!-- footer -->
  <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/footer.jsp"/>
	
</body>
</html>
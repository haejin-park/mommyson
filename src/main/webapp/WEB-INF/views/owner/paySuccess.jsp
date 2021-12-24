<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 완료</title>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/pay.css">
</head>
<body>

	<jsp:include page="../commons/header.jsp"/>
	
	<br><br><br><br>

    <br><br>
    <div style="width: 1550px; margin: 0 auto;">
        <p style="margin: 20px 0 50px 30px; font-size: 40px; font-weight: 900; float: left">이용권 결제</p>
        <p style="float: right; font-size: 20px; font-weight: 700; margin-top: 30px; margin-right: 30px; color: #346aff">결제완료</p>
        <p style="float: right; font-size: 20px; font-weight: 700; ; margin-top: 30px;">이용권 결제></p>
        <br><br><br><br><br><br>
        <hr>
    </div>
    
    <div style="text-align: center; margin-top: 100px;">
    <img src="${ pageContext.servletContext.contextPath }/resources/images/logo.png" style="width: 400px;">
    </div>
    <div style="text-align: center; margin: 100px 0 100px 0;">
        <h1>결제가 완료되었습니다.</h1>
    </div>
    <div style="margin-bottom: 50px; text-align: center;">
    <h2>결제 정보</h2>
    </div>
    <table class="tg" style="text-align: center;">
        <tbody>
        <tr>
            <th class="tg-c3ow">구매 상호명</th>
            <th class="tg-0pky">${ requestScope.successInfo.storeName }</th>
        </tr>
        <tr>
            <td class="tg-c3ow">상품명</td>
            <td class="tg-0pky">${ requestScope.successInfo.msType }</td>
        </tr>
        <tr>
            <td class="tg-c3ow">결제 일시</td>
            <td class="tg-0pky">${ requestScope.successInfo.payDate }</td>
        </tr>
        <tr>
            <td class="tg-c3ow">총 결제 금액</td>
            <td class="tg-0pky">${ requestScope.successInfo.price }</td>
        </tr>
        <tr>
            <td class="tg-c3ow">결제 수단</td>
            <td class="tg-0pky">카카오페이</td>
        </tr>
        </tbody>
    </table>
    <br><br>
    
    <div style="text-align: center; margin-top: 50px;">
        <a href="${ pageContext.servletContext.contextPath }/"><button class="payment" style="margin-right: 0px; width: 200px;">홈으로</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${ pageContext.servletContext.contextPath }/owner/receipt?payDate=${ requestScope.successInfo.payDate }"><button class="payment" style="margin-right: 0px; width: 200px;">영수증 확인하기</button></a>
    </div>    
    
    
    <jsp:include page="../commons/footer.jsp"/>
	

</body>
</html>
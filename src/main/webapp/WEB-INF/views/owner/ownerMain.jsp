<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owners.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>사업자 마이페이지</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<div class="page-text" style="width: 1550px; margin: 0 auto;">
	<br><br><br>
        <br><h2 style="margin-left: 100px; font-weight: 900;">사업자 마이페이지</h2>
        <hr>
    </div>
	
	<div class="body-all">
	  <div class="body-inside">
        
        <!-- sidebar  -->
        <jsp:include page="../commons/ownerSidebar.jsp"/>
	
	
		<div class="body-center" style="text-align: center;">
        <br><br>
        <img src="${ owner.ceo.store.storeImg }" width="300px" style="margin-left: 60px;">
        <br><br><br><br>
            <table class="tg">
                <tbody>
                <tr>
                    <th class="tg-c3ow">상호명</th>
                    <th class="tg-0pky">${ owner.ceo.store.storeName }</th>
                </tr>
                <tr>
                    <td class="tg-c3ow">주소</td>
                    <td class="tg-0pky">${ owner.address }${ owner.dAddress }</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">영업시간</td>
                    <td class="tg-0pky">${ owner.ceo.store.workTime }</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">전화번호 </td>
                    <td class="tg-0pky">${ owner.phone }</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">가게소개</td>
                    <td class="tg-0pky">${ owner.ceo.store.storeInfo }</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">대표자명</td>
                    <td class="tg-0pky">${ owner.ceo.name }</td>
                </tr>
                </tbody>
            </table>
        <br><br><br>
        </div>
      </div>  
   </div>
    <br><br><br>
    <br><br><br>
    <br><br><br>
    <br><br><br>
    <br><br><br>
    <br><br><br>
  <!-- footer --> 
  <jsp:include page="../commons/footer.jsp"/>
   
</body>
</html>
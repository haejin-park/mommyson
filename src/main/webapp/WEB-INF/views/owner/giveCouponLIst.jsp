<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 발행 내역</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/coupon.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</head>
<body>
	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>

    <br><br><br>
	<div class="page-text" style="width: 1550px; margin: 0 auto;">
		<h3 style="margin-left: 100px; font-weight: 900;">쿠폰 발행 내역</h3>
		<hr>
	</div>

	<div class="body-all">
		<div class="body-inside">

			<!-- sidebar  -->
			<jsp:include page="../commons/ownerSidebar.jsp" />

			<div style="text-align: center;">
				<br>
				<br> <img
					src="${ pageContext.servletContext.contextPath }/${ owner.ceo.store.storeImg }"
					width="300px"><br>
				<br> <br>
				<br>
				<div style="margin-left: 450px;" id="before">
					<h3 style="font-weight: 900; text-align: left; margin-left: 30px;">발행한
						쿠폰</h3>
					<br>
			         <table class="table table" style="width: 1050px;">
			            <thead style="background-color: #EDEDED;">
			              <tr>
			                <th scope="col">쿠폰 지급일</th>
			                <th scope="col">쿠폰이름</th>
			                <th scope="col">지급 대상</th>
			                <th scope="col">사용 여부</th>
			              </tr>
			            </thead>
			            <tbody>
						<c:forEach var="cp" items="${ givecpList }">
			              <tr>
			                <td>${ cp.giveDate }</td>
			                <td>${ cp.cpName }</td>
			                <td>${ cp.nickName }</td>
			                <td>${ cp.useStatus }</td>
			              </tr>
			             </c:forEach>
			            </tbody>
			          </table>
			          <br><br>
				</div>
			</div>
			<!-- 페이지네이션 -->
			<div style="margin-left: 450px; position: relative; top: 100px;">
			<jsp:include page="../commons/pagingWithoutSearch.jsp"/>
			</div>
		</div>
	</div>

	<!-- footer -->
	<jsp:include page="../commons/footer.jsp" />

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owners.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
        <img src="${ pageContext.servletContext.contextPath }/resources/images/owner-logo.png" width="300px" style="margin-left: 60px;">
        <br><br><br><br>
        <form>
            <table class="tg">
                <tbody>
                <tr>
                    <th class="tg-c3ow">상호명</th>
                    <th class="tg-0pky">숙이네 반찬</th>
                </tr>
                <tr>
                    <td class="tg-c3ow">주소</td>
                    <td class="tg-0pky">서울시 광진구 중곡동 19-3(1층)</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">영업시간</td>
                    <td class="tg-0pky">08:00 ~ 21:00</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">전화번호 </td>
                    <td class="tg-0pky">02-403-1234</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">가게소개</td>
                    <td class="tg-0pky"><br>저희 가게는 모든 반찬을 국내산으로 만들고 있으며 내 자식이 먹는다는 <br>생각을 가지고 정성껏 만들고 있습니다. 안심하시고 드셔도됩니다. 올 ㅋ<br><br><br></td>
                </tr>
                <tr>
                    <td class="tg-c3ow">대표자명</td>
                    <td class="tg-0pky">김미숙</td>
                </tr>
                <tr>
                    <td class="tg-c3ow">사업자 등록번호</td>
                    <td class="tg-0pky">678-43-21456</td>
                </tr>
                </tbody>
            </table>
            <button class="couponBtn" style="margin: 60px 0 0 160px; height: 30px;">등록하기</button>
        </form>
        <br><br><br>
        </div>
      </div>  
   </div>
   
  <!-- footer --> 
  <jsp:include page="../commons/footer.jsp"/>
   
</body>
</html>
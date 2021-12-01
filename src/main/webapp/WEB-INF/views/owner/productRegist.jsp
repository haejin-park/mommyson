<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/owners.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<title>상품등록</title>
</head>
<body>
	
	<!-- header -->
	<jsp:include page="../commons/header.jsp"/>
	
	<div class="page-text" style="width: 1550px; margin: 0 auto;">
        <br><h3 style="margin-left: 100px; font-weight: 900;">상품 등록</h3>
        <hr>
    </div>
    
      <div class="body-all">
        <div class="body-inside">
        
        <!-- sidebar  -->
        <jsp:include page="../commons/ownerSidebar.jsp"/>
        
        
	    <div class="body-center" style="text-align: center;">
	    <form>
	        <input type="text" placeholder="상품명을 입력해주세요." style="height: 60px; font-size: large;">
	        <br><br>
	        <h3>#</h3>
	        <select>
	            <option>선택</option>
	           <option>어린이반찬</option>
	           <option>부모님반찬</option>
	           <option>모두의반찬</option>
	       </select>
	       <h3>#</h3>
	        <select>
	            <option>선택</option>
	           <option>대용량반찬</option>
	           <option>묶음반찬</option>
	           <option>냉동반찬</option>
	           <option>할인반찬</option>
	       </select>
	       <h3>#</h3>
	        <select>
	            <option>선택</option>
	           <option>대용량반찬</option>
	           <option>묶음반찬</option>
	           <option>냉동반찬</option>
	           <option>할인반찬</option>
	       </select><br><br>
	       <input type="image" placeholder="이미지를 추가하세요" style="width: 300px; height: 300px;">
	       <br><br>
	       <textarea placeholder="간단한 상품 설명을 작성해주세요." style="width: 400px; height: 100px;"></textarea>
	       <br> <br>
	       <table class="tg-product">
	        <tbody>
	        <tr>
	            <th class="tg-p">제조일자</th>
	            <th class="tg-pp"><input type="date"></th>
	        </tr>
	        <tr>
	            <td class="tg-p">유효기간</td>
	            <td class="tg-pp">
	                <h6>제조일로부터 <input type="text" style="width: 25px;"> 일</h6>
	            </td>
	        </tr>
	        <tr>
	            <td class="tg-p">구매가능여부</td>
	            <td class="tg-pp">
	                <select>
	                   <option>구매가능</option>
	                   <option>구매불가</option>
	               </select>
	            </td>
	        </tr>
	        <tr>
	            <td class="tg-p">용량</td>
	            <td class="tg-pp"><input type="text" style="width: 80px;">  g</td>
	        </tr>
	        <tr>
	            <td class="tg-p">식품유형</td>
	            <td class="tg-pp">
	                <input type="text" placeholder="식품유형을 작성해주세요">
	            </td>
	        </tr>
	        <tr>
	            <td class="tg-p">원재료명</td>
	            <td class="tg-pp">
	                <input type="text" placeholder="원재료명을 작성해주세요" style="width: 500px;">
	            </td>
	        </tr>
	        <tr>
	            <td class="tg-p">보관법</td>
	            <td class="tg-pp">
	                <select>
	                    <option>0~10º 냉장보관</option>
	                    <option>상온보관</option>
	                    <option>냉동보관</option>
	                </select>
	            </td>
	        </tr>
	        <tr>
	            <td class="tg-p">가격</td>
	            <td class="tg-pp"><input type="text" style="width: 100px;">   원</td>
	        </tr>
	        </tbody>
	    </table><br><br><br>
	
	    <button style="background-color: rgba(248, 158, 145, 1); border: none; border-radius: 5px; color: white; width: 100px;">등록하기</button>
	    </form> 
	   </div>  
	 </div>
	
	<!-- footer -->
	 <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
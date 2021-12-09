<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
        <br><h2 style="margin-left: 100px; font-weight: 900;">상품 등록</h2>
        <hr>
    </div>
    
      <div class="body-all">
        <div class="body-inside">
        
        <!-- sidebar  -->
        <jsp:include page="../commons/ownerSidebar.jsp"/>
        
	    <div class="body-center" style="text-align: center;">
	    <form action="${ pageContext.servletContext.contextPath }/owner/productRegist" method="post" id="frm" enctype="multipart/form-data">
	        <input type="text" placeholder="상품명을 입력해주세요." name="sdName" style="height: 60px; font-size: large;">
	        <br><br>
	        <select name="categoryCode" id="category">
            <option>반찬 카테고리</option>
           <c:forEach var="map" items="${ categoryList }" varStatus="i">
           		<option value="<c:out value="${ map.CATEGORY_CODE }"/>"><c:out value="${ map.CATEGORY_NAME }"/></option>
           </c:forEach>
       	   </select><br>
	        <h3>#</h3>
	        <select id="tag1" name="tag1">
	            <option>선택</option>
	        	<c:forEach var="tag" items="${ tagList }">
	           		<option value="${ tag.tagNo }">${ tag.tagName }</option>
	       		</c:forEach>
	       </select>
	       <h3>#</h3>
	        <select id="tag2" name="tag2">
	           <option>선택</option>
	           <c:forEach var="tag" items="${ tagList }">
	           		<option  value="${ tag.tagNo }">${ tag.tagName }</option>
	      	   </c:forEach>
	       </select>
	       <h3>#</h3>
	        <select id="tag3" name="tag3">
	           <option>선택</option>
	           <c:forEach var="tag" items="${ tagList }">
	           		<option  value="${ tag.tagNo }">${ tag.tagName }</option>
	      	   </c:forEach>
	       </select><br><br>
	       
	    <script>
	 	$(function() {
	 		var val ="";
	 		var val2 = "";
	 		$("#tag1").on("change",function(){
	 			
	 			 val = $("#tag1 option:selected").val();
	 			$("#tag2 option[value='"+ val + "']").remove();
	 		});
	 		$("#tag2").on("change",function(){
	 			
	 			val = $("#tag1 option:selected").val();
	 			$("#tag3 option[value='"+ val + "']").remove();
	 			
	 			 val2 = $("#tag2 option:selected").val();
	 			$("#tag3 option[value='"+ val2 + "']").remove();
	 		});
	 		
	 	});
	 </script>
	       
	    <div id="review_pic"><br>
        <img src="${ pageContext.servletContext.contextPath }/resources/images/photo.png" id="review_img">
    	</div>	
	       <div style="padding-top: 50px;">
        <button type="button" id="button1" data-toggle="modal" data-target="#exampleModal">
           	 사진등록
        </button>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <img src="" id="preview-image" style="width: 400px;">
                    <hr>
                    <input type="file" name="productImg" id="input-image">
                </div>
                <div class="modal-footer">
                  <button type="button" class="button1" data-dismiss="modal">취소</button>
                  <button type="button" class="button1" id="save_img">저장</button>
                </div>
                <script>
                    // 이미지 미리보기
                    function readImage(input) {

                        if(input.files && input.files[0]) {

                            const reader = new FileReader()

                            reader.onload = e => {
                                const previewImage = document.getElementById("preview-image")
                                previewImage.src = e.target.result
                            }

                            reader.readAsDataURL(input.files[0])
                        }
                    }

                    const inputImage = document.getElementById("input-image")
                    inputImage.addEventListener("change", e => {
                        readImage(e.target)
                    })

                    // 저장 버튼 클릭 시 리뷰 사진 등록 (ajax로 수정해야함)
                    $('#save_img').on('click',function() {
                        let img = $('#preview-image').attr('src')
                        $('#review_img').attr('src',img);
                        $('#exampleModal').modal('hide');
                    })
                </script>
              </div>
            </div>
        </div>
    </div>
	       <br><br>
	       <textarea placeholder="간단한 상품 설명을 작성해주세요." name="detail" id="detail" style="width: 400px; height: 100px;"></textarea>
	       <br> <br>
	       <table class="tg-product">
	        <tbody>
	        <tr>
	            <th class="tg-p">제조일자</th>
	            <th class="tg-pp"><input type="date" name="mDate"></th>
	        </tr>
	        <tr>
	            <th class="tg-p">유통기한</th>
	            <td class="tg-pp">
	                <input type="date" name="eDate">
	            </td>
	        </tr>
	        <tr>
	            <th class="tg-p">판매상태</th>
	            <td class="tg-pp">
	                <select name="orderableStatus" id="status">
	                   <option value="Y">판매</option>
	                   <option value="N">판매불가</option>
	               </select>
	            </td>
	        </tr>
	        <tr>
	            <th class="tg-p">용량</th>
	            <td class="tg-pp"><input type="text" name="volume" style="width: 80px;">  g</td>
	        </tr>
	        <tr>
	            <th class="tg-p">식품유형</th>
	            <td class="tg-pp">
	                <input type="text" name="category" placeholder=" ex)식육함유가공">
	            </td>
	        </tr>
	        <tr>
	            <th class="tg-p">원재료명</th>
	            <td class="tg-pp">
	                <input type="text" name="ingredient" placeholder="원재료명을 작성해주세요" style="width: 500px;">
	            </td>
	        </tr>
	        <tr>
	            <th class="tg-p">보관법</th>
	            <td class="tg-pp">
	                <select name="storageMethod" id="method">
	                    <option value="0~10º 냉장보관">0~10º 냉장보관</option>
	                    <option value="상온보관">상온보관</option>
	                    <option value="냉동보관">냉동보관</option>
	                </select>
	            </td>
	        </tr>
	        <tr>
	            <th class="tg-p">가격</th>
	            <td class="tg-pp"><input type="text" name="price" style="width: 100px;">   원</td>
	        </tr>
	        </tbody>
	    </table><br><br><br>
	    </form> 
	    <button id="subBtn"style="background-color: rgba(248, 158, 145, 1); border: none; border-radius: 5px; color: white; width: 100px; height: 40px;">등록하기</button>
	   </div>  
	 </div>
	 
	 <script>
	 	 $("#subBtn").click(function(){
	 		if($("#category").val() != '반찬 카테고리' && $('input[name=sdName]').val() != "" && 
			   $('#tag1').val() != '선택' && $('#tag2').val() != '선택' && 
			   $('#tag3').val() != '선택' && $('#input-image').val() != "" &&
			   $('#detail').val() != "" && $('input[name=mDate]').val() != "" &&
			   $('input[name=eDate]').val() != ""  && $('input[name=volume]').val() != "" && $('input[name=category]').val() != "" && 
			   $('input[name=ingredient]').val() != "" && $('input[name=price]').val() != "") {
	 			
	 			$("#frm").submit();
	 		} else{
	 			alert("작성되지 않은 내용이 있습니다.")
	 		}
	 	}); 
	 	/*  $("#category").change(function(){
		 if($("#category").val() == '7'){
				$("input[name=eDate]").remove();
			}	 
	 }) */
	 </script>
	 
	<!-- footer -->
	 <jsp:include page="../commons/footer.jsp"/>
	
</body>
</html>
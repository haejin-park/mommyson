<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userCustomerServiceCenterMTMQnADetail.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
   <jsp:include page="../commons/header.jsp"></jsp:include>
    <section>

      <div class="container">
        <div class="row">
          <div class="col-md-3">
               <jsp:include page="../commons/userCustomerServiceCenterSidebar.jsp"></jsp:include>
          </div>

          <div class="col-md-9">
            <div id="userCouponHead">
              <br>
              <h3><strong>1:1 문의</strong></h3>
            </div>
            <!-- 작성테이블 -->
            <div id="writeTable">
            <br> 
            <table class="table table">
              <thead>
                <tr>
                  <th id="tablecol1" scope="col">제목</th>
                  <th id="tablecol2" scope="col"><c:out value="${ requestScope.consultingCon.postTitle }"/></th>      
                  <th id="tablecol3" scope="col">분류</th>
                  <c:if test="${ requestScope.consultingCon.boardCode eq 18 || requestScope.consultingCon.boardCode eq 12 }">
                  <th id="tablecol4" scope="col">
                    	회원가입
                  </th>
                  </c:if>        
                  <c:if test="${ requestScope.consultingCon.boardCode eq 19 || requestScope.consultingCon.boardCode eq 13 }">
                  <th id="tablecol4" scope="col">
                    	결제/주문
                  </th>
                  </c:if>        
                  <c:if test="${ requestScope.consultingCon.boardCode eq 20 || requestScope.consultingCon.boardCode eq 14 }">
                  <th id="tablecol4" scope="col">
                    	리뷰관리
                  </th>
                  </c:if>        
                  <c:if test="${ requestScope.consultingCon.boardCode eq 21 || requestScope.consultingCon.boardCode eq 15 }">
                  <th id="tablecol4" scope="col">
                    	 이용문의
                  </th>
                  </c:if>        
                  <c:if test="${ requestScope.consultingCon.boardCode eq 22 || requestScope.consultingCon.boardCode eq 16 }">
                  <th id="tablecol4" scope="col">
                    	불편관리
                  </th>
                  </c:if>        
                  <c:if test="${ requestScope.consultingCon.boardCode eq 23 || requestScope.consultingCon.boardCode eq 17 }">
                  <th id="tablecol4" scope="col">
                    	기타
                  </th>
                  </c:if>        
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td colspan="4" class="textArea"><c:out value="${ requestScope.consultingCon.postContent }"/></td> 
                </tr>
                
              </tbody>
            </table>
          </div>
          <!-- 첨부파일 부분 -->
          <div id="fileAttachment">
            <h4><strong>&nbsp;&nbsp;첨부이미지</strong></h4>
            <form> 
                  <c:if test="${ requestScope.userFileImg[0].fileName eq null or requestScope.userFileImg[0].fileName eq '' }">
                  <button class="imgbtn1" id="imgbtn1" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" 
                   ><img class="imgbtn1 img1" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                  </c:if>
                     
                  <c:if test="${ requestScope.userFileImg[0].fileName ne null and requestScope.userFileImg[0].fileName ne '' }">
                  <button class="imgbtn1" id="imgbtn1" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" 
                   ><img class="imgbtn1 img1" src="${ pageContext.servletContext.contextPath }/${ requestScope.userFileImg[0].fileName }"></button>
                  </c:if>   
                 
                  <c:if test = "${ requestScope.userFileImg[1].fileName eq null or requestScope.userFileImg[1].fileName eq '' }">
                  <button class="imgbtn2" id="imgbtn2" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                  ><img class="imgbtn2 img2" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                  </c:if>   
                  <c:if test = "${ requestScope.userFileImg[1].fileName ne null and requestScope.userFileImg[1].fileName ne '' }">
                  <button class="imgbtn2" id="imgbtn2" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                  ><img class="imgbtn2 img2" src="${ pageContext.servletContext.contextPath }/${ requestScope.userFileImg[1].fileName }"></button>
                  </c:if>   
            
                  <c:if test = "${ requestScope.userFileImg[2].fileName eq null or requestScope.userFileImg[2].fileName eq '' }">
                  <button class="imgbtn3" id="imgbtn3" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3" 
                  ><img class="imgbtn3 img3" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                  </c:if>   
                  <c:if test = "${ requestScope.userFileImg[2].fileName ne null and requestScope.userFileImg[2].fileName ne '' }">
                  <button class="imgbtn3" id="imgbtn3" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3" 
                  ><img class="imgbtn3 img3" src="${ pageContext.servletContext.contextPath }/${ requestScope.userFileImg[2].fileName }"></button>
                  </c:if>   
            </form>
          </div>
          <br>
          <c:if test="${ requestScope.consultingCon.ansContent eq null or requestScope.consultingCon.ansContent eq '' }">
          <button id="sendQusestion">수정</button>
          <button type="button" id="delQusestion1" value="${ requestScope.consultingCon.postNo }" onclick="delQ();">삭제</button>
          </c:if>
          </div>
        </div>
        
        <!-- 관리자 답변 -->
        <c:if test="${ requestScope.consultingCon.ansContent ne null and requestScope.consultingCon.ansContent ne '' }">
        <div class="row">
          <div class="col-md-3">
               
          </div>

          <div class="col-md-9">
            <div id="userCouponHead">
              <br>
              <h5 style="border-bottom: 3px solid black"><strong>관리자 답변</strong></h5>
            </div>
            <!-- 작성테이블 -->
            <div id="writeTable">
            <br> 
            <table>
            <tr>
            	<td style="display: flex;"><c:out value="${ requestScope.consultingCon.ansContent }"/></td>
            </tr>
            </table>
          </div>
          <!-- 첨부파일 부분 -->
          <div id="fileAttachment">
            <h4><strong>&nbsp;&nbsp;첨부이미지</strong></h4>
            <form>          
                  <c:if test="${ requestScope.managerFileImg[0].fileName eq null or requestScope.managerFileImg[0].fileName eq '' }">
                  <button class="imgbtn1" id="imgbtn1" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" 
                   ><img class="imgbtn1 img4" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                  </c:if>
                     
                  <c:if test="${ requestScope.managerFileImg[0].fileName ne null and requestScope.managerFileImg[0].fileName ne '' }">
                  <button class="imgbtn1" id="imgbtn1" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" 
                   ><img class="imgbtn1 img4" src="${ pageContext.servletContext.contextPath }/${ requestScope.managerFileImg[0].fileName }"></button>
                  </c:if>   
                 
                  <c:if test = "${ requestScope.managerFileImg[1].fileName eq null or requestScope.managerFileImg[1].fileName eq '' }">
                  <button class="imgbtn2" id="imgbtn2" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                  ><img class="imgbtn2 img5" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                  </c:if>   
                  <c:if test = "${ requestScope.managerFileImg[1].fileName ne null and requestScope.managerFileImg[1].fileName ne '' }">
                  <button class="imgbtn2" id="imgbtn2" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                  ><img class="imgbtn2 img5" src="${ pageContext.servletContext.contextPath }/${ requestScope.managerFileImg[1].fileName }"></button>
                  </c:if>   
            
                  <c:if test = "${ requestScope.managerFileImg[2].fileName eq null or requestScope.managerFileImg[2].fileName eq '' }">
                  <button class="imgbtn3" id="imgbtn3" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3" 
                  ><img class="imgbtn3 img6" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                  </c:if>   
                  <c:if test = "${ requestScope.managerFileImg[2].fileName ne null and requestScope.managerFileImg[2].fileName ne '' }">
                  <button class="imgbtn3" id="imgbtn3" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3" 
                  ><img class="imgbtn3 img6" src="${ pageContext.servletContext.contextPath }/${ requestScope.managerFileImg[2].fileName }"></button>
                  </c:if>
            </form>
          </div>
          <br>
          <button type="button" id="delQusestion" value="${ requestScope.consultingCon.postNo }" onclick="delQ();">삭제</button>
          </div>
        </div>
     	   </c:if>
      </div>
      <script>
      /* $('#delQusestion').on('click', function () {
          let delInfo = $(this).val();
	         let delInfo = document.getElementById('delQusestion').value; 
          console.log( $(this).val());
      }); */
      
      function delQ() {
      		  
    	let delInfo = document.getElementById('delQusestion').value;
    	console.log(delInfo);
    	
    	$.ajax({
    		url: "${ pageContext.servletContext.contextPath }/user/ucc/MTMDel",
    		method : "post",
    		data : {
    			delInfo :delInfo
    		},
    		success : function(data) {
				alert("상담게시글이 삭제 되었습니다.");
				location.replace("${ pageContext.servletContext.contextPath }/user/ucc/MTMConsult");
			},
			error : function(error) {
				alert("삭제에 실패했습니니다. 관리자에게 문의하세요.");
				location.replace("${ pageContext.servletContext.contextPath }/user/ucc/MTMConsult");
			}
    		
    	});
		
	  }
      </script>
    </section>
   	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

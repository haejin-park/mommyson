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
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userReview.css">
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
               <jsp:include page="../commons/userMyPageSidebar.jsp"></jsp:include>
      </div>
      <div class="col-md-9">
            <div id="pagetitle">
              <br><br>
              <h3><strong>내가쓴 리뷰</strong> &nbsp;&nbsp;<sub>고객님이 현재까지 작성한 리뷰 내역 입니다. </sub></h3>
              
            </div>
            <br><br><br>
            <table class="table table">
              <thead>
                <tr>
                  <th id="tablecol1" scope="col">가게 정보</th>
                  <!-- <th id="tablecol2" scope="col"></th>제품 이미지  -->       
                  <th id="tablecol3" scope="col">제품정보</th>        
                  <th id="tablecol4" scope="col">리뷰</th>        
                  <th id="tablecol5" scope="col">별점</th>        
                  <th id="tablecol6" scope="col">작성일자</th>        
                  <th id="tablecol7" scope="col"></th><!--수정삭제 버튼-->        
                </tr>
              </thead>
              <tbody>
				<c:forEach var="reviewInfo" items="${ requestScope.reviewContentList }">
                <tr>
                  <td><input type="hidden" value="${ reviewInfo.orderCode }"><img class="storeimg" src="${ pageContext.servletContext.contextPath }/${ reviewInfo.img }"></td>
                  <td>
              <%--     <c:forEach var="RelativeSdIfo" items="${ requestScope.productInfo }">
                  <c:if test="${ RelativeSdIfo.ORDER_CODE eq reviewInfo.orderCode }">
                	 <div><img class="storeimg" src="${ pageContext.servletContext.contextPath }/${ RelativeSdIfo.SD_IMG }"><br><c:out value="${ RelativeSdIfo.SD_NAME }"/></div>
                  </c:if>
                  </c:forEach> --%>
                  	<img class="storeimg" src="${ pageContext.servletContext.contextPath }/${ reviewInfo.img }">
                	  </td><!-- 크앙 -->
                                  <td style="padding-top: 40px;"><c:out value="${ reviewInfo.content }"/></td>
                  <td style="padding-top: 40px;"><c:out value="${ reviewInfo.grade }"/>개</td><!--추후 별 이미지 처리-->
                  <td style="padding-top: 40px;"><c:out value="${ reviewInfo.orderDTO.requestTime }"/></td><!-- 주문일자 -->
                  <td style="padding-top: 40px;"><button class="urBtn">삭제</button><button class="urBtn">수정</button></td>
                </tr>
				</c:forEach>
              </tbody>
            </table>
            <c:out value="${ requestScope.productInfo[0].ORDER_CODE }"/>
            <script>
            	if(document.getElementsByTagName('td')){
            		const $tds = $('td');           
            			let orderInfo = $tds.find('input:hidden');
            			console.log(orderInfo);
            			
            			//productInfo 반찬 
            			let productInfo = ${ requestScope.productInfo };
            			for(let i =0; productInfo.size(); i++) {
            				console.log(JSON.stringfy(productInfo[i]));
            			}
            			
            			/* consol.log(${ requestScope.productInfo}); */
            			
            			
            			
            			/* for(let orderA of orderInfo) {
            				
            				console.log(orderA.value);
            				
            				$.ajax({
            					url : "${ pageContext.servletContext.contextPath }/userMyPage/userReview",
            					method : "get",
            					traditional : true,
            					data : {
            						orderNo : JSON.stringify(orderA.value)
            					},
            					dataType : "json",
            					success : function(data, textStatus, xhr) {
									alert("성공");
								},
								error : function(xhr, status, error) {
									
								}
            					
            				});
            			} */  
						/* console.log(type of(orderA));
						for(let orderA of orderInfo) {
            				
            				console.log(orderA.value);
            				
            				$.ajax({
            					url : "${ pageContext.servletContext.contextPath }/userMyPage/userReview",
            					method : "get",
            					data : {
            						orderNo : orderA.value
            					},
            					success : function(data, textStatus, xhr) {
									alert("성공");
								},
								error : function(xhr, status, error) {
									
								}
            					
            				});
            			}  */
           
            	}
            </script>

			<ul>
                 <jsp:include page="../commons/userMyPagePagination.jsp"/>
             </ul>
            <!-- 페이징 -->
            <nav class="page_box" aria-label="Page navigation example">
              	
              <ul>
                  <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                  <input type="text" class="searchtext" placeholder="찾고싶은 리뷰를 입력해주세요"></li>
                  <button type="submit" class="searchbutton">검색하기</button></li>
               </ul>
            </nav>

          </div>
            
          </div>
        </div>
    
    </section>
   	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

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
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userRecommendStore.css">
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
            <div id="userCouponHead">
              <br><br>
              <h3 style="text-align: center;"><strong>자주 찾는 가게</strong></h3>
            </div>
            <br><br><br>
            <table class="table table" style="width: 1050px;">
              <thead style="background-color: #EDEDED;">
                <tr>
                  <th id="tablecol1" scope="col"><b><c:out value="총   ${ requestScope.totalCount }개"/></b></th>
                  <th id="tablecol2" scope="col"></th>        
                  <th id="tablecol3" scope="col"></th>        
                </tr>
              </thead>
              <tbody>
                <c:forEach var="recommend" items="${ requestScope.storeReconmendList }">
                <tr>          
                  <td><img class="storeimg" src="${ pageContext.servletContext.contextPath }/${ recommend.storeImg }"></td>
                  <td style="padding-top: 20px;">
                  <p><strong><c:out value="${ recommend.storeName }"/></strong><br></p>
                  <p style="text-decoration: gray;">
                  	<c:out value="평점 ${ recommend.grade }"/><br>
                  	<c:out value="${ recommend.storeInfo }"/>
                  </p>


                  </td>
              
                  <td style="padding-top: 40px;">
                    <button class="urBtn" value="${ recommend.memCode }">삭제</button>
                  </td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
              <script>
              	if(document.getElementsByTagName('td')) {
              		const $tds = $('td');
              		for(let i = 0; i < $tds.length; i++) {
              			$tds[i].onclick = function() {
							let StoreAddress = this.parentNode.children[2].children[1].value;
							location.href = "${ pageContext.servletContext.contextPath }/user/storepage?memCode=" + StoreAddress;
							console.log(StoreAddress);
              				
						}
              		}
              		
              		
              	}
	             
              	if(document.getElementsByTagName('button')) {
              		const $delbutton =$('button');
        			for(let i = 0; i < $delbutton.length; i++) {
        				$delbutton[i].onclick = function() {
        				 	let	earseButton = this.value;
        				 	console.log(earseButton);
        				 	$.ajax({
        				 		url : "${ pageContext.servletContext.contextPath }/userMyPage/delRecommend",
        				 		method : "post",
        				 		data :{
        				 			storeCode : earseButton
        				 		},
        				 		success : function(data, textStatus,xhr) {
        				 			alert(data);
        				 			location.reload();
								},
								error : function(xhr, status, error) {
									alert(error);
									location.reload();
								}
        				 	});
        				 	
        				 	
        				 }
        			}
              	}
              
              </script>

             <!-- 페이징 -->
             <ul>
                 <jsp:include page="../commons/userMyPagePagination.jsp"/>
             </ul>
             <!-- <nav class="page_box" aria-label="Page navigation example">
              <ul class="pagination">
              </ul> -->
               <ul style="display: flex; flex-direction: row; justify-content: center; align-items: baseline;">
                  <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                  <form action="${ pageContext.servletContext.contextPath }/userMyPage/userRecommendStore" method="get">
	              <input type="hidden" name="currentPage" value="1">
                  <input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 가게 이름을 입력해주세요">
                  <button type="submit" class="searchbutton">검색하기</button>
                  </form>
               </ul>
            
          </div>
        </div>
      </div>
    </section>
    <jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

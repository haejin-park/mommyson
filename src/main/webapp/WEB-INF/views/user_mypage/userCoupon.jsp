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
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userCoupon.css">
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
                      <jsp:include page="../commons/userMyPageSidebar.jsp"/>
          </div>

         

          <div class="col-md-9">
            <div id="userCouponHead">
              <br><br>
              <h3 style="text-align: center;"><strong>쿠폰함</strong></h3>
            </div>
            <br><br><br>
            <table class="table table" style="width: 1050px;">
              <thead style="background-color: #EDEDED;">
                <tr>
                  <th id="tablecol1" scope="col">가게</th>
                  <th id="tablecol2" scope="col">쿠폰내용</th>
                  <th id="tablecol3" scope="col">할인금액</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="myCoupon" items="${ requestScope.myCouponList }">
	                <tr>
	                  <td><img class="storeimg" src="${ pageContext.servletContext.contextPath }/${ myCoupon.couponInfo.store.storeImg }"/></td><!-- 450 * 550 이거 주의-->
	                  <td style="padding-top: 40px;"><c:out value="${ myCoupon.couponInfo.cpName }"/></td>
	                  <td style="padding-top: 40px;"><c:out value="${ myCoupon.couponInfo.disWon }"/></td>
	                 
	                </tr>
              	</c:forEach>
				<c:forEach var="banchanStore" items="${requestScope.ceoCode}">
					  <c:out value="${ banchanStore }"/>				
				</c:forEach>              	
             
              </tbody>

            </table>
            <script>
            
            if(document.getElementsByTagName('td')) {
          		const $tds = $('td');
          		for(let i = 0; i < $tds.length; i++) {
          			$tds[i].onclick = function() {
						let StoreAddress = this.parentNode.children[3].value;
						
						
						location.href = "${ pageContext.servletContext.contextPath }/user/storepage?memCode=" + StoreAddress;
						console.log(StoreAddress);
          				
					}
          		}
            }	
            </script>
            
           
            <!-- 페이징 -->
            <ul>
               <jsp:include page="../commons/userMyPagePagination.jsp"/>
            </ul>

              <ul style="display: flex; flex-direction: row; justify-content: center; align-items: baseline;">
                  <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                  <form action="${ pageContext.servletContext.contextPath }/userMyPage/userCoupon" method="get">
                	<input type="hidden" name="currentPage" value="1">
                  	<input type="text" class="searchtext" placeholder="찾고싶은 쿠폰 내용을 입력해주세요" name="searchValue">
                  	<button type="submit" class="searchbutton">검색하기</button>
                  </form>
               </ul>
            
          </div>
        </div>
      </div>
    </section>
          <%--   <h1><c:out value="${ requestScope.myCouponList[0].store.storeImg }"/></h1> --%>
  	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

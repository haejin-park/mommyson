<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMTMConsult.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
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
              <h3><strong>1:1 상담 내역</strong></h3>
            </div>
            <br>
            <table class="table table">
              <thead style="background-color: #EDEDED;">
              
                <tr>
                  <th id="tablecol1" scope="col">번호</th>
                  <th id="tablecol2" scope="col">문의유형</th><!-- 제품 이미지 -->        
                  <th id="tablecol3" scope="col">제목</th>        
                  <th id="tablecol4" scope="col">문의날짜</th>        
                  <th id="tablecol5" scope="col">답변여부</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach var="mtmQ" items="${ requestScope.mtmConsultingSelect }">
                <tr>
                  <td><c:out value="${ mtmQ.postNo }"/></td>
                  <!--  -->
                  <c:if test="${ mtmQ.boardCode eq 18 || mtmQ.boardCode eq 12 }">
                  <td>회원가입</td>
                  </c:if>
                  <c:if test="${ mtmQ.boardCode eq 19 || mtmQ.boardCode eq 13 }">
                  <td>결제/주문 </td>
                  </c:if>
                  <c:if test="${ mtmQ.boardCode eq 20 || mtmQ.boardCode eq 14 }">
                  <td>리뷰관리</td>
                  </c:if>
                  <c:if test="${ mtmQ.boardCode eq 21 || mtmQ.boardCode eq 15 }">
                  <td>이용문의</td>
                  </c:if>
                  <c:if test="${ mtmQ.boardCode eq 22 || mtmQ.boardCode eq 16 }">
                  <td>불편관리</td>
                  </c:if>
                  <c:if test="${ mtmQ.boardCode eq 23 || mtmQ.boardCode eq 17 }">
                  <td>기타</td>
                  </c:if>
                  <!--  -->
                  <td><c:out value="${ mtmQ.postTitle }"/></td>
                  <td><c:out value="${ mtmQ.postDate }"/></td>
                  <c:if test="${ mtmQ.ansStatus eq 'Y' }">
                  <td><b>답변 완료</b></td>
                  </c:if>
                  <c:if test="${ mtmQ.ansStatus eq 'W' || mtmQ.ansStatus eq 'N' }">
                  <td><h6><b>답변 <br>대기중</b></h6></td>
                  </c:if>
                </tr>
              </c:forEach>
                
              </tbody>
            </table>

             <!-- 페이징 -->
                <jsp:include page="../commons/userFqaPagination.jsp"/>
            
              <form action="${ pageContext.servletContext.contextPath }/user/ucc/MTMQnA" method="get" style="margin-left: 300px">
              	  <input type="hidden" name="currentPage" value="1">
                  <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                  <input type="text" name="searchValue" class="searchtext" placeholder="찾고자 하는 상담 제목을 입력해주세요">
              </form>
            
            
          </div>
        </div>
      </div>
    </section>
    <script>
      $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
      if(document.getElementsByTagName("td")) {
    	  
    	  const $tds =$('td');
    	  for(let i = 0; i < $tds.length; i++) {
    		  $tds[i].onclick = function () {
    			let postNo = this.parentNode.children[0].innerText;
    			console.log(postNo);
    			location.href = "${ pageContext.servletContext.contextPath }/user/ucc/MTMOpen?postNo=" + postNo;
    			//경로수정요함
			}
    	  }
      }
     	
    </script>
	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

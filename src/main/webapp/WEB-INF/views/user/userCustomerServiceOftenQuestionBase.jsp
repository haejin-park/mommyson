<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userCustomerServiceOftenQuestionBase.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../commons/header.jsp"/>

    <section>

      <div class="container">
        <div class="row" id="rowunder">
          <div class="col-md-3">
             <jsp:include page="../commons/userCustomerServiceCenterSidebar.jsp"></jsp:include>
          </div>
          <div class="col-md-9">
            <div id="userCouponHead">
            <br>
              <h3 id="title"><strong>자주 하는 질문</strong></h3>
            </div>
            <br>
            <div style="text-align: center;">
            	<c:if test='${ requestScope.fqaList[0].boardCode eq "6"}'><!-- ""와 ''차이 주의 -->
            	<form action = "${ pageContext.servletContext.contextPath }/user/ucc/memberJoinFqa" method="get">
            	 	<input type="hidden" name="currentPage" value="1">
	             	<img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
	              	<input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
	              	<button type="submit" class="searchbutton">검색하기</button>
            	</form>
            	</c:if>
            	<c:if test='${ requestScope.fqaList[0].boardCode eq "7"}'>
            	<form action = "${ pageContext.servletContext.contextPath }/user/ucc/paycheckFqa" method="get">
            	 	<input type="hidden" name="currentPage" value="1">
	             	<img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
	              	<input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
	              	<button type="submit" class="searchbutton">검색하기</button>
            	</form>
            	</c:if>
            	<c:if test='${ requestScope.fqaList[0].boardCode eq "8"}'>
            	<form action = "${ pageContext.servletContext.contextPath }/user/ucc/reviewFqa" method="get">
            	 	<input type="hidden" name="currentPage" value="1">
	             	<img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
	              	<input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
	              	<button type="submit" class="searchbutton">검색하기</button>
            	</form>
            	</c:if>
            	<c:if test='${ requestScope.fqaList[0].boardCode eq "9"}'>
            	<form action = "${ pageContext.servletContext.contextPath }/user/ucc/usingFqa" method="get">
            	 	<input type="hidden" name="currentPage" value="1">
	             	<img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
	              	<input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
	              	<button type="submit" class="searchbutton">검색하기</button>
            	</form>
            	</c:if>
            	<c:if test='${ requestScope.fqaList[0].boardCode eq "10"}'>
            	<form action = "${ pageContext.servletContext.contextPath }/user/ucc/inconFqa" method="get">
            	 	<input type="hidden" name="currentPage" value="1">
	             	<img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
	              	<input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
	              	<button type="submit" class="searchbutton">검색하기</button>
            	</form>
            	</c:if>
            	<c:if test='${ requestScope.fqaList[0].boardCode eq "11"}'>
            	<form action = "${ pageContext.servletContext.contextPath }/user/ucc/etcFqa" method="get">
            	 	<input type="hidden" name="currentPage" value="1">
	             	<img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
	              	<input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요"></li>
	              	<button type="submit" class="searchbutton">검색하기</button>
            	</form>
            	</c:if>
            </div>
            <div style="border: solid gainsboro 2px; text-align: center; margin-top: 30px;">
              <table>
                <tbody class="qnaList">
                  <tr>
                    <td style="border-right: solid gainsboro;"><a href="${ pageContext.servletContext.contextPath }/user/ucc/memberJoinFqa">회원가입</a></td>
                    <td style="border-right: solid gainsboro;"><a href="${ pageContext.servletContext.contextPath }/user/ucc/paycheckFqa">결제/주문</a></td>
                    <td style="border-right: solid gainsboro;"><a href="${ pageContext.servletContext.contextPath }/user/ucc/reviewFqa">리뷰관리</a></td>
                    <td style="border-right: solid gainsboro;"><a href="${ pageContext.servletContext.contextPath }/user/ucc/usingFqa">이용문의</a></td>
                    <td style="border-right: solid gainsboro;"><a href="${ pageContext.servletContext.contextPath }/user/ucc/inconFqa">불편관리</a></td>
                    <td><a href="${ pageContext.servletContext.contextPath }/user/ucc/etcFqa">기타</a></td>
                  </tr>
                </tbody>
              
              </table>
            </div>

            <hr>
            <table class="table board_table question_table">
              <colgroup>
                  <col width=""/>
                  <col width=""/>
                  <col width=""/>
              </colgroup>
              <thead style="background-color: #EDEDED;">
                  <tr>
                      <th>번호</th>
                      <th>카테고리</th>
                      <th>제목</th>
                  </tr>
              </thead>
              <tbody>
              	<c:forEach var="fqaOutput" items="${ requestScope.fqaList }">
                  <tr class="click_qa">
                      <td>${ fqaOutput.postNo }</td>
                      <td>${ requestScope.boardTitle }</td>
                      <td class="tal">${ fqaOutput.postTitle }</td>
                  </tr>
                  <tr class="answer tal">
                      <td colspan="3">${ fqaOutput.postContent }</td>
                  </tr>
              	</c:forEach>                 
              </tbody>
          </table>
          <script>
            $(".click_qa").on('click',function(e){
                $(event.currentTarget).next().toggle(300);
                
                // let show = e.next();
                // show.toggle();
            });
            
        </script>
   <nav class="page_box" aria-label="Page navigation example">
    <ul class="pagination">
      <jsp:include page="../commons/userFqaPagination.jsp"></jsp:include>
    </ul>
    
  </nav>
            
          </div>
        </div>
      </div>
    </section>

	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

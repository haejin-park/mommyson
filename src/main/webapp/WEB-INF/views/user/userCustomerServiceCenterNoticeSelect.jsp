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
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userNoticeSelect.css">
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
            <div class="board_container">
              <br>
              <h2>공지사항</h2>
              <table class="table board_table">
                  <colgroup>
                      <col width=""/>
                      <col width=""/>
                      <col width=""/>
                      <col width=""/>
                  </colgroup>
                  <thead style="background-color: #EDEDED; text-align: center;">
                      <tr>
                          
                          <th>번호</th>
                          <th>제목</th>
                          <th>작성일</th>
                          <th>조회수</th>
                      </tr>
                  </thead>
                  <tbody>
                  	<c:forEach var="important" items="${ requestScope.importantNotice }">
                      <tr class="important_notice"> 
                          <td><c:out value="${ important.postNo }"/></td>
                          <br>
                          <td class="tal"><c:out value="${ important.postTitle }"/></td>
                          <td><c:out value="${ important.postDate }"/> </td>
                          <td><c:out value="${ important.viewCnt }"/> </td>
                      </tr>
                  	</c:forEach>	
                      <c:forEach var="noticeBoard" items="${ requestScope.noticeList }">
                      <tr>
                          <td><c:out value="${ noticeBoard.postNo }"/></td>
                          <td class="tal"><c:out value="${ noticeBoard.postTitle }"/></td>
                          <td><c:out value="${ noticeBoard.postDate }"/></td>
                          <td><c:out value="${ noticeBoard.viewCnt }"/></td>
                      </tr>
                      </c:forEach>
                     
                  </tbody>
              </table>

              <!-- 페이징 -->
                  	<jsp:include page="../commons/userNoticePagination.jsp"></jsp:include>
              <nav class="page_box" aria-label="Page navigation example">
                  <ul class="pagination">
                  <!--   <li class="page-item"><a class="page-link-num" href="#">&laquo;</a></li> -->
                  </ul>
                  <ul>
                  	<form action="${ pageContext.servletContext.contextPath }/user/ucc/uccNoticeSelect" method="get">
                  	    <input type="hidden" name="currentPage" value="1">
                  	     <select id="searchCondition" name="searchCondition">
							<option value="total" ${ requestScope.selectCriteria.searchCondition eq "total"? "selected": "" }>전체</option>
							<option value="notice" ${ requestScope.selectCriteria.searchCondition eq "notice"? "selected": "" }>공지</option>
							<option value="guide" ${ requestScope.selectCriteria.searchCondition eq "guide"? "selected": "" }>안내</option>
							<option value="check" ${ requestScope.selectCriteria.searchCondition eq "check"? "selected": "" }>점검</option>
							<option value="event" ${ requestScope.selectCriteria.searchCondition eq "event"? "selected": "" }>이벤트</option>
							<option value="owner" ${ requestScope.selectCriteria.searchCondition eq "owner"? "selected": "" }>사업자</option>
						</select>
						
                        <img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png">
                        <input type="text" class="searchtext" name="searchValue" placeholder="찾고싶은 게시물의 제목을 입력해주세요">
                        <button type="submit" class="searchbutton">검색하기</button>
                  	</form>
                   </ul>
                </nav>
          </div>
		  	<script>
		  		

            if(document.getElementsByTagName("td")) {
    			
    			const $tds =$('td');
    			for(let i = 0; i < $tds.length; i++) {
    				
    			
    				  $tds[i].onclick = function() {
    					let postNo = this.parentNode.children[0].innerText;
    					let cntView = 1;
    					console.log(postNo);
    					location.href = "${ pageContext.servletContext.contextPath }/user/ucc/uccNoticeDetail?postNo=" + postNo;
    				} 
    			
    			}
    		}
		  	</script>
            
          </div>
        </div>
      </div>
    </section>
	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>


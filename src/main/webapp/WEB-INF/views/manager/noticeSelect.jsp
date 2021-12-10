<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>공지사항</title>
</head>
<body>
    <header class="manager_header at-container">
        <img src="${ pageContext.servletContext.contextPath }/resources/images/managerLogo.png" alt="마미손맛 MANAGEMENT">
        <a href="../main.html" class="home_btn">
            <img src="${ pageContext.servletContext.contextPath }/resources/images/mainHome.png" alt="메인화면으로">
            <p>메인화면으로</p>
        </a>
    </header>
    <div class="head_line"></div>
    <div class="at-container total_container">
    
        <jsp:include page="../commons/managerSidebar.jsp"/>
        
        <div class="board_container">
            <h2>공지사항</h2>
            <form action="${ pageContext.servletContext.contextPath }/manager/noticeSelect" method="GET">
	            <select class="sel_notice" name="searchCondition" id="searchCondition">
	                    <option value="all" ${ requestScope.pagination.searchCondition eq "all"? "selected": "" }>전체</option>
	                    <option value="notice" ${ requestScope.pagination.searchCondition eq "notice"? "selected": "" }>공지</option>
						<option value="guide" ${ requestScope.pagination.searchCondition eq "guide"? "selected": "" }>안내</option>
						<option value="check" ${ requestScope.pagination.searchCondition eq "check"? "selected": "" }>점검</option>
						<option value="event" ${ requestScope.pagination.searchCondition eq "event"? "selected": "" }>이벤트</option>
						<option value="owner" ${ requestScope.pagination.searchCondition eq "owner"? "selected": "" }>사업자</option>
	             </select>
                <table class="table board_table">
                    <colgroup>
                        <col width=""/>
                        <col width=""/>
                        <col width=""/>
                        <col width=""/>
                        <col width=""/>
                    </colgroup>
                    <thead style="background-color: #EDEDED;">
                        <tr>
                            <th><input type="checkbox" name="ch1" id="chk_all"></th>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="important_notice">
                            <th scope="row"><input type="checkbox" name="ch1" disabled></th>
                            <td>공지</td>
                            <td class="tal">
                                <a href="${ pageContext.servletContext.contextPath }/manager/noticeDetailView">[소비자] 신규 회원 가입 이벤트 당첨자 발표</a>
                            </td>
                            <td>2021-11-01</td>
                            <td>123</td>
                        </tr>
                        <c:forEach items="${ requestScope.noticeList }" var="nl">
                        <tr>
                            <th scope="row"><input type="checkbox" name="ch1"></th>
                            <td>${ nl.postNo }</td>
                            <td class="tal">
                                <a href="${ pageContext.servletContext.contextPath }/manager/noticeDetailView?postNo=${ nl.postNo }">${ nl.postTitle }</a>
                            </td>
                            <td>${ nl.postDate }</td>
                            <td>${ nl.viewCnt }</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <input type="submit" value="삭제하기" class="black_btn delete_btn">
                <a href="${ pageContext.servletContext.contextPath }/manager/noticeWrite" class="black_btn write_btn" style="background-color: #F89E91;">작성하기</a>
            </form>
            
            <jsp:include page="../commons/paging.jsp"/>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"/>

    <script>
   	    $("#chk_all").click(function(){
		   	 let chk = $(this).is(":checked");
		   	 if(chk){
		   		 $(".board_table > tbody > tr th input").prop('checked', true);
		   	 } else{
		   		 $(".board_table > tbody > tr th input").prop('checked', false);
		   	 }
	   	 
	    });
        
        $('#searchCondition').on('change',function() {
        	 let changedCondition = $('#searchCondition').val();
        	 console.log($(this).val());
        	 location.href = "${ location.href }?searchCondition=" + changedCondition;
     
        });
       
        
     </script>
     
   
</body>
</html>
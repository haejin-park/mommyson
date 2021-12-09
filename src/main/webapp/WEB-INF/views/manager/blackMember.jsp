<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>블랙회원조회</title>
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
    
        <jsp:include page="../commons/managerSidebar.jsp"></jsp:include>
        
        <div class="board_container">
            <h2>회원관리</h2>
            <form action="${ pageContext.servletContext.contextPath }/manager/terminateBlack" method="POST">
	            <div class="top_box">
	                <p>블랙 회원 조회</p>
	                <input type="submit" value="블랙해지">
	            </div>
	            <table class="table board_table">
	                <colgroup>
	                    <col width=""/>
	                    <col width=""/>
	                    <col width=""/>
	                    <col width=""/>
	                    <col width=""/>
	                    <col width=""/>
	                    <col width=""/>
	                    <col width=""/>
	                    <col width=""/>
	                </colgroup>
	                <thead style="background-color: #EDEDED;">
		                <tr>
		                    <th><input type="checkbox" name="chkAll" id="chk_all"></th>
		                    <th>번호</th>
		                    <th>아이디</th>
		                    <th>닉네임</th>
		                    <th>이메일</th>
		                    <th>가입일</th>
		                    <th>주문횟수</th>
		                    <th>총 결제금액</th>
		                    <th>-</th>
		                </tr>
	                </thead>
	                <tbody>
	                	<c:forEach items="${ requestScope.blackMemberList }" var="nm">
			                <tr>
		                        <th scope="row"><input type="checkbox" name="chkMember" value="${ nm.memCode }" class="chkbox"></th>
		                        <td>${ nm.memCode }</td>
		                        <td>${ nm.memId }</td>
		                        <td>${ nm.nickname }</td>
		                        <td>${ nm.email }</td>
		                        <td>${ nm.enrollDate }</td>
		                        <td>${ nm.ceo.store.storeName }</td>
		                        <td></td>
		                        <td><a href="" data-toggle="modal" data-target="#exampleModal">[상세보기]</a></td>
			                </tr>
	                	</c:forEach>
	                </tbody>
	            </table>
            </form>

            <!-- 페이징 -->
            <jsp:include page="../commons/paging.jsp"/>
        </div>
    </div>

   <!-- Modal -->
   <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                   <table border="1" class="tb_content">
                       <colgroup>
                            <col width="15%"/>
                            <col width="15%"/>
                            <col width="55%"/>
                            <col width="15%"/>
                       </colgroup>
                       <thead>
                           <tr>
                               <th>경고순번</th>
                               <th>카테고리</th>
                               <th>내용</th>
                               <th>날짜</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr>
                               <td>1</td>
                               <td>욕설</td>
                               <td>XX별로다.</td>
                               <td>2021-11-29</td>
                           </tr>
                       </tbody>
                   </table>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
    	$("#chk_all").click(function(){
	   	 let chk = $(this).is(":checked");
	   	 if(chk){
	   		 $(".board_table > tbody > tr th input").prop('checked', true);
	   	 } else{
	   		 $(".board_table > tbody > tr th input").prop('checked', false);
	   	 }
	   	 
	    });
 
         $("#homeSubmenu1").addClass("show");
         $("#homeSubmenu1 > li:last-child > a").attr("style","color: #F89E91 !important");
     </script>
</body>
</html>
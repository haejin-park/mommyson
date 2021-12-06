<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>일반회원조회</title>
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
            <form action="${ pageContext.servletContext.contextPath }/manager/deleteMember" method="POST">
	            <div class="top_box">
	                <p>일반 회원 조회</p>
	                <input type="submit" value="회원삭제">
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
	                        <th>신고</th>
	                        <th>상태</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<c:forEach items="${ requestScope.normalMemberList }" var="nm">
		                	<c:if test="${ nm.memType == 'user' }">
			                    <tr>
			                        <th scope="row"><input type="checkbox" name="chkMember" value="${ nm.memCode }" class="chkbox"></th>
			                        <td>${ nm.memCode }</td>
			                        <td>${ nm.memId }</td>
			                        <td>${ nm.nickname }</td>
			                        <td>${ nm.email }</td>
			                        <td>${ nm.enrollDate }</td>
			                        <td></td>
			                        <td></td>
			                        <td>${ nm.user.repCount }</td>
			                        <td class="memberState">${ nm.isDeleted }</td>
			                    </tr>
		                    </c:if>
	                    </c:forEach>
	                </tbody>
	            </table>
            </form>
            	<input type="button" name="blackAdd" id="black_add" value="블랙등록" class="black_btn">
            
            <script>
            	$("#black_add").on('click', function(){
            		
            		let changeList = $(".board_table > tbody > tr");
            		let chkMember = [];
            		
            		$("input:checkbox[name='chkMember']:checked").each(function(i, ival) {
            			chkMember.push($(this).val());
            			console.log(chkMember);
                     });
            		
            	
            		$.ajax({
            			url : '${ pageContext.servletContext.contextPath }/manager/registBlack/' + chkMember,
            			type : 'GET',
            			success: function(data){
            				console.log(data);
            				location.href="${ pageContext.servletContext.contextPath }/manager/normalMember";
            			},
            			error: function(error){
            				console.log(error);
            			}
            		});
            	});
            </script>
            
            <!-- 페이징 -->
            <nav class="page_box" aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link-num" href="#">&laquo;</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">&lt;</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">1</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">2</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">3</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">4</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">5</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">6</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">7</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">8</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">9</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">10</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">&gt;</a></li>
                    <li class="page-item"><a class="page-link-num" href="#">&raquo;</a></li>
                </ul>
                <form action="${ pageContext.servletContext.contextPath }/manager/searchMember" method="GET">
                	<div class="search_box">
	                    <ul class="df_ul">
	                        <li><img class="glass" src="${ pageContext.servletContext.contextPath }/resources/images/glass.png"></li>
	                        <li><input type="search" class="searchtext" placeholder="회원 닉네임으로 검색하기"></li>
	                        <li><button type="submit" class="searchbutton">검색하기</button></li>
	                    </ul>
                    </div>
                </form>
            </nav>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
 
	    $("#homeSubmenu1").addClass("show");
	    $("#homeSubmenu1 > li:first-child > a").attr("style","color: #F89E91 !important");
	    
	    $("#chk_all").click(function(){
	   	 let chk = $(this).is(":checked");
	   	 if(chk){
	   		 $(".board_table > tbody > tr th input").prop('checked', true);
	   	 } else{
	   		 $(".board_table > tbody > tr th input").prop('checked', false);
	   	 }
	   	 
	    });
	    
	    if($(".memberState").text().charAt(0) == 'N'){
    		$(".memberState").text("정상")
    	}
     </script>
</body>
</html>
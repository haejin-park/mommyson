<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>배너 설정</title>
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
            <h2>배너 설정</h2>
        	<table class="table board_table">
	            <colgroup>
	                <col width="5%"/>
	                <col width="10%"/>
	                <col width=""/>
	                <col width="10%"/>
	                <col width="10%"/>
	            </colgroup>
	            <thead style="background-color: #EDEDED;">
	                <tr>
	                    <th><input type="checkbox" name="ch1" id="chk_all"></th>
	                    <th>번호(순서)</th>
	                    <th>제목</th>
	                    <th>사용여부</th>
	                    <th>기능</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<c:forEach items="${ requestScope.bannerList }" var="bn" varStatus="vst">
		                <tr>
		                    <th scope="row"><input type="checkbox" name="chkBanner" value="${ bn.bnCode }"></th>
		                    <td>${ bn.bnOrder }</td>
		                    <td class="tal">${ bn.bnName }</td>
		                    <td>${ bn.bnStatus }</td>
		                    <td>
		                        <a class="cor_btn" href="${ pageContext.servletContext.contextPath }/manager/bannerEditView?bnCode=${ bn.bnCode }">수정</a>
		                    </td>
		                </tr>
	                </c:forEach>
	            </tbody>
        	</table>
	        <button onclick="deleteBanner(this);" class="black_btn delete_btn">삭제하기</button>
	        <a href="${ pageContext.servletContext.contextPath }/manager/bannerAdd" class="black_btn write_btn" style="background-color: #F89E91;">추가하기</a>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
    
         $("#homeSubmenu5").addClass("show");
         $("#homeSubmenu5 > li:first-child > a").attr("style","color: #F89E91 !important");
         
         $("#chk_all").click(function(){
     	   	let chk = $(this).is(":checked");
     	   	if(chk){
     	   		$(".board_table > tbody > tr th input").prop('checked', true);
     	   	} else{
     	   		$(".board_table > tbody > tr th input").prop('checked', false);
     	   	}
   	     });
         
         function deleteBanner(e){
        	 
        	 let chkBanner = [];
        	 
        	 $("input:checkbox[name='chkBanner']:checked").each(function(i, ival) {
        		chkBanner.push($(this).val());
     			console.log(chkBanner);
             });
        	 
        	 $.ajax({
        		url : '${ pageContext.servletContext.contextPath }/manager/deleteBanner',
        		type : 'POST',
        		data : {
        			chkBanner : chkBanner
        		},
        		success : function(data){
        			console.log();
        			location.reload();
        		},
        		error : function(error){
        			console.log(error);
        		}
        	 });
         }
         
    </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>공지사항 작성</title>
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
            <h1>공지사항</h1>
            
            <form action="${ pageContext.servletContext.contextPath }/manager/noticeWrite" method="post">
            
                <table class="table bd_write_header">
                    <colgroup>
                        <col width="10%"/>
                        <col width="60%"/>
                        <col width="10%"/>
                        <col width="20%"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="postTitle" id="postTitle" placeholder="제목을 입력해주세요." required>
                            </td>
                            <th>분류</th>
                            <td>
                                <select name="boardCode" id="boardCode">
                                    <option value="1">공지</option>
                                    <option value="2">안내</option>
                                    <option value="3">점검</option>
                                    <option value="4">이벤트</option>
                                    <option value="5">사업자</option>
                                </select>
                            </td>
                        </tr>
                    </thead>
                </table>
                <div class="text_area">
                    <textarea name="postContent" id="postContent" placeholder="내용을 작성해주세요." required></textarea>
                </div>
                <div class="btn_box">
                    <input type="submit" value="등록하기" class="btn write_btn" id="write_btn" style="background-color: #F89E91;">
                    <a href="${ pageContext.servletContext.contextPath }/manager/noticeSelect" class="btn cancle_btn" style="background-color: #BEBEBE;">취소하기</a>
                </div>
            </form>
            
        </div>
    </div>
    <jsp:include page="../commons/footer.jsp"/>

    <script>
	    
	    $('#write_btn').on('click',function(){
	    	alert('${ requestScope.result }');
	    });
	    
        $('#boardCode').on('change',function() {
        	let changedCode = $('#boardCode').val();
        	console.log($(this).val());
 
        });
     </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav id="sidebar">
         <div class="sidebar-header">
             <h3 style="border-bottom: black solid 2px;"><a href="${ pageContext.servletContext.contextPath }/user/ucc" style="color: black;">고객센터</a></h3>
         </div>

         <ul class="list-unstyled components">
             <li>
                 <a href="${ pageContext.servletContext.contextPath }/user/ucc/uccNoticeSelect">공지사항</a>
             </li>                 
             <li>
                 <a href="${ pageContext.servletContext.contextPath }/user/ucc/memberJoinFqa">자주하는 질문</a>
             </li>
             <li>
                 <a href="${ pageContext.servletContext.contextPath }/user/ucc/MTMQnA">1:1 문의</a>
             </li>
             <li>
               <a href="${ pageContext.servletContext.contextPath }/user/ucc/MTMConsult">1:1 상담 내역</a>
           </li>
         </ul>
     </nav>
     <!-- img src="${ pageContext.servletContext.contextPath }/resources/images/customerServiceImg.png" id="customerguide"> -->

</body>
</html>
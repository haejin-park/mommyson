<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>사업자회원조회</title>
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
            <form action="${ pageContext.servletContext.contextPath }/manager/deleteCeoMember" method="POST">
	            <div class="top_box">
	                <p>사업자 회원 조회</p>
	                <input type="button" value="회원삭제">
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
		                    <th><input type="checkbox" name="ch1"></th>
		                    <th>번호</th>
		                    <th>아이디</th>
		                    <th>대표자</th>
		                    <th>이메일</th>
		                    <th>가입일</th>
		                    <th>가게</th>
		                    <th>상태</th>
		                    <th>-</th>
		                </tr>
	                </thead>
	                <tbody>
		                <c:forEach items="${ requestScope.buisnessMemberList }" var="nm">
		                	<c:if test="${ nm.memType == 'ceo' }">
			                    <tr>
			                        <th scope="row"><input type="checkbox" name="chkMember" value="${ nm.memCode }" class="chkbox"></th>
			                        <td>${ nm.memCode }</td>
			                        <td>${ nm.memId }</td>
			                        <td>${ nm.ceo.name }</td>
			                        <td>${ nm.email }</td>
			                        <td>${ nm.enrollDate }</td>
			                        <td>${ nm.ceo.store.storeName }</td>
			                        <td></td>
			                        <td><a href="" data-toggle="modal" data-target="#exampleModal">[상세보기]</a></td>
			                    </tr>
		                    </c:if>
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
                    <div class="img_box"></div>
                    <div class="txt_info_box">
                        <table border="1">
                            <colgroup>
                                <col width=""/>
                                <col width=""/>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>사업자 번호</th>
                                    <td>111-111-11111</td>
                                </tr>
                                <tr>
                                    <th>대표자명</th>
                                    <td>관리자</td>
                                </tr>
                                <tr>
                                    <th>가입일</th>
                                    <td>2021-11-25</td>
                                </tr>
                                <tr>
                                    <th>아이디</th>
                                    <td>user01</td>
                                </tr>
                                <tr>
                                    <th>이메일</th>
                                    <td>vwnua@naver.com</td>
                                </tr>
                                <tr>
                                    <th>가게정보</th>
                                    <td>더조은가게</td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td>서울특별시 서초구 서초대로78길 48 송림빌딩 13층</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="modal_footer">
                    <h3>결제내역</h3>
                    <table border="1">
                        <colgroup>
                            <col width=""/>
                            <col width=""/>
                            <col width=""/>
                            <col width=""/>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>결제일</th>
                                <td>2021-11-23</td>
                                <th>구매품목</th>
                                <td>3개월 이용권</td>
                            </tr>
                            <tr>
                                <th>만료일</th>
                                <td>2022-02-23</td>
                                <th>결제금액</th>
                                <td>70,000</td>
                            </tr>
                            <tr>
                                <th></th>
                                <td></td>
                                <th>총 결제금액</th>
                                <td>700,000</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu1").addClass("show");
         $("#homeSubmenu1 > li:nth-child(2) > a").attr("style","color: #F89E91 !important");
     </script>
</body>
</html>
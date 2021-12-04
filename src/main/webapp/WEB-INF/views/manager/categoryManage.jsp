<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            <h2>카테고리 설정</h2>
            <form action="">
            	<div class="tag_container">
                    <div class="unused_tag">
                        <strong class="tag_title">미사용 카테고리</strong>
                        <button type="button" data-toggle="modal" data-target="#exampleModal">추가</button>
                        <ul class="df_ul tag_list">
                            <li>
                                <input type="checkbox" name="" id="cheked">
                                <label for="cheked"></label>
                                <span>#바삭</span>
                                <button>
                                    <img src="${ pageContext.servletContext.contextPath }/resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="cheked2">
                                <label for="cheked2"></label>
                                <span>#말랑</span>
                                <button>
                                    <img src="${ pageContext.servletContext.contextPath }/resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="cheked3">
                                <label for="cheked3"></label>
                                <span>#시원</span>
                                <button>
                                    <img src="${ pageContext.servletContext.contextPath }/resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="cheked4">
                                <label for="cheked4"></label>
                                <span>#달달한</span>
                                <button>
                                    <img src="${ pageContext.servletContext.contextPath }/resources/images/delete_btn.png" alt="태그삭제">
                                </button>
                            </li>
                        </ul>
                    </div>
                    <div class="choice_use">
                        <button style="margin-bottom: 20px;">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/use_tag_btn.png" alt="태그 사용">
                        </button>
                        <button>
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/unuse_tag_btn.png" alt="태그 미사용">
                        </button>
                    </div>
                    <div class="used_tag">
                        <strong class="tag_title">사용 카테고리</strong>
                        <ul class="df_ul tag_list">
                            <li>
                                <input type="checkbox" name="" id="uncheked">
                                <label for="uncheked"></label>
                                <span>#오징어</span>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="uncheked2">
                                <label for="uncheked2"></label>
                                <span>#생선</span>
                            </li>
                            <li>
                                <input type="checkbox" name="" id="uncheked3">
                                <label for="uncheked3"></label>
                                <span>#과자</span>
                            </li>
                        </ul>
                    </div>
                </div>
                
                <!-- 태그 추가 Modal -->
                <div class="modal fade add_tag_modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p>키워드 추가</p>
                                <input type="text" name="" id="">
                                <div class="btn_box">
                                    <button style="background-color: #F89E91; margin-right: 5px;">확인</button>
                                    <button data-dismiss="modal" aria-label="Close" style="background-color: #D7D4D4;">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" value="저장" class="save_btn">
            </form>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu5").addClass("show");
         $("#homeSubmenu5 > li:last-child > a").attr("style","color: #F89E91 !important");
     </script>
	
</body>
</html>
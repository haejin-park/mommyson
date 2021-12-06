<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>태그 설정</title>
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
            <h2>태그 설정</h2>
            <form action="">
                <div class="tag_container">
                    <div class="unused_tag">
                        <strong class="tag_title">미사용 태그</strong>
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
                        <strong class="tag_title">사용 태그</strong>
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
                        <p>최대 15개</p>
                        <div class="hot_keword">
                            <strong class="tag_title">핫 키워드</strong>
                            <button type="button" data-toggle="modal" data-target="#exampleModal2">수정</button>
                            <ul class="df_ul keyword_list">
                                <li>
                                    <span class="num">1</span>
                                    <span class="txt" id="txt1">#어린이반찬</span>
                                </li>
                                <li>
                                    <span class="num">2</span>
                                    <span class="txt" id="txt2">#엄마반찬</span>
                                </li>
                                <li>
                                    <span class="num">3</span>
                                    <span class="txt" id="txt3">#제철반찬</span>
                                </li>
                                <li>
                                    <span class="num">4</span>
                                    <span class="txt" id="txt4">#대용량반찬</span>
                                </li>
                                <li>
                                    <span class="num">5</span>
                                    <span class="txt" id="txt5">#묶음반찬</span>
                                </li>
                                <li>
                                    <span class="num">6</span>
                                    <span class="txt" id="txt6">#냉동반찬</span>
                                </li>
                            </ul>
                        </div>
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

                <!-- 핫 키워드 수정 Modal -->
                <div class="modal fade add_tag_modal" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <p>수정</p>
                                <ul class="df_ul edit_box">
                                    <li>
                                        <span class="num">1</span>
                                        <input type="text" name="" id="num1" value="">
                                    </li>
                                    <li>
                                        <span class="num">2</span>
                                        <input type="text" name="" id="num2" value="">
                                    </li>
                                    <li>
                                        <span class="num">3</span>
                                        <input type="text" name="" id="num3" value="">
                                    </li>
                                    <li>
                                        <span class="num">4</span>
                                        <input type="text" name="" id="num4" value="">
                                    </li>
                                    <li>
                                        <span class="num">5</span>
                                        <input type="text" name="" id="num5" value="">
                                    </li>
                                    <li>
                                        <span class="num">6</span>
                                        <input type="text" name="" id="num6" value="">
                                    </li>
                                </ul>
                                
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

    <script>
        let hotkeyword1 =  $("#txt1").text();
        $("#num1").val(hotkeyword1);

        let hotkeyword2 =  $("#txt2").text();
        $("#num2").val(hotkeyword2);

        let hotkeyword3 =  $("#txt3").text();
        $("#num3").val(hotkeyword1);

        let hotkeyword4 =  $("#txt4").text();
        $("#num4").val(hotkeyword4);

        let hotkeyword5 =  $("#txt5").text();
        $("#num5").val(hotkeyword5);

        let hotkeyword6 =  $("#txt6").text();
        $("#num6").val(hotkeyword6);

    </script>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
         $("#homeSubmenu5").addClass("show");
         $("#homeSubmenu5 > li:nth-child(2) > a").attr("style","color: #F89E91 !important");
     </script>
</body>
</html>
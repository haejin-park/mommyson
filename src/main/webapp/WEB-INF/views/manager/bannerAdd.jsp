<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>배너관리 추가</title>
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
            <h2>배너 관리</h2>
            <form action="${ pageContext.servletContext.contextPath }/manager/bannerAdd" method="POST">
                <table class="table bd_write_header banner_write">
                    <colgroup>
                        <col width="15%"/>
                        <col width="85%"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호(순서)</th>
                            <td>
                                <select name="bnOrder" id="">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                    <option value="">4</option>
                                    <option value="">5</option>
                                    <option value="">6</option>
                                    <option value="">7</option>
                                    <option value="">8</option>
                                    <option value="">9</option>
                                    <option value="">10</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="bnSubject" id="" placeholder="제목을 입력해주세요.">
                            </td>
                        </tr>
                        <tr>
                            <th>배너 이미지 첨부</th>
                            <td>
                                <input type="file" name="" id="choiceFile">
                                <label for="choiceFile" class="file_label" >파일선택</label>
                            </td>
                        </tr>
                        <tr>
                            <th>사용여부</th>
                            <td>
                                <label for="">사용함</label>
                                <input type="radio" name="useBanner" id="useTrue" value="Y">
                                <label for="">사용안함</label>
                                <input type="radio" name="useBanner" id="useFalse" value="N">
                            </td>
                        </tr>
                    </thead>
                </table>
                <div class="btn_box">
                    <input type="submit" value="완료" class="btn write_btn" style="background-color: #F89E91;">
                </div>
            </form>
        </div>
    </div>
    <!-- <div class="line"></div> -->
    
    <jsp:include page="../commons/footer.jsp"></jsp:include>


    <!-- 파일선택시 파일명 텍스트 표시 -->
    <script>
	    $("#homeSubmenu1").addClass("show");
	    $("#homeSubmenu1 > li:nth-child(2) > a").attr("style","color: #F89E91 !important");
    
        $("#choiceFile").on('change',function(){
            let fileName = $("#choiceFile").val();
            $(".file_label").text(fileName);
        });
    </script>
</body>
</html>
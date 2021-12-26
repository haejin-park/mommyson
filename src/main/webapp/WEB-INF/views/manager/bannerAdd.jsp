<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form action="${ pageContext.servletContext.contextPath }/manager/bannerinsert" method="POST" enctype="multipart/form-data" onsubmit="return bnstatus();">
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
                                    <option value=1>1</option>
                                    <option value=2>2</option>
                                    <option value=3>3</option>
                                    <option value=4>4</option>
                                    <option value=5>5</option>
                                    <option value=6>6</option>
                                    <option value=7>7</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="bnName" id="" placeholder="제목을 입력해주세요.">
                            </td>
                        </tr>
                        <tr>
                            <th>배너 이미지 첨부</th>
                            <td>
                                <input type="file" name="bnImgs" id="choiceFile">
                                <label for="choiceFile" class="file_label">파일선택</label>
                            </td>
                        </tr>
                        <tr>
                            <th>사용여부</th>
                            <td>
                                <label for="">사용함</label>
                                <input type="radio" name="bnStatus" id="useTrue" value="Y">
                                <label for="">사용안함</label>
                                <input type="radio" name="bnStatus" id="useFalse" value="N">
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

    <script>
    
    $("#homeSubmenu5").addClass("show");
    $("#homeSubmenu5 > li:first-child > a").attr("style","color: #F89E91 !important");
    
        $("#choiceFile").on('change',function(){
            let fileName = $("#choiceFile").val();
            $(".file_label").text(fileName);
        });
        
        function bnstatus(){
        	$("input:radio:not(:checked)").attr("disabled");
        	return true;
        }
        
    </script>
</body>
</html>
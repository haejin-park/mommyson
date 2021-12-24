<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>배너수정 페이지</title>
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
            <form action="${ pageContext.servletContext.contextPath }/manager/bannerEdit" method="POST" enctype="multipart/form-data" onsubmit="return bnstatus2();">
                <table class="table bd_write_header banner_write">
                    <colgroup>
                        <col width="15%"/>
                        <col width="85%"/>
                    </colgroup>
                    <thead>
                        <tr>
                        	<th style="display: none;"><input type="hidden" name="bnCode" value="${ bannerList.bnCode }"/></th>
                            <th>번호(순서)<input type="hidden" value="${ bannerList.bnOrder }" id="cate"/></th>
                            <td>
                                <select name="bnOrder" id="">
                                    <option value=1 id="one">1</option>
                                    <option value=2 id="two">2</option>
                                    <option value=3 id="three">3</option>
                                    <option value=4 id="four">4</option>
                                    <option value=5 id="five">5</option>
                                    <option value=6 id="six">6</option>
                                    <option value=7 id="seven">7</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="bnName" id="" value="${ bannerList.bnName }">
                            </td>
                        </tr>
                        <tr>
                            <th>배너 이미지 첨부</th>
                            <td>
                                <input type="file" name="bnImgs" id="choiceFile">
                                <label for="choiceFile" class="file_label">${ bannerList.bnImg }</label>
                            </td>
                        </tr>
                        <tr>
                            <th>사용여부</th>
                            <td>
                            	<input type="hidden" value="${ bannerList.bnStatus }" id="bnStatus">
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
        
        let cate = $('#cate').val();
    	
    	switch(cate){
	    	case '1': $("#one").prop('selected', true); break;
	    	case '2': $("#two").prop('selected', true); break;
	    	case '3': $("#three").prop('selected', true); break;
	    	case '4': $("#four").prop('selected', true); break;
	    	case '5': $("#five").prop('selected', true); break;
	    	case '6': $("#six").prop('selected', true); break;
	    	case '7': $("#seven").prop('selected', true); break;
	    	
    		default: break;
    	}
    	
    	let bnStatus = $('#bnStatus').val();
    	
    	switch(bnStatus){
	    	case "Y" : $('#useTrue').prop('checked', true); break;
	    	case "N" : $('#useFalse').prop('checked', true); break;
	    	default : break;
    	}
    	
        function bnstatus2(){
        	$("input:radio:not(:checked)").attr("disabled");
        	return true;
        }
        
    </script>
</body>
</html>
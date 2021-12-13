<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>신고 관리</title>
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
            <h2>리뷰 신고 현황</h2>
            <ul class="nav nav-tabs top_box2" id="myTab" role="tablist">
			  	<li class="nav-item" role="presentation">
			    	<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">전체</a>
			  	</li>
				<li class="nav-item" role="presentation">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">신고접수</a>
				</li>
				<li class="nav-item" role="presentation">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">처리완료</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<table class="table board_table">
			            <colgroup>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			            </colgroup>
			            <thead style="background-color: #EDEDED;">
			            	<tr>
				                <th>번호</th>
				                <th>신고유형</th>
				                <th>리뷰내용</th>
				                <th>신고대상</th>
				                <th>신고날짜</th>
				                <th>회원경고횟수</th>
				                <th>처리 상황</th>
			            	</tr>
			            </thead>
			            <tbody>
				           <c:forEach items="${ requestScope.reportList }" var="rp">
					            <tr class="detailView" onclick="repDetailView(this);" data-toggle="modal" data-target="#exampleModal">
						            <td>${ rp.REP_NO }</td>
						            <td>${ rp.REP_TYPE }</td>
						            <td>${ rp.RV_CONTENT }</td>
						            <td>${ rp.MEM_ID }</td>
						            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ rp.REP_DATE }"/></td>
						            <td>${ rp.REP_COUNT }</td>
						            <td class="reportStatus">${ rp.STATUS }</td>
						            <td class="repNo" style="display: none;"><input type="hidden" name="reportMem" value="${ rp.RV_CODE }"></td>
					            </tr>
				            </c:forEach>
			            </tbody>
		           	</table>
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<table class="table board_table">
			            <colgroup>
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
				                <th>번호</th>
				                <th>신고유형</th>
				                <th>리뷰내용</th>
				                <th>신고대상</th>
				                <th>신고날짜</th>
				                <th>회원경고횟수</th>
				                <th>처리 상황</th>
			            	</tr>
			            </thead>
			            <tbody>
			            	
			            	<c:forEach items="${ requestScope.reportList }" var="rp">
				            	<c:if test='${ rp.STATUS == "W" }'>
						            <tr class="detailView" onclick="repDetailView(this);" data-toggle="modal" data-target="#exampleModal">
							            <td>${ rp.REP_NO }</td>
							            <td>${ rp.REP_TYPE }</td>
							            <td>${ rp.RV_CONTENT }</td>
							            <td>${ rp.MEM_ID }</td>
							            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ rp.REP_DATE }"/></td>
							            <td>${ rp.REP_COUNT }</td>
							            <td class="reportStatus">${ rp.STATUS }</td>
							            <td class="repNo" style="display: none;"><input type="hidden" name="reportMem" value="${ rp.RV_CODE }"></td>
						            </tr>
					            </c:if>
				            </c:forEach>
				            
			            </tbody>
		           	</table>
				</div>
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<table class="table board_table">
			            <colgroup>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			                <col width=""/>
			            </colgroup>
			            <thead style="background-color: #EDEDED;">
			            	<tr>
				                <th>번호</th>
				                <th>신고유형</th>
				                <th>리뷰내용</th>
				                <th>신고대상</th>
				                <th>신고날짜</th>
				                <th>회원경고횟수</th>
				                <th>처리 상황</th>
			            	</tr>
			            </thead>
			            <tbody>
				           	<c:forEach items="${ requestScope.reportList }" var="rp">
				            	<c:if test='${ rp.STATUS != "W" }'>
						            <tr class="detailView" onclick="repDetailView(this);" data-toggle="modal" data-target="#exampleModal">
							            <td>${ rp.REP_NO }</td>
							            <td>${ rp.REP_TYPE }</td>
							            <td>${ rp.RV_CONTENT }</td>
							            <td>${ rp.MEM_ID }</td>
							            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${ rp.REP_DATE }"/></td>
							            <td>${ rp.REP_COUNT }</td>
							            <td class="reportStatus">${ rp.STATUS }</td>
							            <td class="repNo" style="display: none;"><input type="hidden" name="reportMem" value="${ rp.RV_CODE }"></td>
							            <td class="repMemCode" style="display: none;"><input type="hidden" name="reportMem" value="${ rp.MEM_CODE }"></td>
						            </tr>
					            </c:if>
				            </c:forEach>
			            </tbody>
		           	</table>
				</div>
			</div>
            <!-- <div class="top_box2">
                <input type="button" value="전체" style="color:  #F89E91;" >
                <span><input type="button" value="신고접수" ></span>
                <span><input type="button" value="처리완료" ></span>
            </div> -->
            
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
		                	<h3 class="modal_title">신고정보</h3>
		                    <div class="txt_info_box">
		                        <table border="1">
		                            <colgroup>
		                                <col width="20%"/>
		                                <col width="80%"/>
		                            </colgroup>
		                            <tbody>
		                                <tr>
		                                    <th>신고 번호</th>
		                                    <td class="reportNum"></td>
		                                </tr>
		                                <tr>
		                                    <th>신고유형</th>
		                                    <td class="repType"></td>
		                                </tr>
		                                <tr>
		                                    <th>리뷰내용</th>
		                                    <td class="repContent"></td>
		                                </tr>
		                                <tr>
		                                    <th>신고대상</th>
		                                    <td class="repTarget"></td>
		                                </tr>
		                                <tr>
		                                    <th>신고날짜</th>
		                                    <td class="repDate"></td>
		                                </tr>
		                                <tr>
		                                    <th>회원경고횟수</th>
		                                    <td class="repCount"></td>
		                                </tr>
		                                <tr>
		                                    <th>처리상황</th>
		                                    <td class="repStatus"></td>
		                                </tr>
		                                <tr style="display: none;">
		                                	<td class="repRvCode"></td>
		                                </tr>
		                                <tr style="display: none;">
		                                	<td class="repMemCode"></td>
		                                </tr>
		                            </tbody>
		                        </table>
		                        <ul class="df_ul reportProcess">
		                        	<li>
		                        		<a href="javascript:void(0);" onclick="companion(this);">반려</a>
		                        	</li>
		                        	<li>
		                        		<a href="javascript:void(0);" onclick="warning(this);">경고</a>
		                        	</li>
		                        	<li>
		                        		<a href="javascript:void(0);" onclick="black(this);">블랙</a>
		                        	</li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
            <!-- 페이징 -->
            <jsp:include page="../commons/paging.jsp"/>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
    
    	$("#homeSubmenu4").addClass("show");
    	$("#homeSubmenu4 > li:first-child > a").attr("style","color: #F89E91 !important");
         
        $('#myTab a').on('click', function (event) {
        	event.preventDefault()
        	$(this).tab('show')
       	})
		
		function repDetailView(e){
			
			const repCode = e.lastElementChild.firstElementChild.value;
			const reportNum = $('.txt_info_box .reportNum');
			const repType = $('.txt_info_box .repType');
			const repContent = $('.txt_info_box .repContent');
			const repTarget = $('.txt_info_box .repTarget');
			const repDate = $('.txt_info_box .repDate');
			const repCount = $('.txt_info_box .repCount');
			const repStatus = $('.txt_info_box .repStatus');
			const repRvCode = $('.txt_info_box .repRvCode');
			const repMemCode = $('.txt_info_box .repMemCode');
			
			$.ajax({
				url : '${ pageContext.servletContext.contextPath }/manager/repDetailView',
				type : 'POST',
				data : {
					repCode : repCode
				},
				success : function(data){
					console.log(data);
					reportNum.text(data.REP_NO);
					repType.text(data.REP_TYPE);
					repContent.text(data.RV_CONTENT);
					repTarget.text(data.MEM_ID);
					repDate.text((new Date(data.REP_DATE)).toLocaleDateString());
					repCount.text(data.REP_COUNT);
					repStatus.text(data.STATUS);
					repRvCode.text(data.RV_CODE);
					repMemCode.text(data.MEM_CODE);
					
					if(repStatus.text() == "W"){
						repStatus.text("신고접수")
						$('.reportProcess').css('display','block');
						
						if(repCount.text() == 0){
							$('.reportProcess > li:last-child').css('display','none');
						} else if(repCount.text() == 1){
							$('.reportProcess > li:last-child').css('display','none');
						} else if(repCount.text() == 2){
							$('.reportProcess > li:last-child').css('display','none');
						} else if(repCount.text() == 3){
							$('.reportProcess > li:nth-child(2)').css('display','none');
							$('.reportProcess > li:last-child').css('display','block');
						} else{
							$('.reportProcess').css('display','none');
						}
						
					}
					
					if(repStatus.text() == "Y"){
						repStatus.text("삭제처리완료")
						$('.reportProcess').css('display','none')
					}
					
					if(repStatus.text() == "N"){
						repStatus.text("반려처리완료")
						$('.reportProcess').css('display','none')
					}
				},
				error : function(error){
					console.log(error);
				}
			});
			
		}
        
        function companion(e){
        	
        	const repRvCode = e.parentElement.parentElement.previousElementSibling.lastElementChild.lastElementChild.previousElementSibling.firstElementChild.textContent;
        	
        	$.ajax({
        		url : '${ pageContext.servletContext.contextPath }/manager/repCompanion' + repRvCode,
        		type : 'GET',
        		success : function(data){
        			console.log(data);
        			location.href="${ pageContext.servletContext.contextPath }/manager/statusStoreWarning";
        		},
        		error : function(error){
        			console.log(error);
        		}
        	});
        }
        
        function warning(e){
        	
        	const repMemCode = e.parentElement.parentElement.previousElementSibling.lastElementChild.lastElementChild.lastElementChild.textContent;
        	const repRvCode = e.parentElement.parentElement.previousElementSibling.lastElementChild.lastElementChild.previousElementSibling.firstElementChild.textContent;
        	
        	$.ajax({
        		url : '${ pageContext.servletContext.contextPath }/manager/repWarning/' + repMemCode + "/" + repRvCode,
        		type : 'GET',
        		success : function(data){
        			console.log(data);
        			location.href="${ pageContext.servletContext.contextPath }/manager/statusStoreWarning";
        		},
        		error : function(error){
        			console.log(error);
        		}
        	});
        }
        
        function black(e){
        	
        	const repMemCode = e.parentElement.parentElement.previousElementSibling.lastElementChild.lastElementChild.lastElementChild.textContent;
        	const repRvCode = e.parentElement.parentElement.previousElementSibling.lastElementChild.lastElementChild.previousElementSibling.firstElementChild.textContent;
        	
        	console.log(repMemCode);
        	console.log(repRvCode);
        	$.ajax({
        		url : '${ pageContext.servletContext.contextPath }/manager/repBlack/' + repMemCode + "/" + repRvCode,
        		type : 'GET',
        		success : function(data){
        			console.log(data);
        			location.href="${ pageContext.servletContext.contextPath }/manager/statusStoreWarning";
        		},
        		error : function(error){
        			console.log(error);
        		}
        	});
        }
        
        /* 리뷰신고현황 전체 */
        $('#home-tab').on('click',function(){
        	
        });
        
        /* 리뷰신고현황 신고접수 */
		$('#profile-tab').on('click',function(){
        	
        });
		
        /* 리뷰신고현황 처리완료 */
		$('#contact-tab').on('click',function(){
        	
        });
         
    </script>
</body>
</html>
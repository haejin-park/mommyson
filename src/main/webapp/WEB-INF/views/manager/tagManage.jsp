<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <div class="tag_container">
				<div class="unused_tag">
               		<strong class="tag_title">미사용 태그</strong>
                    <button type="button" data-toggle="modal" data-target="#exampleModal">추가</button>
                    <ul class="df_ul tag_list">
	                   	<c:forEach items="${ requestScope.useTagList }" var="ut" varStatus="vst">
		                   	<c:if test='${ ut.status == "N" }'>
			                    <li>
				                    <input type="checkbox" name="chkTagNum" id="cheked<c:out value="${ vst.index }"/>" value="${ ut.tagNo }">
				                    <label for="cheked<c:out value="${ vst.index }"/>"></label>
				                    <span>#${ ut.tagName }</span>
				                    <input type="hidden" value="${ ut.tagNo }" class="tagNum">
				                    <button type="button" onclick="tagDelete(this);">
				                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/delete_btn.png" alt="태그삭제">
				                    </button>
			                    </li>
		                    </c:if>
	                    </c:forEach>
                    </ul>
				</div>
                <div class="choice_use">
                    <button style="margin-bottom: 20px;" onclick="useTag(this);">
                        <img src="${ pageContext.servletContext.contextPath }/resources/images/use_tag_btn.png" alt="태그 사용">
                    </button>
                    <button onclick="unUseTag(this);">
                        <img src="${ pageContext.servletContext.contextPath }/resources/images/unuse_tag_btn.png" alt="태그 미사용">
                    </button>
                </div>
                <div class="used_tag">
	                <strong class="tag_title">사용 태그</strong>
	                <button type="button" onclick="hotkewordAdd(this);">핫 키워드 등록</button>
	                <ul class="df_ul tag_list useTagList">
		                <c:forEach items="${ requestScope.useTagList }" var="ut" varStatus="vst">
			                <c:if test='${ ut.status == "Y" }'>
					            <li>
						            <input type="checkbox" name="chkTagNum" id="uncheked<c:out value="${ vst.index }"/>" value="${ ut.tagNo }">
						            <label for="uncheked<c:out value="${ vst.index }"/>"></label>
						            <span>#${ ut.tagName }</span>
					            </li>
			                </c:if>
		                </c:forEach>
	                </ul>
	                <p>최대 15개</p>
	                <div class="hot_keword">
		                <strong class="tag_title">핫 키워드</strong>
		                <button type="button" data-toggle="modal" data-target="#exampleModal2">수정</button>
		                <ul class="df_ul keyword_list">
			                <c:forEach items="${ requestScope.hotkewordList }" var="hk" varStatus="vst">
				                <li>
					                <span class="num">${ hk.hotNo }</span>
					                <span class="txt" id="txt1">#${ hk.hotContent }</span>
				                </li>
			                </c:forEach>
		                </ul>
	                </div>
                </div>
			</div>

            <!-- 태그 추가 Modal -->
            <div class="modal fade add_tag_modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <p>태그 추가</p>
                            <form action="${ pageContext.servletContext.contextPath }/manager/tagAdd" method="POST" id="tagAddForm">
                            	<input type="text" name="tag" id="">
	                             <div class="btn_box">
	                                 <input type="submit" style="background-color: #F89E91; margin-right: 5px;" value="확인">
	                                 <button data-dismiss="modal" aria-label="Close" style="background-color: #D7D4D4;">취소</button>
	                             </div>
                            </form>
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
	                           	<c:forEach items="${ requestScope.hotkewordList }" var="hk" varStatus="vst">
		                            <li>
			                            <span class="num">${ hk.hotNo }</span>
			                            <input type="hidden" value="${ hk.hotNo }" name="hotNo">
			                            <select name="tagNum">
				                            <option value="${ hk.tagNo }">${ hk.hotContent }</option>
				                            <c:forEach items="${ requestScope.useTagList }" var="ut" varStatus="vst">
					                            <c:if test='${ ut.status == "Y" and hk.tagNo != ut.tagNo }'>
					                            	<option value="${ ut.tagNo }">${ ut.tagName }</option>
					                            </c:if>
				                            </c:forEach>
			                            </select>
		                            </li>
	                            </c:forEach>
                            </ul>
                            <div class="btn_box">
                                <input type="submit" onclick="hotkewordEdit(this);" style="background-color: #F89E91; margin-right: 5px;" value="확인">
                                <button data-dismiss="modal" aria-label="Close" style="background-color: #D7D4D4;">취소</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../commons/footer.jsp"></jsp:include>

    <script>
    
         $("#homeSubmenu5").addClass("show");
         $("#homeSubmenu5 > li:nth-child(2) > a").attr("style","color: #F89E91 !important");
         
         /* 미사용 태그 삭제 */
         function tagDelete(e){
        	 const tagNo = e.previousElementSibling.value;
        	 
        	 $.ajax({
        		 url : '${ pageContext.servletContext.contextPath }/manager/tagDelete',
        		 type : 'POST',
        		 data : {
        			tagNo : tagNo 
        		 },
        		 success : function(data){
        			 console.log(data);
        			 location.reload();
        		 },
        		 error : function(error){
        			 console.log(error);
        		 }
        	 });
         }
         
         /* 사용태그로 등록 */
         function useTag(){
        	 
        	 let useTagCount = $('.useTagList > li').length;
        	 let useTagNo = [];
           	 $("input:checkbox[name='chkTagNum']:checked").each(function(i, ival) {
           		 useTagNo.push($(this).val());
       			 console.log(useTagNo);
             });
           	 
        	 let chkCount = useTagNo.length;
        	 let count = useTagCount + chkCount;
           	 
        	 if(count <= 15){
        		 
	           	 $.ajax({
	           		  url : '${ pageContext.servletContext.contextPath }/manager/useTag',
	           		  type : 'POST',
	           		  data : {
	           			useTagNo : useTagNo
	           		  },
	           		  success : function(data){
	           			  console.log(data);
	           			  location.reload();
	           		  },
	           		  error : function(error){
	           			  console.log(error);
	           		  }
	           	 }); 
        	 } else {
        		 alert("추가할 수 있는 태그는 최대 15개 입니다.");
        	 }
         }
         
         /* 미사용 태그로 등록 */
         function unUseTag(){
        	 
        	 let unUseTagNo = [];
           	 $("input:checkbox[name='chkTagNum']:checked").each(function(i, ival) {
           		unUseTagNo.push($(this).val());
        			 console.log(unUseTagNo);
             });
           	 
           	 $.ajax({
           		url :  '${ pageContext.servletContext.contextPath }/manager/unUseTag',
           		type : 'POST',
           		data : {
           			unUseTagNo : unUseTagNo
           		},
           		success : function(data){
           			console.log(data);
           			location.reload();
           		},
           		error : function(error){
           			console.log(error);
           		}
           	 });
         }
         
         /* 핫 키워드 등록 */
         function hotkewordAdd(){
        	 
        	 let tagNo = [];
        	 let tagName = [];
           	 $("input:checkbox[name='chkTagNum']:checked").each(function(i, ival) {
           		tagNo.push($(this).val());
           		tagName.push($(this).next().next().text().substr(1));
        			 console.log(tagNo);
        			 console.log(tagName);
             });
           	 
           	 $.ajax({
           		url :  '${ pageContext.servletContext.contextPath }/manager/hotkewordAdd',
           		type : 'POST',
           		data : {
           			tagNo : tagNo,
           			tagName : tagName
           		},
           		success : function(data){
           			console.log(data);
           			location.reload();
           		},
           		error : function(error){
           			console.log(error);
           			alert("이미 사용중인 태그 입니다.");
           		}
           	 });
         }
         
         /* 핫 키워드 수정 */
         function hotkewordEdit(){
        	 
        	 let tagNo = [];
        	 let tagName = [];
        	 let hotNo = [];
        	 
        	 $('.edit_box > li > select[name=tagNum] option:selected').each(function(i, ival) {
        		 tagNo.push($(this).val());
        		 tagName.push($(this).text());
        		 hotNo.push($(this).parent().prev().val());
        	 });
        	 
        	 console.log(tagNo);
        	 console.log(tagName);
    		 console.log(hotNo);
    		 
        	 $.ajax({
        		url : '${ pageContext.servletContext.contextPath }/manager/hotkewordEdit',
        		type : 'POST',
        		data : {
        			tagNo : tagNo,
        			tagName : tagName,
        			hotNo : hotNo
        		},
        		success : function(data){
        			console.log(data);
        			location.reload();
        		},
        		error : function(error){
        			console.log(error);
        			alert("이미 사용중인 태그 입니다.");
        		}
        	 });
         }
     </script>
</body>
</html>
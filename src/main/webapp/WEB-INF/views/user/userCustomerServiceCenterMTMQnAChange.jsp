<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userCustomerServiceCenterMTMQnA.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
   <jsp:include page="../commons/header.jsp"></jsp:include>
   
    <section>

      <div class="container">
        <div class="row">
          <div class="col-md-3">
              <jsp:include page="../commons/userCustomerServiceCenterSidebar.jsp"></jsp:include>
          </div>

          <div class="col-md-9">
            <div id="userCouponHead">
              <br>
              <h3><strong>1:1 문의</strong></h3>
            </div>
            <!-- 작성테이블 -->
            <div id="writeTable">
            <br> 
            <table class="table table">
              <thead>
                <tr>
                  <th id="tablecol1" scope="col">번호</th>
                  <th id="tablecol2" scope="col"><input type="text" placeholder="질문을 입력해주세요" id="inputText"></th>      
                  <th id="tablecol3" scope="col">분류</th>        
                  <th id="tablecol4" scope="col">
                    <select id="selectbtn">
                      <option value="user">소비자</option>
                      <option value="store">사업자</option>
                    </select>
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td colspan="4"><textarea placeholder="내용을 입력하세요"></textarea></td> 
                </tr>
                
              </tbody>
            </table>
          </div>
          <!-- 첨부파일 부분 -->
          <div id="fileAttachment">
            <h4><strong>&nbsp;&nbsp;첨부파일</strong></h4>
            <form>          
                  <button class="imgbtn" id="imgbtn1" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1" 
                   ><img class="imgbtn1 img1" id="img1" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                 
                  <button class="imgbtn2" id="imgbtn2" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                  ><img class="imgbtn2 img2" id="img2" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
            
                  <button class="imgbtn3" id="imgbtn3" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3" 
                  ><img class="imgbtn3 img3" id="img3" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
            </form>
            <div>
              <br>
              <h6>이미지당 10MB이하, 최대 3개까지 등록 가능합니다. </h6>
            </div>
          </div>
          
            <!-- Modal 1 -->
            <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">등록할 이미지 파일을 올려주세요</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/camera.png" id="preview-image1" style="width: 400px;">
                    <hr>
                    <input type="file" id="input-image1">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary" id="save_img">업로드</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- Modal 2 -->
            <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">등록할 이미지 파일을 올려주세요</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/camera.png" id="preview-image2" style="width: 400px;">
                    <hr>
                    <input type="file" id="input-image2">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary" id="save_img2">업로드</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- Modal 3 -->
            <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">등록할 이미지 파일을 올려주세요</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/camera.png" id="preview-image3" style="width: 400px;">
                    <hr>
                    <input type="file" id="input-image3">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary" id="save_img3">업로드</button>
                  </div>
                </div>
              </div>
            </div>
            <script>
            $('#imgbtn1').on('click', function() {
                $('#exampleModal1').modal('show'); 
               });
               
               function readImage(input) {

                   if(input.files && input.files[0]) {

                       const reader = new FileReader()

                       reader.onload = e => {
                           const previewImage = document.getElementById("preview-image1")
                           previewImage.src = e.target.result
                       }

                       reader.readAsDataURL(input.files[0])
                   }
               }
               
             //모달창안에 인풋 파일 부분
               const inputImage = document.getElementById("input-image1")
               inputImage.addEventListener("change", e => {
                   readImage(e.target)//위에 있는 함수 통해서 
               });
               
               
            // 저장 버튼 클릭 시 리뷰 사진 등록 (ajax로 수정해야함)//모달창 밖의 이미지가 변함
 				//프리뷰 이미지값 변환
 				$('#save_img').on('click',function() {
	              let img = $('#preview-image1').attr('src')
	                   $('#img1').attr('src',img);//프리뷰이미지를 리뷰 이미지로
	                   $('#exampleModal1').modal('hide'); 
 					
 				});
              
              
              $('#imgbtn2').on('click', function() {
               $('#exampleModal2').modal('show');
              });
              
              function readImage2(input2) {

                  if(input2.files && input2.files[0]) {

                      const reader = new FileReader()

                      reader.onload = e => {
                          const previewImage = document.getElementById("preview-image2")
                          previewImage.src = e.target.result
                      }

                      reader.readAsDataURL(input2.files[0])
                  }
              }
              
            //모달창안에 인풋 파일 부분
              const inputImage2 = document.getElementById("input-image2")
              inputImage2.addEventListener("change", e => {
                  readImage2(e.target)//위에 있는 함수 통해서 
              });
              
              
           // 저장 버튼 클릭 시 리뷰 사진 등록 (ajax로 수정해야함)//모달창 밖의 이미지가 변함
				//프리뷰 이미지값 변환
				$('#save_img2').on('click',function() {
	              let img = $('#preview-image2').attr('src')
	                   $('#img2').attr('src',img);//프리뷰이미지를 리뷰 이미지로
	                   $('#exampleModal2').modal('hide'); 
					
				});
              
              
              
              $('#imgbtn3').on('click', function() {
                $('#exampleModal3').modal('show');
              });
              
              function readImage3(input3) {

                  if(input3.files && input3.files[0]) {

                      const reader = new FileReader()

                      reader.onload = e => {
                          const previewImage = document.getElementById("preview-image3")
                          previewImage.src = e.target.result
                      }

                      reader.readAsDataURL(input3.files[0])
                  }
              }
              
            //모달창안에 인풋 파일 부분
              const inputImage3 = document.getElementById("input-image3")
              inputImage3.addEventListener("change", e => {
                  readImage3(e.target)//위에 있는 함수 통해서 
              });
              
              
           // 저장 버튼 클릭 시 리뷰 사진 등록 (ajax로 수정해야함)//모달창 밖의 이미지가 변함
				//프리뷰 이미지값 변환
				$('#save_img3').on('click',function() {
	              let img = $('#preview-image3').attr('src')
	                   $('#img3').attr('src',img);//프리뷰이미지를 리뷰 이미지로
	                   $('#exampleModal3').modal('hide'); 
					
				});
         
              
            </script>
            <!-- ////////////////////////// -->
            <div id="sendArea">
              <button id="sendQusestion"><strong>수정하기</strong></button>
                &nbsp;&nbsp;
              <button id="cnacel"><strong>취소</strong></button>
            </div>
          </div>
        </div>
      </div>
    </section>
   	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

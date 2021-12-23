<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userMyPageSideBar.css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/user/userCustomerServiceCenterMTMQnA.css">
</head>
<body>
    <jsp:include page="../commons/header.jsp"></jsp:include>
    
    <section>

        <form method="post" action="MTMQnA" enctype="multipart/form-data">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
              <jsp:include page="../commons/userCustomerServiceCenterSidebar.jsp"></jsp:include>
          </div>

          <div class="col-md-9">
            <div id="userCouponHead">
              <br><br>
              <h3><strong>1:1 문의</strong></h3>
            </div>
            <!-- 작성테이블 -->
            <div id="writeTable">
            <br> 
            <table class="table table">
              <thead>
                <tr>
                  <th id="tablecol1" scope="col">제목</th>
                  <th id="tablecol2" scope="col"><input type="text" placeholder="질문을 입력해주세요" name="title" id="inputText"></th>      
                  <th id="tablecol3" scope="col">분류</th>        
                  <th id="tablecol4" scope="col">
                    <select name="userType" id="selectbtn">
                      <option value="user">소비자</option>
                      <option value="owner">사업자</option>
                    </select>
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td colspan="4"><textarea name="content" placeholder="내용을 입력하세요"></textarea></td> 
                </tr>
              </tbody>
            </table>
              
          </div>
          <!-- 첨부파일 부분 -->
          <div id="fileAttachment">
            <h4><strong>&nbsp;&nbsp;첨부파일</strong></h4>
                  <button class="imgbtn" id="imgbtn1" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1" 
                   ><img class="imgbtn1 img1" id="img1" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                 
                  <button class="imgbtn2" id="imgbtn2" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                  ><img class="imgbtn2 img2" id="img2" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
            
                  <button class="imgbtn3" id="imgbtn3" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3" 
                  ><img class="imgbtn3 img3" id="img3" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
            <div>
            <div class="fileArea" style="display: none">
                    <input type="file" id="insert_img1" name="insert_img1" onchange="loadImg(this,1)" accept="image/*">
                    <input type="file" id="insert_img2" name="insert_img2" onchange="loadImg(this,2)" accept="image/*">
                    <input type="file" id="insert_img3" name="insert_img3" onchange="loadImg(this,3)" accept="image/*">
            </div>
              <br>
              <h6>이미지당 10MB이하, 최대 3개까지 등록 가능합니다. </h6>
            </div>
          </div>
          
<!--             Modal 1
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
                    <img src="" id="preview-image1" style="width: 400px;">
                    <hr>
	                    <input type="file" name="multiFiles" id="input-image1">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary" id="save_img">업로드</button>
                  </div>
                </div>
              </div>
            </div>
            Modal 2
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
                    <img src="" id="preview-image2" style="width: 400px;">
                    <hr>
                    <input type="file" name="multiFiles" id="input-image2">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary" id="save_img2">업로드</button>
                  </div>
                </div>
              </div>
            </div>
            Modal 3
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
                    <img src="" id="preview-image3" style="width: 400px;">
                    <hr>
                    <input type="file" name="multiFiles" id="input-image3">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary" id="save_img3">업로드</button>
                  </div>
                </div>
              </div>
            </div> -->
            <script>
            
            const $viewArea1 = document.getElementById("img1");
            const $viewArea2 = document.getElementById("img2");
            const $viewArea3 = document.getElementById("img3");

            $viewArea1.onclick = function(){
                document.getElementById("insert_img1").click();
            }
            $viewArea2.onclick = function(){
                document.getElementById("insert_img2").click();
            }
            $viewArea3.onclick = function(){
                document.getElementById("insert_img3").click();
            }
            
            let img = $(this).attr("src");
            
             function loadImg(value, num){
            if(value.files && value.files[0]){
                const reader = new FileReader();
                /* 읽기동작이 성공적으로 로드되었을 때 작동하는 함수 */
                reader.onload = function(e){
                /* 가공된 파일 url을 srcdp 넣어줌 */
                    switch(num){
                    case 1: document.getElementById("img1").src = e.target.result; break;
                    case 2: document.getElementById("img2").src = e.target.result; break;
                    case 3: document.getElementById("img3").src = e.target.result; break;
                    }
                }
                reader.readAsDataURL(value.files[0]);
            }
            if(value.files || value.files[0]){
                switch(num){
                    case 1: document.getElementById("img1").src = '${ pageContext.servletContext.contextPath }/resources/images/photo2.png'; break;
                    case 2: document.getElementById("img2").src = '${ pageContext.servletContext.contextPath }/resources/images/photo2.png'; break;
                    case 3: document.getElementById("img3").src = '${ pageContext.servletContext.contextPath }/resources/images/photo2.png'; break;
                    }
            }
        }
            </script>
            <!-- ////////////////////////// -->
            <div id="sendArea">
              <button type="submit" id="sendQusestion"><strong>보내기</strong></button>
                &nbsp;&nbsp;
              <button id="cnacel"><strong>취소</strong></button>
            </div>
          </div>
        </div>
      </div>
      </form>
    </section>
   	<jsp:include page="../commons/footer.jsp"/>
  </body>
  </html>

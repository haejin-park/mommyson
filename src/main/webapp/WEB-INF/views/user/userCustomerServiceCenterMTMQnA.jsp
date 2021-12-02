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
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
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
                  <button class="imgbtn1" id="imgbtn1" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" 
                   ><img class="imgbtn1 img1" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
                 
                  <button class="imgbtn2" id="imgbtn2" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2" 
                  ><img class="imgbtn2 img2" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
            
                  <button class="imgbtn3" id="imgbtn3" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3" 
                  ><img class="imgbtn3 img3" src="${ pageContext.servletContext.contextPath }/resources/images/camera.png"></button>
            </form>
            <div>
              <br>
              <h6>이미지당 10MB이하, 최대 3개까지 등록 가능합니다. </h6>
            </div>
          </div>
          
            <!-- Modal 1 -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">등록할 이미지 파일을 올려주세요</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <input type="file">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary">업로드</button>
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
                    <input type="file">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary">업로드</button>
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
                    <input type="file">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-primary">업로드</button>
                  </div>
                </div>
              </div>
            </div>
            <script>
              $('#imgbtn1').on('click', function() {
               $('#exampleModal').modal('show');
              })
              $('#imgbtn2').on('click', function() {
               $('#exampleModal2').modal('show');
              })
              $('#imgbtn3').on('click', function() {
                $('#exampleModal3').modal('show');
              })
         
              
            </script>
            <!-- ////////////////////////// -->
            <div id="sendArea">
              <button id="sendQusestion"><strong>보내기</strong></button>
                &nbsp;&nbsp;
              <button id="cnacel"><strong>취소</strong></button>
            </div>
          </div>
        </div>
      </div>
    </section>
   



      <footer class="at-container">
        <ul class="df_ul ft_list">
          <li>
            <a href="">마미손맛 소개</a>   
          </li>
          <li>
            <a href="">이용약관</a>
          </li>
          <li>
            <a href="">개인정보처리방침</a>
          </li>
          <li>
            <a href="">전자금융거래이용약관</a>
          </li>
        </ul>
        <div class="ft_img_line">
          <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img01.png" alt="소비자중심경영">
        <img src="${ pageContext.servletContext.contextPath }/resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
        <img src="${ pageContext.servletContext.contextPath }/resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
      </div>
      <div class="ft_info">
        <p>(주)마미손맛 자세히 보기</p>
        <p>대표 : 유승제 / 주소 : 서울특별시 서초구 서초대로78길 48 송림빌딩 13층</p>
        <p>사업자번호 : 123-45-67890 / 통신판매업신고 : 제 2021-서울-503호 / 개인정보 정책 및 담당 : 김준희</p>
        <p>대표번호 : 1588-0000 / 팩스번호 : 02-123-1234 / 이메일 : mommysonmat@greedy.com</p>
        <p>ⓒ SSEULEODAMJO CORP. All Rights Reserved.</p>
      </div>
    </footer>
  </body>
  </html>

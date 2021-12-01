<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<link rel="stylesheet" href="../../resources/css/owners.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>

	<!-- header -->
	<jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/header.jsp"/>
	
	<br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
      <br><h3 style="margin-left: 100px; font-weight: 900;">사업자 마이페이지</h3>
      <hr>
    </div>
    
     <div class="body-all">
      <div class="body-inside">
      
      <!-- sidebar  -->
      <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/ownerSidebar.jsp"/>
    
    <div class="center-table" style="margin-left: 450px; text-align: center;">
        <table class="table table" style="width: 1050px;">
            <thead style="background-color: #EDEDED;">
            <tr>
                <th scope="col"><input type="checkbox" name="ch1"></th>
                <th scope="col">상품번호</th>
                <th scope="col">상품</th>
                <th scope="col">등록일</th>
                <th scope="col">할인율</th>
            </tr>
            </thead>
        <form>
            <tbody>
            <tr>
                <th scope="row"><input type="checkbox" name="ch1"></th>
                <td>011</td>
                <td>미역줄기 볶음</td>
                <td>21-11-22</td>
                <td>10%</td>
            </tr>
            </tbody>
        </form>
        </table>

        <br><br>
        
        <!-- 모달버튼 -->
        <button type="button" id="button1" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
            등록</button>
        <button id="button2" style="height: 35px;">삭제</button>
    </div>
    <div style="margin: 500px 0 300px 900px;">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
        </nav>
      </div>
    </div>  
  </div>  

<!-- 모오오오달 -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true"  style="padding-right: 544px;">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" >
    <div class="modal-dialog modal-xl" >
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">할인 추가</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <table class="table table" style="width: 1050px;">
                <thead style="background-color: #EDEDED;">
                <tr>
                    <th scope="col"></th>
                    <th scope="col">상품번호</th>
                    <th scope="col">상품</th>
                    <th scope="col">등록일</th>
                    <th scope="col">할인율</th>
                </tr>
                </thead>
            <form>
                <tbody>
                <tr>
                    <th scope="row"><input type="checkbox" name="ch1"></th>
                    <td>011</td>
                    <td>미역줄기 볶음</td>
                    <td>21-11-22</td>
                    <td>
                    <select>
                        <option>10%</option>
                        <option>15%</option>
                        <option>20%</option>
                        <option>25%</option>
                    </select>
                    </td>
                </tr>
                </tbody>
            </form>
            </table>
        </div>
        <div class="modal-footer" >
          <button type="button" class="btn btn-primary" id="button1" >할인 등록</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        </div>
       </div>
      </div>
    </div>
   </div>
    
    <!-- footer -->
  <jsp:include page="${ pageContext.servletContext.contextPath }/view/commons/footer.jsp"/>
    
</body>
</html>
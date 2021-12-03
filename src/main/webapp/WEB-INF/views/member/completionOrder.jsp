<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="Mommyson/resources/css/coupon.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage-sidebar.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <title>완료된 주문</title>
</head>
<body>
    
    <jsp:include page="../commons/header.jsp"/>
    
    <br><br><br>
    <div class="page-text" style="width: 1550px; margin: 0 auto;">
        <h3 style="margin-left: 760px; font-weight: 900; font-size: 60px;">완료된 주문</h3>
        <hr>
    </div>
    
    <div class="body-all">
        <div class="body-inside">
        
       <jsp:include page="../commons/ownerSidebar.jsp"/> 
    	
    	<div>
      	<br>
      	<p style="text-align: left; margin: 20px 0 0 450px;">주문 접수일 : <input type="date"></p> 
    	</div>
   	 	<br>
   	 	<div style="text-align: center;">
        	<div style="margin-left: 450px;">
        	<table class="table table" style="width: 1050px;">
            	<thead style="background-color: #EDEDED;">
              	<tr>
                	<th scope="col">주문 번호</th>
                	<th scope="col">주문일</th>
                	<th scope="col">고객명</th>
                	<th scope="col">주문상품</th>
              	</tr>
            	</thead>
            	<tbody>
              	<tr>
	                <th scope="row">1</th>
	                <td>2021-11-23</td>
	                <td>로찜마</td>
	                <td>두부 무침, 오뎅 볶음</td>
              	</tr>
	            <tr>
	                <th scope="row">2</th>
	                <td>2021-11-27</td>
	                <td>튼튼한 군인</td>
	                <td>로제찜닭마요</td>
	            </tr>
	            <tr>
	                <th scope="row">3</th>
	                <td>2021-11-28</td>
	                <td>시민 조혜주</td>
	                <td>오뎅볶음, 로제찜닭마요</td>
	            </tr>
	           </tbody>
	         </table>
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
	     </div>
	    <script>
	     $(function() {
	        $('#btn1').click( function() {
	          if( $(this).html() == '접수' ) {
	            $(this).html('완료').css("background-color","#68BF6B")
	          }
	        });
	      });
	      $(function() {
	        $('#can1').click( function() {
	            $("#btn1").remove();
	            $("#can1").css("background-color","#AEAEAE").html("접수 취소")
	        });
	      });
	    </script> 
	 
	 <jsp:include page="../commons/footer.jsp"/>   
	    
</body>
</html>
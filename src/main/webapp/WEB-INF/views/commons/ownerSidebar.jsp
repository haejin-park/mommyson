<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/mypage-sidebar.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
		<div class="side-all">
            <div class="side-1">
                <br>
                <form>
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/owner-logo.png" width="150px"><br> <hr>
                    <h3>ê¹ë¯¸ì ì¬ì¥ë</h3>
                    <br>
                    <h5>21-11-22 ~</h5>
                    <h6>ì ì¡ì  ì¬ì©ì¤</h6>
                    <h6>ë§ë£ì¼ : 22-2-22</h6>
                </form><br>

                <button style="background-color: rgba(248, 158, 145, 1); border: none; border-radius: 5px; color: white; width: 100px;">ì°ì¥íê¸°</button>
                <hr>
                <button id="button3" style="margin-top: 10px;">ìììì</button>
            </div>
            
            <script>
            $(function(){
                $("#button3").click(function(){
                  if($("#button3").html() == "ìììì"){
                    $(this).css("background-color","#777777").html("ììì ì§");
                  } else{
                    $(this).css("background-color","#F89E91").html("ìììì");
                  }
                });
            });
            </script>
            
            <div class="side-2" style="width: 300px; ">
              <nav id="sidebar" style="min-width: 295px; max-width: 295px;">
  
              <ul class="list-unstyled components">
                  <li>
                      <a href="#">ê°ê²ê´ë¦¬</a>
                      <a href="${ pageContext.servletContext.contextPath }/owner/ownerMain">ê°ê²ê´ë¦¬</a>
                  </li><hr>
                  <li class="active">
                            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">ìíê´ë¦¬</a><hr>
                            <ul class="collapse list-unstyled" id="homeSubmenu">
                                <li>
                                    <a href="../owners/product-regist.html">ìíë±ë¡</a>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/productManagement">ìíë±ë¡</a>
                                </li>
                                <li>
                                    <a href="../owners/productManagement.html">íë§¤ ìí ê´ë¦¬</a>
                                    <a href="${ pageContext.servletContext.contextPath }/owner/productManagement">íë§¤ ìí ê´ë¦¬</a>
                                </li>
                                <li>
                                    <a href="#">ì¤ëì ë©ë´</a>
                                </li>
                                <li>
                                    <a href="#">ì¤ëì í ì¸</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">ì£¼ë¬¸ê´ë¦¬</a><hr>
                            <ul class="collapse list-unstyled" id="pageSubmenu">
                                <li>
                                    <a href="#">ì£¼ë¬¸ì ì</a>
                                </li>
                                <li>
                                    <a href="#">ìë£ë ì£¼ë¬¸</a>
                                </li>
                            
                            </ul>
                        </li>
                        <li>
                            <a href="#">ì¿ í°ë°í</a>
                        </li><hr>
                        <li>
                            <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">ë§¤ì¶ë´ì­</a><hr>
                            <ul class="collapse list-unstyled 1" id="pageSubmenu1">
                                <li>
                                    <a href="#">ì¼ë³ ë§¤ì¶</a>
                                </li>
                                <li>
                                    <a href="#">ìë³ ë§¤ì¶</a>
                                </li>
                                <li>
                                    <a href="#">ì ì°</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false">ê³ ê°ê´ë¦¬</a><hr>
                            <ul class="collapse list-unstyled" id="pageSubmenu2">
                                <li>
                                    <a href="#">ë¦¬ë·°ê´ë¦¬</a>
                                </li>                                                            
                            </ul>
                        </li>
                        
                        <li>
                            <a href="#">íí´íê¸°</a>
                        </li>
              </ul>
          </nav>
      
      </div>
        <script>
        $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>
    </div>
</body>
</html>
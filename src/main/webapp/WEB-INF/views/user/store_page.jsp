<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../resources/css/colorset.css">
    <link rel="stylesheet" href="../../resources/css/store_page.css">
</head>
<body>
    
    <header class="header">
        <div class="headerTop">
            <div class="headerBody">
                    <a href="#"><img src="../../resources/images/mainlogo.png" style="width: 300px;"></a>
                <div class="bodyLeft">
                    <ul class="df_ul headerItem">
                        <li>
                          <a href="#">장바구니</a>
                        </li>
                        <li>
                          <a  href="#">로그인</a>
                        </li>
                        <li >
                          <a href="#">회원가입</a>
                        </li>
                        <li >
                          <a  href="#"><img src="../../resources/images/bell.png"></a>
                        </li>
                      </ul>
                </div>
            </div>
        </div>
    </header>

    <section>
        <div class="at-container" style="position: relative; margin-top: 200px; display: flex; flex-direction: column; align-items: center;">
            <div class="store_logo">
                <img src="../../resources/images/8 (1).png">
            </div>
            <div class="top">
                <!-- 찜, 평점 -->
                <div style="float: left;">
                    <div class="df-ac">
                        <button class="btn_none"><img src="../../resources/images/heart.png" style="width: 35px; height: 35px;"></button>&nbsp;&nbsp;<h4 style="margin: 0;"><strong>찜</strong> 35</h4>
                    </div>
                    <br>
                    <div>
                        <span class="df-ac">
                            <div style="display: flex; justify-content: space-between; width: 150px;">
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg> <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg> <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg> <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg> <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </div>
                            &nbsp;&nbsp;<h4 style="margin: 0">5.0</h4>
                        </span>
                    </div>
                </div>
                <!-- 가게정보, 전화, 신고 -->
                <div>
                    <div>
                        <a href="#"><h4><strong>가게정보</strong></h4></a>
                    </div>
                    <div style="display: flex; justify-content: space-between; width: 400px;">
                        <div><h4><strong>전화 :</strong>&nbsp;02-xxxx-xxxx</h4></div>
                        <div class="df-ac"><h5 style="margin: 0;">신고</h5>&nbsp;<button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" style="background-color: white; border: none;"><img src="../../resources/images/reportbtn.png" style="width: 40px; height: 40px;"></button></div>
                    </div>
                </div>
            </div>
            
            <!-- 신고 모달 -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">가게 신고</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">제목</label>
                        <input type="text" class="form-control" id="recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">내용</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    <button type="submit" class="btn btn-primary">신고하기</button>
                </div>
                    </form>
                </div>
            </div>
            </div>
            
            
            <div class="bottom">
                <div class="menu_box">
                    <h1 style="margin-bottom: 70px;">오늘만 할인</h1>
                    <!-- 세일 메뉴 div -->
                    <div class="sail_menu">
                        <div class="menu_img">
                            <img src="../../resources/images/dooboo.png">
                        </div>
                        <div>
                            <h3 style="margin-bottom: 20px;">두부 무침</h3>
                            <p style="width: 450px;">두부 무침이 이렇게 상큼할 수 있다??!<br>
                                지금 바로 맛을 보세요<br>
                                헤어나올 수 없습니다.
                            </p>
                        </div>
                        <div>
                            <h3 style="margin-top: 100px;">1000 원</h3>
                        </div>
                        <input type="hidden" value="메뉴코드">
                    </div>
                    <div class="sail_menu">
                        <div class="menu_img">
                            <img src="../../resources/images/odang.png">
                        </div>
                        <div>
                            <h3 style="margin-bottom: 20px;">오뎅 볶음</h3>
                            <p style="width: 450px;">밥 먹을 때 이것만큼 간편하고 맛있는게 없죠!<br>
                                지금 바로 구입하세요!
                            </p>
                        </div>
                        <div>
                            <h3 style="margin-top: 100px;">1500 원</h3>
                        </div>
                        <input type="hidden" value="메뉴코드">
                    </div>
                    <div class="sail_menu">
                        <div class="menu_img">
                            <img src="../../resources/images/salad.png">
                        </div>
                        <div>
                            <h3 style="margin-bottom: 20px;">계란 샐러드</h3>
                            <p style="width: 450px;">혹시 다이어트 중이신가요??
                                맛과 저칼로리 모두 챙긴 최고의 반찬!!
                            </p>
                        </div>
                        <div>
                            <h3 style="margin-top: 100px;">2500 원</h3>
                        </div>
                        <input type="hidden" value="메뉴코드">
                    </div>
                    <br><br>

                    <!-- 반찬 종류 div -->
                    <h1 style="margin-bottom: 70px;">반찬 종류</h1>
                    <div class="sail_menu" style="align-items: center;">
                        <div><h3><strong>진미채</strong></h3></div>
                        <div><p>오징어야.. 넌 어찌 그리 맛있게 태어났느냐..</p></div>
                        <div><h3 style="margin-top: 100px;">4000 원</h3></div>
                        <input type="hidden" value="메뉴코드">
                    </div>
                    <div class="sail_menu" style="align-items: center;">
                        <div><h3><strong>미역줄기</strong></h3></div>
                        <div><p>우리가 알던 밥경찰이 아니다!!</p></div>
                        <div><h3 style="margin-top: 100px;">2000 원</h3></div>
                        <input type="hidden" value="메뉴코드">
                    </div>
                    <div class="sail_menu" style="align-items: center;">
                        <div><h3><strong>쪽 갈비</strong></h3></div>
                        <div><p>이거 하나 뜯으면 죽어도 여한이 없다!</p></div>
                        <div><h3 style="margin-top: 100px;">12000 원</h3></div>
                        <input type="hidden" value="메뉴코드">
                    </div>

                    <!-- 리뷰 -->
                    <div style="display: flex; justify-content: space-between; align-items: center; width: 100%; padding: 0px 40px 0px 40px;">
                        <h1 style="margin-bottom: 70px; border-bottom: 1px solid black;">리뷰</h1>
                        <a href="#">더보기 ></a>
                    </div>
                    <div class="review">
                        <!-- 리뷰 사진 -->
                        <div class="review_img">
                            <img src="../../resources/images/dooboo.png">
                        </div>
                        <!-- 컨텐츠 -->
                        <div class="review_contents">
                            <div>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </div>
                            <div class="review_text">
                                <p>
                                    와 진짜 제가 먹어본 두부 무침중에 제일 고소하고 맛<br>
                                    있네요 감사히 잘먹었습니다. 
                                </p>
                            </div>
                            <div class="review_name" style="display: flex; justify-content: space-between;">
                                <p>주문한 반찬 :두부 무침</p>
                                <p>작성자  user02</p>
                            </div>
                        </div>
                    </div>
                    <div class="review">
                        <!-- 리뷰 사진 -->
                        <div class="review_img">
                            <img src="../../resources/images/odang.png">
                        </div>
                        <!-- 컨텐츠 -->
                        <div class="review_contents">
                            <div>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </div>
                            <div class="review_text">
                                <p>
                                    배송시간을 항상 잘맞춰주셔서 너무 좋아요!! 
                                </p>
                            </div>
                            <div class="review_name" style="display: flex; justify-content: space-between;">
                                <p>주문한 반찬 : 오뎅 볶음</p>
                                <p>작성자  user03</p>
                            </div>
                        </div>
                    </div>
                    <div class="review">
                        <!-- 리뷰 사진 -->
                        <div class="review_img">
                            <img src="../../resources/images/salad.png">
                        </div>
                        <!-- 컨텐츠 -->
                        <div class="review_contents">
                            <div>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </div>
                            <div class="review_text">
                                <p>
                                    간이 딱 제 입맛에 맞고 야채가 많이 들어가서 너무 좋네요!<br>
                                    감사히 잘먹었습니다!
                                </p>
                            </div>
                            <div class="review_name" style="display: flex; justify-content: space-between;">
                                <p>주문한 반찬 : 계란 샐러드</p>
                                <p>작성자  user01</p>
                            </div>
                        </div>
                    </div>

                    <!-- 페이지네이션 -->
                    <div>
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
        <c:if test="${ sessionScope.loginMember != null }">
	       	<div id="cart_logo">
	       		<button onclick="location.href='${ pageContext.servletContext.contextPath }/user/cart'"><img src="${ pageContext.servletContext.contextPath }/resources/images/cart_logo.png"></button>
	       	</div>
      	</c:if>
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
            <img src="../../resources/images/ft_img01.png" alt="소비자중심경영">
            <img src="../../resources/images/ft_img02.png" alt="정보보호 관리체계 인증">
            <img src="../../resources/images/kakaopay.png" alt="KakaoPay" class="kakaopay">
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
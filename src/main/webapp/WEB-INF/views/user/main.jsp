<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>마미손맛</title>

    <script src="https:/cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/main.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/slick.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/slick-theme.css">
    <script src="${ pageContext.servletContext.contextPath }/resources/js/slick.min.js"></script>
</head>
<body>
    
    <jsp:include page="../commons/header.jsp"></jsp:include>
	
    <section>
        <div style="width: 100%; height: 450px;">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">

                    <img src="${ pageContext.servletContext.contextPath }/resources/images/main_label.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/baner2.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/baner1.jpg" class="d-block w-100" alt="...">
                  </div>
                </div>
               <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </button>
              </div>
        </div>
        
        <div class="container">

            <div style="margin : 50px;">
                <span style="font-size: 14pt;">동네 설정&nbsp;</span>
                <select name="location" id="location">
                    <option value="1">마포구</option>
                </select>
            </div>
            <!-- 슬라이더 세팅 -->
            <script>
                $(document).ready(function(){
                $('.menu_bar').slick({
                    infinite : true,
                    slidesToScroll : 4,
                    slidesToShow : 4,
                    prevArrow : "<button type='button' class='pinkbtn' style='position: absolute; left: 0; top: 30%; z-index: 1;'>←</button>",
                    nextArrow : "<button type='button' class='pinkbtn' style='position: absolute; right: 0; top: 30%; z-index: 1;'>→</button>"
                });
                });
            </script>

            <!-- 오늘의 추천 -->
            <div>
                <div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
                    <h3>오늘의 추천</h3>
                    <a href="#">더보기 ></a>
                </div>
                <div class="col-sm-12">
                    <div class="menu_bar" align="center">
                        <div class="recommend-img">

                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>현기야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">

                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <p style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg><strong>승우야밥묵자</strong></p>
                            </div>
                        </div>
                        <div class="recommend-img">

                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>혜주야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>주환아밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>윤제야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>해진아밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>준희야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre> <strong>5,440원</strong></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>현기야밥묵자</strong>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 우리동네 인기 맛집 -->
            <div style="margin-bottom: 60px;">
                <div style="display: flex; justify-content: space-between; margin: 90px 0px 60px 0px;">
                    <h3>우리동네 인기 맛집</h3>
                    <a href="#">더보기 ></a>
                </div>
                <div class="col-sm-12">
                    <div class="menu_bar" align="center">
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
                            <div class="store_name">
                            <a href="#" class="menu_name">토토반찬</a>
                            <div class="menu_div2">
                                <pre style="font-size: 10pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg> <strong style="margin-right: 5px;">4.9</strong><span style="color: #616161;">최근리뷰 500</span></pre>
                            </div>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/7.png">
                            <a href="#" class="menu_name">장모님해산물</a>
                            <div class="menu_div2">
                                <pre style="font-size: 10pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                  </svg> <strong style="margin-right: 5px;">4.3</strong><span style="color: #616161;">최근리뷰 800</span></pre>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/7 (1).png">
                            <a href="#" class="menu_name">혜주야밥무라</a>
                            <div class="menu_div2">
                                <pre style="font-size: 10pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                  </svg> <strong style="margin-right: 5px;">4.7</strong><span style="color: #616161;">최근리뷰 600</span></pre>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/002.png">
                            <a href="#" class="menu_name">현기야밥묵자</a>
                            <div class="menu_div2">
                                <pre style="font-size: 10pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                  </svg> <strong style="margin-right: 5px;">4.5</strong><span style="color: #616161;">최근리뷰 100</span></pre>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/8 (1).png">
                            <a href="#" class="menu_name">꼬꼬닥</a>
                            <div class="menu_div2">
                                <pre style="font-size: 10pt; display: flex; align-items: center;"><svg style="color: #EFCA45;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                  </svg> <strong style="margin-right: 5px;">4.4</strong><span style="color: #616161;">최근리뷰 200</span></pre>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 핫 키워드 -->
        <div>
            <div id="hot" style="padding: 0 200px;">
                <div class="keywords"><img style="width: 22px; height: 32px;" src="${ pageContext.servletContext.contextPath }/resources/images/fire.png">&nbsp;&nbsp;<h4>핫 키워드</h4></div>
                <div class="tags">
                    <div class="hot_tag"><a href="#" style="text-align: center;"><strong>#어린이 반찬</strong></a></div>                  
                    <div class="hot_tag"><a href="#" style="text-align: center;"><strong>#엄마 반찬</strong></a></div>                  
                    <div class="hot_tag"><a href="#" style="text-align: center;"><strong>#제철 반찬</strong></a></div>                  
                    <div class="hot_tag"><a href="#" style="text-align: center;"><strong>#대용량 반찬</strong></a></div>                  
                    <div class="hot_tag"><a href="#" style="text-align: center;"><strong>#냉동 반찬</strong></a></div>                  
                    <div class="hot_tag"><a href="#" style="text-align: center;"><strong>#묶음 반찬</strong></a></div>                  
                </div>
            </div>
        </div>

        <div class="container">    
            <!-- 오늘만 할인 -->
            <div>
                <div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
                    <h3>오늘만 할인</h3>
                    <a href="#">더보기 ></a>
                </div>
                <div class="col-sm-12">
                    <div class="menu_bar" align="center">
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>현기야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <p style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg><strong>승우야밥묵자</strong></p>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>혜주야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>주환아밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>윤제야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>해진아밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>준희야밥묵자</strong>
                            </div>
                        </div>
                        <div class="recommend-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/menu1.jpg">
                            <div class="menu_div">
                                <a href="#" class="menu_name">사리곰탕(300g/1인분)</a>
                                <pre><strong>5,440원</strong>  <label style="text-decoration: line-through; color: lightgray;">6,800원</label></pre>
                                <strong style="font-size: 10pt; display: flex; align-items: center;"><svg style="margin-right: 5px;" xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
                                    <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>현기야밥묵자</strong>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 신규 반찬 가게 -->
            <div style="margin-bottom: 60px;">
                <div style="display: flex; justify-content: space-between; margin: 90px 0px 60px 0px;">
                    <h3>신규 반찬 가게</h3>
                    <a href="#">더보기 ></a>
                </div>
                <div class="col-sm-12">
                    <div class="menu_bar" align="center">
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/8.png">
                            <a href="#" class="menu_name"><h6>토토반찬</h6></a>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/7.png">
                            <a href="#" class="menu_name"><h6>장모님해산물</h6></a>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/7 (1).png">
                            <a href="#" class="menu_name"><h6>혜주야밥무라</h6></a>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/002.png">
                            <a href="#" class="menu_name"><h6>현기야밥묵자</h6></a>
                        </div>
                        <div class="recommend-img">
                            <img class="store_logo" src="${ pageContext.servletContext.contextPath }/resources/images/8 (1).png">
                            <a href="#" class="menu_name"><h6>꼬꼬닥</h6></a>
                        </div>
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
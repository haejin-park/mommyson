<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <div class="navbar" >
      <div class="dropdown">
        <button class="dropbtn" style="font-size: 20px;">전체 카테고리 
          <i class="fa fa-caret-down" style="padding-left: 20px;"></i>
        </button>
        <div class="dropdown-content"> 
          <div class="row">
            <div class="column">
              <a href="#">무침</a>
              <a href="#">볶음</a>
              <a href="#">조림</a>
              <a href="#">김치/절임/젓갈</a>
            </div>
            <div class="column">
              <a href="#">전/생선</a>
              <a href="#">국/찌개/탕</a>
              <a href="#">메인요리</a>
              <a href="#">곡류/양념</a>
            </div>
            <div class="column">
              <a href="#">어린이 반찬</a>
              <a href="#">부모님 반찬</a>
              <a href="#">제철 반찬</a>
            </div>
            <div class="column">
              <a href="#">대용량 반찬</a>
              <a href="#">묶음 반찬</a>
              <a href="#">냉동 반찬</a>
              <a href="#">할인 반찬</a>
            </div>
          </div>
        </div>
      </div> 
       <a href="#home">오늘의 추천</a>
       <a href="#news">우리동네 인기 맛집</a>
       <a href="#news">오늘 할인</a>
       <a href="#news">이벤트</a>
       <div class="search-container"></div>
       <form action="#" method="get">
        <input type="text" placeholder="Search.." name="search">
        <button type="submit" id="but"><i class="fa fa-search" style="size: 50px;"></i></button>
       </form>
      </div>
      </div>

    <section>
        <div class="at-container" style="width: 80%;">
            <div class="main_box">
                <h1 align="center">리뷰 작성</h1>
                <div class="sub_box">
                    <h3>사진</h3>
                    <div id="review_pic">
                        <img src="../../resources/images/no-image.png" id="review_img">
                    </div>
                    <div style="padding-top: 200px;">
                        <button type="button" class="pink_btn" data-toggle="modal" data-target="#exampleModal">
                            사진등록
                        </button>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">
                                    <img src="" id="preview-image" style="width: 400px;">
                                    <hr>
                                    <input type="file" id="input-image">
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="pink_btn" data-dismiss="modal">취소</button>
                                  <button type="button" class="pink_btn" id="save_img">저장</button>
                                </div>
                                <script>
                                    // 이미지 미리보기
                                    function readImage(input) {

                                        if(input.files && input.files[0]) {

                                            const reader = new FileReader()

                                            reader.onload = e => {
                                                const previewImage = document.getElementById("preview-image")
                                                previewImage.src = e.target.result
                                            }

                                            reader.readAsDataURL(input.files[0])
                                        }
                                    }

                                    const inputImage = document.getElementById("input-image")
                                    inputImage.addEventListener("change", e => {
                                        readImage(e.target)
                                    })

                                    // 저장 버튼 클릭 시 리뷰 사진 등록 (ajax로 수정해야함)
                                    $('#save_img').on('click',function() {
                                        let img = $('#preview-image').attr('src')
                                        $('#review_img').attr('src',img);
                                        $('#exampleModal').modal('hide');
                                    })
                                </script>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub_box">
                    <div style="display: flex; justify-content: space-between; width: 280px; margin: 50px 0;">
                        <h3>별점</h3>
                        <div id="star_box">
                            <button value="1">
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </button>
                            <button value="2">
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </button>
                            <button value="3">
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </button>
                            <button value="4">
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </button>
                            <button value="5">
                                <svg style="color: #EFCA45;" xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </button>
                            <input type="hidden" id="star" value="5">
                        </div>
                    </div>
                    <div></div>
                    <script>
                        $('#star_box > button').on('click',function(e) {
                            // e.currentTarget.nextAll().css('color','lightgray');
                            console.log(e.currentTarget);
                            $(event.currentTarget).nextAll().children().css('color','lightgray');
                            $(event.currentTarget).children().css('color','EFCA45');
                            $(event.currentTarget).prevAll().children().css('color','#EFCA45');
                            $('#star').val($(event.currentTarget).val())
                        })
                    </script>
                </div>
                <div class="sub_box" style="margin-bottom: 100px;">
                    <div style="display: flex; justify-content: space-between; width: 100%;">
                        <h3>내용</h3>
                        <textarea name="contents" id="contents" cols="90" rows="10" placeholder="리뷰를 작성해주세요!" style="resize: none; padding: 10px;"></textarea>
                    </div>
                </div>
                <div class="sub_box" style="margin-bottom: 100px; align-items: center; width: 36%;">
                    <div style="display: flex; justify-content: space-between; width: 100%;">
                        <button class="pink_btn" style="background: #AEAEAE;">취소</button>
                        <button class="pink_btn">완료</button>
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
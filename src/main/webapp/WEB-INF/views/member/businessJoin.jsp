<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사업자 회원가입</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../../resources/css/user/businessJoin.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/colorset.css">
  

</head>
<body>
    <br><br>
    <h1 style="text-align: center;">사업자 회원가입</h1>
    <br>

    <div class="container1" >
        <div class="image">
            <img class=logo src="../../resources/logoimage/logo.png">
        </div>
        <div class="text">
            <form onsubmit="return validate();">
            <!-- 아이디가 이미 있을 경우 이미 존재하는 아이디입니다. 다른 아이디를 입력해주세요.(영어와 숫자를 사용하여 6~8글자를 입력해주세요.) -->
            <input type="text" class="input1" id="id" placeholder="아이디는 [영문,숫자] 4~12 ">
            <button type="submit" id="idcheck">중복확인</button>
            <br><br>
            <!-- 비밀번호가 일치하지 않을 경우 비밀번호가 존재하지않습니다. 비밀번호를 다시 입력해주세요.  -->
            <input type="text" class="input1" id="pwd1" placeholder="비밀번호는 [영문,숫자,특수기호] 4~12글자">
            <br><br>
            <input type="password" class="input1" id="pwd2" placeholder="비밀번호 확인">
            <br><br>
            <input type="text" class="input1" id="name" placeholder="대표자명을 입력해주세요">
            <br><br>
            <input type="text" class="input1" id="account" placeholder="계좌번호를 입력해주세요">
            <br><br>
            <input type="text" class="input1" id="phone" placeholder="전화번호를 입력해주세요">
            <br><br>
            <!-- 이메일주소가 올바르지 않을경우 @를 포함하여 이메일주소를 올바르게 입력해주세요 -->
            <input type="email" class="input1" id="email" placeholder="이메일을 입력해주세요">
            <button type="submit" id="button">전송</button>
            <br><br>
            <input type="text" class="input1" id="code" placeholder="인증번호를 입력해주세요">
            <button type="button" id="button">확인</button>
            <br><br>
            <input type="text" class="input1" name="zipCode" id="zipCode" placeholder="우편번호를 입력해주세요" readonly>
            <input type="button" id="searchZipCode" value="검색">
            <br><br>
            <input type="text" class="input1" id="address1" placeholder="주소를 입력해주세요" readonly>
            <br><br>
            <input type="text" class="input1" id="address2" placeholder="상세주소를 입력해주세요">
            <br><br>
            <input type="text" class="input1" id="companyName" placeholder="상호명을 입력해주세요">
            <br><br>
            <p>상호 대표 이미지 &nbsp; <input type="file" id=companyImage></p>
            <p>사업자등록증 &nbsp; &nbsp; &nbsp; &nbsp;<input type="file" id="businessLicense"></p>
            <br>
            <!-- 모달 띄우기 -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop"id="terms">약관 보기</button> 
            <br>

            <!--약관 Modal -->
            <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">이용 약관 </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <div class="modal-body">    
                            <p>
                                Mommysonmat 서비스는 개인정보를 다음의 목적을 위해 처리합니다. <br>
                                처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.<br><br>
                                
                                ①Mommysonmat 서비스는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 <br>
                                개인정보를 수집시에 동의 받은 개인정보 보유, 이용기간 내에서 개인정보를 처리, 보유합니다.<br><br>
                                ②Mommysonmat 서비스는 회원가입, 회원 식별, 서비스 이용 등을 위해 아래와 같이 개인정보를 수집ᆞ이용합니다.<br><br>
                                
                                    수집 목적: 회원 식별 및 Mommysonmat 서비스 이용 <br>
                                    수집 항목:아이디, 비밀번호, 전화번호, 이메일, 우편번호, 주소, 상호, 상호 이미지, 사업자등록증 <br>
                                    수집 근거 : 정보주체의 동의 <br>
                                    수집 기간 : 회원탈퇴 시 까지<br><br>
                                
                                ③ 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체 없이 파기합니다. <br>
                                단, 법령에서 일정기간 의무를 부과하는 경우에는 해당 기간 동안 보관할 수 있습니다.<br><br>
                                ④ Mommysonmat  서비스를 이용할 때 자동적으로 여러분이 사용하는 장치의 유형, 운영체제 버전, 장치 고유 식별번호를 수집합니다. <br>
                                그 외에도 Mommysonmat 서비스를 이용하는데 필요한 다른 정보를 수집할 수 있으나 회원의 잔디 서비스를 이용하는 목적 용도로만 이용되며 그 외의 목적으로는 이용되지 않습니다.<br><br>
                            
                                귀하께서는 본 안내에 따른 개인정보 수집에 대하여 거부를 하실 수 있는 권리가 있습니다. <br>
                                본 개인정보 수집에 대하여 거부하시는 경우, 본인확인 등 신원확인이 되지 않음에 따라 Mommysonmat 서비스를 사용 하실 수 없습니다.
                            </p>
                        <br>
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="ok">확인</button>
                        </div>
                  </div>
                </div>
            </div> 
            <input type=checkbox id="all">
            <span>약관 전체 동의<span> 
            <br>
            <input type=checkbox name="checkbox">
            <span>만 14세 이상<strong>(필수)</strong></span>
            <br>
            <input type=checkbox name="checkbox">
            <span>개인정보 처리방침<strong>(필수)</strong></span>
            <br>
            <input type=checkbox name="checkbox">
            <span>서비스 이용 약관<strong>(필수)</strong></span>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <button  type="submit" id="button">가입하기</button>
            <button type="reset" id="goJoin">취소하기</button>
            <br><br>
        </form>        
        </div>
    </div>
    <footer class="at-container" style="margin:0 auto">
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
            <p>대표 : 유승제 / 주소 : 서울특별시 서초구 서초대로78길 48 송림빌딩 13층</p>
            <p>사업자번호 : 123-45-67890 / 통신판매업신고 : 제 2021-서울-503호 / 개인정보 정책 및 담당 : 김준희</p>
            <p>대표번호 : 1588-0000 / 팩스번호 : 02-123-1234 / 이메일 : mommysonmat@greedy.com</p>
            <p>ⓒ SSEULEODAMJO CORP. All Rights Reserved.</p>
        </div>
        <div class="manager_center">
            <h4>고객센터</h4>
            <div class="callNum">
                <img src="../../resources/images/callImg.png" alt="call">
                <span>1644 - 1234</span>    
            </div>
            <p>평일 10:00~18:50</p>
            <p>점심시간 12:00~13:00</p>
            <p>(주말과 공휴일은 휴무입니다.)</p>
        </div>
    </footer>
        
    
    <script>

        //// 아이디 중복확인
        // $('#id').on('keyup', function(){
        //     const name= $('#id').val();
        //     $.ajax({
        //         url: 
        //         data:{name : name},
        //         type:"POST",
        //         success:function(data){
        //             if(data == 0){
        //                 $('#idcheck').text('사용 가능한 아이디 입니다.');
        //             } else {
        //                 4('#idcheck').text('중복된 아이디 입니다.');
        //             }
        //         },
        //         error : function(xhr, status, error){

        //         }
        //     });
        // });


        function validate(){
            var id = document.getElementById("id");
            var pwd1 = document.getElementById("pwd1");
            var pwd2 = document.getElementById("pwd2");
            var name = document.getElementById("name");
            var account = document.getElementById("account");
            var phone = document.getElementById("phone");
            var email = document.getElementById("email");
            var code = document.getElementById("code");
            var zipCode = document.getElementById("zipCode");
            var address1 = document.getElementById("address1");
            var address2 = document.getElementById("address2");
            var companyName = document.getElementById("companyName");
            var companyImage = document.getElementById("companyImage");
            var businessLicense = document.getElementById("businessLicense");
            var all = document.getElementById("all");
        
            if(id.value == ""){
                alert("아이디를 입력해주세요.")
                id.focus();
                return false;
            }

            if(!chk(/^[a-z][a-z\d]{3,11}$/,id,"아이디는 [영문,숫자] 4~12")){
                return false;
            }

            if(!chk(/[0-9]/,id,"아이디에 숫자 하나 이상 포함")){
                return false;
            }


            if(pwd1.value == ""){
                alert("비밀번호를 입력해주세요.")
                pwd1.focus()
                return false;
            }

            
            if(!chk(/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{4,12}$/,pwd1, "숫자+영문자+특수문자 조합으로 4~12글자를 입력해주세요.")){            
	        return false;
            }

            if(pwd1.value != pwd2.value){
                alert("비밀번호를 확인해주세요.")
                pwd2.focus()
                return false;
            }

            if(name.value == ""){
                alert("이름을 입력해주세요.")
                name.focus()
                return false;
            }

            if(!chk(/^[가-힣]{2,}$/,name,"이름은 한글로 2글자 이상을 넣으세요")){
                return false;
            }

            var reg = /^[0-9]+/g;
            if(!reg.test(account.value)) {
                alert("계좌번호는 숫자만 입력할 수 있습니다.")
                account.focus();
                return false;
            }

            if(phone.value == ""){
                alert("전화번호를 입력해주세요.")
                phone.focus()
                return false;
            }

            var reg = /^[0-9]+/g;
            if(!reg.test(phone.value)) {
                alert("전화번호는 숫자만 입력할 수 있습니다.")
                phone.focus();
                return false;
            }

            if(email.value == ""){
                alert("이메일을 입력해주세요.")
                email.focus()
                return false;
            }

            if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,email,"이메일 형식에 어긋납니다.")){
                return false;
            }
                
            if(code.value ==""){
                alert("인증 번호를 입력해주세요.")
                code.focus()
                return false;
            }
            if(zipCode.value == ""){
                alert("우편번호 입력해주세요.")
                zipCode.focus()
                return false;
            }
            if(address1.value == ""){
                alert("주소를 입력해주세요.")
                address1.focus()
                return false;
            }
            if(address2.value == ""){
                alert("상세주소를 입력해주세요.")
                address2.focus()
                return false;
            }
            if(companyName.value == ""){
                alert("상호를 입력해주세요.")
                companyName.focus()
                return false;
            }
            if(companyImage.value == ""){
                alert("상호 대표 이미지를 첨부해주세요.")
                companyImage.focus()
                return false;
            }
            if(businessLicense.value == ""){
                alert("사업자 등록증을 첨부해 주세요.")
                businessLicense.focus()
                return false;
            }

            if(all.checked == ""){
                alert("약관 전체 동의를 체크해주세요.");
                agree.focus();
                return false;
            }

        }

        function chk(re, ele, msg){
                if(!re.test(ele.value)){
                    alert(msg);
                    ele.select();
                    return false;
                }
                return true;
        }
    </script>
    
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
            $searchZipCode.onclick = function() {
            
                //다음 우편번호 검색 창을 오픈하면서 동작할 콜백 메소드를 포함한 객체를 매개변수로 전달한다.
                new daum.Postcode({
                    oncomplete: function(data){
                        //팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
                        document.getElementById("zipCode").value = data.zonecode;
                        document.getElementById("address1").value = data.address;
                        document.getElementById("address2").focus();
                    }
                }).open();
            }

	</script>

    <script>
		const $goJoin = document.getElementById("goJoin");
            $goJoin.onclick = function() {
                location.href = "${ pageContext.servletContext.contextPath }";
            }

    </script>

    <script>

        // 약관 전체 동의 체크 박스를 선택하면 전체 체크 박스가 선텍 된다
        $("#all").on("change",function(){
            if($("#all").is(":checked")){
                $("input[name=checkbox]").prop("checked",true);
            } else {
                $("input[name=checkbox]").prop("checked",false);
            }
        });

        // 이용약관 동의 모달창
        $('#terms').click(function(e){
            $('#staticBackdrop').modal('show');
            e.preventDefault();
        });
        $('#ok').click(function(e){
            $('#staticBackdrop').modal('hide');
        });

    </script>


</body>
</html>
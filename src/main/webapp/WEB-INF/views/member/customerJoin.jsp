<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사용자 회원가입</title>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>   
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/user/customerJoin.css">
    <link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/colorset.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>
<body>
    <br><br>
    <h1>사용자 회원가입</h1>
    <br>
    <div class="container1" >
        <div class="image">
            <img class=logo src="${ pageContext.servletContext.contextPath }/resources/images/logo.png">
        </div>
        <div class="text">
            <form name="join_form" id="join_form" method="POST" onsubmit="return validate();"> 
            <input type="text" class="input1" name="memId" id="id" placeholder="아이디는 [영문,숫자] 4~12글자">
            <button type="button" name="idChk" id="idChk" onclick="idChk1()" value="N">중복확인</button>
            <br><br>
            <input type="password" class="input1" name="memPwd" id="pwd1" placeholder="비밀번호는 [영문,숫자,특수기호] 4~12글자">
            <br><br>
            <input type="password" class="input1"  id="pwd2" placeholder="비밀번호 확인">
            <br><br>
            <input type="text" class="input1" name="user.name" id="name" placeholder="이름을 입력해주세요">
            <br><br>
            <input type="text" class="input1" name=nickname id="nickname" placeholder="닉네임을 입력해주세요">
            <br><br>
            <input type="text" class="input1" name="phone" id="phone" placeholder="전화번호를 입력해주세요">
            <br><br>
            <input type="email" class="input1" name="email" id="email" placeholder="이메일을 입력해주세요">
            <button type="button" name="emailChk" id="emailChk" onclick="emailChk1()" value="N"
            style=" height:40px; width:100px; border-radius: 9px; background-color:rgb(247, 170, 145);">중복확인</button>
            <button  type="submit" class ="submit"  name="submit" id="submit">전송</button>
            <br><br>
            <input type="number" class="code" name="code" id="code" placeholder="인증번호를 입력해주세요">
            <br>
            <div class = "clearfix"></div>
            <span id="mail_check_input_box_warn"></span>
            <br>
            <input type="text" class="input1" name="postCode" id="zipCode" placeholder="우편번호를 입력해주세요" readonly>
            <input type="button" id="searchZipCode" value="검색">
            <br><br>
            <input type="text" class="input1" name="address" id="address1" placeholder="주소를 입력해주세요" readonly>
            <button type="button" id="button" onclick="locationCode1()">지역코드</button>
            <input type="hidden" name="locationCode" id="locationCode" value="N" > 
            <br><br>
            <input type="text" class="input1" name="dAddress" id="address2" placeholder="상세주소를 입력해주세요" required>
            <br><br>
        
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
            <!-- <input hidden="hidden"/> -->
            <input type=checkbox id="all" name="all">
            <span>약관 전체 동의</span> 
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
            <button type="submit" id="joinButton"  style="height:40px; width:100px; border-radius: 9px; background-color:rgb(247, 170, 145);">가입하기</button>
            <button type="reset" id="goJoin">취소하기</button>
            <br><br>

   		    </form>
        </div>
    </div>
    <jsp:include page="../commons/footer.jsp"/>
   
     <script> 
     
     /* =========================== 회원가입 정규식 ========================== */
        function validate(){
            var id = document.getElementById("id");
            var idChk = document.getElementById("idChk");
            var pwd1 = document.getElementById("pwd1");
            var pwd2 = document.getElementById("pwd2");
            var name = document.getElementById("name");
            var nickName = document.getElementById("nickname");
            var phone = document.getElementById("phone");
            var email = document.getElementById("email");
            var code = document.getElementById("code");
            var zipCode = document.getElementById("zipCode");
            var address1 = document.getElementById("address1");
            var address2 = document.getElementById("address2");
            var locationCodeButton = document.getElementById("locationCode");
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

            if(idChk.value =='N'){
	            alert("중복확인을 클릭해주세요.");
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
            

            if(nickname.value == ""){
                alert("닉네임을 입력해주세요.")
                nickname.focus()
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

            
            if(nickName.value == ""){
                alert("닉네임을 입력해주세요.")
                nickName.focus()
                return false;
            }


            if(zipCode.value == ""){
                alert("우편번호 검색해주세요.")
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

            
            if(locationCode.value == 'N'){
	            alert("지역코드를 클릭해주세요.");
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

            if(code.value == ""){
                alert("인증 번호를 입력해주세요.")
                code.focus()
                return false;
            }
            

            if(all.checked == false){
                alert("약관 전체 동의를 체크해주세요.");
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

        
        
        /* ==================== 아이디 중복확인 ===================*/
        function idChk1(){
        	let id = $('#id').val();
        	$.ajax({
        		url : "${ pageContext.servletContext.contextPath }/member/idChk",
        		type : "post",
        		data : {
        			id : id
        		},
        		async: false,
        		success:function(data){
        			if(data == '1'){
        				alert("중복된 아이디 입니다.");
        			} else if(data == '0') {
        				$('#idChk').attr("value","Y");
        				alert("사용가능한 아이디 입니다.");
        			}
        			
        		},
        		error:function(error){
        			alert(error);
        		}
        	});
            
        }
        
        /* ============================= 이메일 중복확인  =========================== */
        function emailChk1() {
        	let email = $('#email').val();
    		$.ajax({
    			url : "${ pageContext.servletContext.contextPath }/member/emailChk",
    			type : "post",
    			data : {
    				email : email
    			}, 
    			async : false,
    			success : function(data){
    				console.log("data : " + data);  
    				if(data == '1'){
    					alert("중복된 이메일 입니다.");
    				} else if(data == '0'){
    					$('#emailChk').attr("value", "Y");
    					alert("사용가능한 이메일 입니다.");
    				}
    			},
    			error : function(error){
    				alert(error);
    			}
    		});
    		
        }
        
        
		/* ===================== 이메일 전송 ====================== */
		
        var code =""; /* 이메일전송 인증번호 저장을 위한 코드 */
        
        $(".submit").click(function(){
    		
    		var email = $("#email").val(); /* 입력한 이메일 */
    		$.ajax({
    			type:"POST",
    			url:"mailCheck?email=" + email,
    			success:function(data){  /* memberController에서 try catch문 주석하고 data잘들어오는지 실행해보기 */
    				console.log("data : " + data);  
    				code = data;
    			}
    		});
    	});
        
        
      
        
         /* =====================인증번호 비교==================== */
         /* (해당 메서드는 인증번호 입력란에 데이터를 입력한 뒤 마우스로 다른 곳을 클릭 시에 실행이 됩니다.) 
	        일치할 경우 span태그에 "인증번호가 입치합니다."라는 문구와 class속성이 correct(초록색)로 변경됨.  
			불일치할 경우 span태그에 "인증번호를 다시 확인해주세요."라는 문구와 class속성이 incorrect(빨간색)로 변경됨. 
        */
        
        $(".code").blur(function(){
        	var inputCode = $(".code").val(); /* 입력코드 */
			var checkResult = $("#mail_check_input_box_warn"); /* 비교결과 */
			
			if(inputCode == code){
				checkResult.html("인증번호가 일치합니다.");
				checkResult.attr("class", "correct");
			} else {
				checkResult.html("인증번호를 다시 확인해주세요.");
				checkResult.attr("class", "incorrect")
				
			}	
			
        });

         /* =========================== 우편번호  검색 ============================= */
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

	/* ======================== 지역 코드 ============================= */ 
    function locationCode1(){
    	let address1 = $('#address1').val();
    	$.ajax({
    		url : "${ pageContext.servletContext.contextPath }/member/locationCode",
    		type : "post",
    		data : {
    			address1 : address1
    		},
    		async: false,
    		success:function(data){
    			$("#locationCode").val(data);/* 서블릿에서 가져온 로케이션코드 밸류에 넣기  */
    		},
    		error:function(error){
    			alert(error);
    		}
    	
    	});
    }

		
        /* ============ 약관 전체 동의 체크 박스를 선택하면 전체 체크 박스가 선택됨 =========== */ 
        $("#all").on("change",function(){
            if($("#all").is(":checked")){
                $("input[name=checkbox]").prop("checked",true);
            } else {
                $("input[name=checkbox]").prop("checked",false);
            }
        });

        /* ======================== 이용약관 동의 모달창 =====================*/
        $('#terms').click(function(e){
            $('#staticBackdrop').modal('show');
            e.preventDefault();
        });
        $('#ok').click(function(e){
            $('#staticBackdrop').modal('hide');
        });
        
        

  
	/* ==================== 약관체크 안할경우 가입 불가 ==================== */
	$(document).ready(function(){
		$("#joinButton").click(function(){
 			/* if($("#all").checked== false){
				alert("약관을 다 체크해야함");
 				event.preventDefault();
			} else */{ 
			$("#join_form").attr("action", "${ pageContext.servletContext.contextPath }/member/customerJoin2");
			
			$("#join_form").submit();
		 	} 
			
		});
	});
	

	/* ================= 회원가입 페이지로 돌아가기 =================*/
		const $goJoin = document.getElementById("goJoin");
            $goJoin.onclick = function() {
                location.href = "${ pageContext.servletContext.contextPath }/member/join";
            }

  
    </script>


</body>
</html>
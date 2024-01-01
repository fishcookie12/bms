<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertMember</title>
<script>
 var validateMemberId = false;

	$().ready(function() {
		
		$("#btnOverlapped").click(function(){
		    var memberId = $("#memberId").val();
		    if (memberId == '') {
		   		alert("ID를 입력하세요.");
		   		return;
		    }
		  
		    $.ajax({
		       type : "post",
		       url : "${contextPath}/member/overlappedId",
		       data : {"memberId" : memberId},
		       success : function(checkId){
		          if (checkId == "N"){
		          	alert("사용할 수 있는 ID입니다.");
		          	validateMemberId = true;
		          }
		          else {
		          	alert("사용할 수 없는 ID입니다.");
		          	validateMemberId = false;
		          }
		       }
		    });
		});	
		$().ready(function() {
		    $('#passwd').on('input', function() {
		        validatePassword();
		    });

		    function validatePassword() {
		        var password = $('#passwd').val();
		    
		        var regex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{10,}$/;

		        if (!regex.test(password)) {
		            $('#passwordMessage').text('비밀번호는 영문과 숫자를 조합하여 10자 이상으로 입력해야 합니다.');
		        } else {
		            $('#passwordMessage').text('');
		        }
		    }
		})
		$().ready(function() {
       
            $("#birthDt").on("input", function() {
             
                var inputValue = $(this).val().replace(/[^0-9]/g, '');

                inputValue = inputValue.substring(0, 6);

                $(this).val(inputValue);
            });
        });
		
		$().ready(function() {
       
            $("#hp").on("input", function() {
             
                var inputValue = $(this).val().replace(/[^0-9]/g, '');

                inputValue = inputValue.substring(0, 11);

                $(this).val(inputValue);
            });
        });
		
		
		$("form").submit(function(){
			
			if (!validateMemberId) {
				alert("아이디를 확인해주세요.");
				return false;
			}
			
			
		});
		
	});

	
 </script>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>회원가입페이지</h4>
				<form action="${contextPath }/member/addMember" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>아이디<span>*</span></p>
										<input type="text" name="memberId" id="memberId" maxlength="15" placeholder="아이디를 입력하세요" size="30"/>
										<input type="button"  id="btnOverlapped" value="아이디중복확인"/>
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>비밀번호<span>*</span></p>
										<input type="password" name="passwd" id="passwd" minlength="10" placeholder="영문숫자를 조합하여 10자 이상 입력하세요" size="40" required>
										<div id="passwordMessage" style="color: red;"></div>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>이름<span>*</span></p>
										<input type="text" name="memberNm" placeholder="이름을 입력하세요" size="30" required>
										
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>성별<span>*</span></p>
									</div>
										<input type="radio" name="sex" value="m">남성
										<input type="radio" name="sex" value="w">여성
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>생년월일<span>*</span></p>
										<input type="text" name="birthDt" id="birthDt" maxlength="6" placeholder="6자리 숫자로 입력하세요" size="30"  required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>휴대폰번호<span>*</span></p>
										<input type="text" name="hp" id="hp"  placeholder="숫자로만 입력하세요" maxlength="11" size="30" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>이메일<span>*</span></p>
										<input type="email" name="email" required>
									</div>
								</div>
							</div>
							<button type="submit" class="site-btn">회원가입</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>
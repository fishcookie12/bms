<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyMember</title>
</head>
<script>
	$().ready(function() {
	    
	    $("#hp").on("input", function() {
	      
	        var inputValue = $(this).val().replace(/[^0-9]/g, '');
	
	        inputValue = inputValue.substring(0, 11);
	
	        $(this).val(inputValue);
	    });
	    
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
	     
	});
</script>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>회원원정보수정페이지</h4>
				<form action="${contextPath }/member/modifyMember" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
						
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>비밀번호수정<span>*</span></p>
										<input type="password" name="passwd" id="passwd" minlength="10" placeholder="영문숫자를 조합하여 10자 이상 입력하세요" size="40" required>
										<div id="passwordMessage" style="color: red;"></div>
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>휴대폰번호수정<span>*</span></p>
										<input type="text" name="hp" id="hp"  placeholder="숫자로만 입력하세요" maxlength="11" size="30" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>이메일수정<span>*</span></p>
										<input type="email" name="email" required>
									</div>
								</div>
							</div>
							<input type="hidden" name="memberId" value="${memberDTO.memberId }" >
							<button type="submit" class="site-btn">수정하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
</body>
</html>
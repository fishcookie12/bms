<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyPw</title>
<script>
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

	     
	});
</script>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>비밀번호재설정</h4>
				<form action="${contextPath }/member/modifyPw" method="post">
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

							<input type="hidden" name="memberId" value="${memberId }" >
							<button type="submit" class="site-btn">수정하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>
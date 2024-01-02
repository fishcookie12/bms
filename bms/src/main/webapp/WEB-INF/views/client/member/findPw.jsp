<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findPw</title>
<script>
	$().ready(function() {
		$("#birthDt").on("input",function(){
			var inputValue = $(this).val().replace(/[^0-9]/g, '');

            inputValue = inputValue.substring(0, 6);

            $(this).val(inputValue);
		})
	
	})
</script>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>비밀번호찾기</h4>
				<form action="${contextPath }/member/findPw" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>아이디<span>*</span></p>
										<input type="text" name="memberId" placeholder="아이디를 입력하세요" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>생년월일<span>*</span></p>
										<input type="text" name="birthDt" id="birthDt" placeholder="6자리 숫자로만 입력하세요" required maxlength="6">
									</div>
								</div>
							</div>
						
							<button type="submit" class="site-btn">비밀번호찾기</button>	
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
</body>
</html>
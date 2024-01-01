<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findId</title>
<script>
	$().ready(function() {
		$("#birthDt").on("input",function(){
			var inputValue = $(this).val().replace(/[^0-9]/g, '');

            inputValue = inputValue.substring(0, 6);

            $(this).val(inputValue);
		})
		$("#hp").on("input",function(){
			var inputValue = $(this).val().replace(/[^0-9]/g, '');

            inputValue = inputValue.substring(0, 11);

            $(this).val(inputValue);
		})
	})
</script>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>아이디찾기</h4>
				<form action="${contextPath }/member/findId" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>생년월일<span>*</span></p>
										<input type="text" name="birthDt" id="birthDt" placeholder="6자리 숫자로만 입력하세요" maxlength="6">
										
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>휴대폰번호<span>*</span></p>
										<input type="text" name="hp" id="hp" placeholder="숫자로만 입력하세요" maxlength="11">
										
									</div>
								</div>
							</div>
							
                              
							<button type="submit" class="site-btn">아이디찾기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

</body>
</html>
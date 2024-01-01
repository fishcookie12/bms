<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>authentication</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>회원정보인증하기</h4>
				<form action="${contextPath}/member/authentication" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>아이디</p>
										${memberDTO.memberId }
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>비밀번호<span>*</span></p>
										<input type="password" name="passwd">
										
									</div>
								</div>
							</div>
							<button type="submit" class="site-btn">인증하기</button>
							<input type="hidden" name="memberId" value="${memberDTO.memberId }">
							<input type="hidden" name="menu" value="${menu }">
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
</body>
</html>
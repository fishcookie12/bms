<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginMember</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>로그인페이지</h4>
				<form action="${contextPath }/member/loginMember" method="post">
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
										<p>비밀번호<span>*</span></p>
										<input type="password" name="passwd" placeholder="비밀번호를 입력하세요" required>
										<div id="passwordMessage" style="color: red;"></div>
									</div>
								</div>
							</div>
							<button type="submit" class="site-btn">로그인</button>
						</div>
					</div>
				</form>
				<p><a href="${contextPath}/member/findId">아이디찾기</a></p>
				<p><a href="${contextPath}/member/findPw">비밀번호찾기</a></p>
			</div>
		</div>
	</section>
	
</body>
</html>
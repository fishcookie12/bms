<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findPw</title>
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
										<input type="text" name="memberId">
										
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdFound</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>아이디찾기</h4>
				
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>귀하의 아이디는 ${foundId } 입니다.<span></span></p>
										
									</div>
								</div>
							</div>
							<p><a href="${contextPath}/member/loginMember">로그인하기</a></p>
							<p><a href="${contextPath}/member/findPw">비밀번호찾기</a></p>
						</div>
					</div>
				
			</div>
		</div>
	</section>
	
</body>
</html>
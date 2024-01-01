<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeMember</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>회원탈퇴</h4>
				<form action="${contextPath }/member/removeMember" method="post" >
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><span style="color:red;">탈퇴하시겠습니까?</span></p>
										<input type="hidden" name="memberId" value="${memberId }">
										
									</div>
								</div>
							</div>
							
							<button type="submit" class="site-btn">탈퇴하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

</body>
</html>
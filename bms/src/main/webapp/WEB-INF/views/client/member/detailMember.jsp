<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailMember</title>
</head>
<body>
	<section class="checkout spad">
			<div class="container">
				<div class="checkout__form">
					<h4>회원정보상세조회</h4>
					<form action="${contextPath }/member/detailMember" method="post">
						<div class="row">
	                        <div class="col-lg-8 col-md-6">
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>아이디</strong></p>
											${memberDTO.memberId }
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>이름</strong></p>
												${memberDTO.memberNm }
											
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>이메일</strong></p>
												${memberDTO.email }
											
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>휴대폰번호</strong></p>
												${memberDTO.hp }
										</div>
									</div>
								</div>
								<button type="button" class="site-btn" onclick="location.href='authentication?memberId=${memberDTO.memberId}&menu=update';">회원정보수정하기</button>
								<button type="button" class="site-btn" onclick="location.href='authentication?memberId=${memberDTO.memberId}&menu=delete';">회원탈퇴하기</button>
								<button type="button" class="site-btn" onclick="location.href='${contextPath}/order/orderList?memberId=${sessionScope.memberId}';">주문내역</button>
							
							</div>
						</div>
					</form>
					
				</div>
			</div>
		</section>
	
	
</body>
</html>
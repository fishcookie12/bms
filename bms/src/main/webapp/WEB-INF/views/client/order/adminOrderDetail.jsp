<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminOrderDetail</title>
</head>
<body>
	<section class="checkout spad">
			<div class="container">
				<div class="checkout__form">
					<h4>관리자배송정보</h4>
					
						
						<div class="row">
	                        <div class="col-lg-8 col-md-6">
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>도서제목</strong></p>
											${orderDTO.bookNm}
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>주문수량</strong></p>
											${orderDTO.orderBookQty}
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>가격</strong></p>
											${orderDTO.totalPrice}
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>주문일</strong></p>
											<fmt:formatDate value="${orderDTO.orderDt }" pattern="yyyy-MM-dd"/>
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>수취인</strong></p>
											${orderDTO.receiver}
										</div>
									</div>
								</div>
								
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>배송연락처</strong></p>
												${orderDTO.hp}
											
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>배송주소</strong></p>
												${orderDTO.deliveryAdress}
											
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>배송메세지</strong></p>
												${orderDTO.deliveryMessage}
										</div>
									</div>
								</div>
								
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>배송상태</strong></p>
												${orderDTO.deliveryStatus}
										</div>
									</div>
								</div>
								<button type="button" class="site-btn" onclick="location.href='${contextPath}/order/adminModifyOrder?orderCd=${orderDTO.orderCd}';">배송상태수정</button>
								
							</div>
						</div>
					
					
				</div>
			</div>
		</section>
	
</body>
</html>
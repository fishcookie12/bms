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
<title>orderDetail</title>
<script>
	
</script>
</head>
<body>
	<section class="checkout spad">
			<div class="container">
				<div class="checkout__form">
					<h4>배송정보</h4>
					
						<div class="row">
	                        <div class="col-lg-8 col-md-6">
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
								<c:choose>
									<c:when test="${orderDTO.deliveryStatus eq '배송준비중'}">
										<button type="button" class="site-btn" onclick="location.href='${contextPath}/order/modifyOrder?orderCd=${orderDTO.orderCd}';" >배송정보수정하기</button>
										<button type="button" class="site-btn" onclick="location.href='${contextPath}/order/removeOrder?orderCd=${orderDTO.orderCd}';" >주문취소하기</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="site-btn" disabled>배송정보수정하기</button>
										<button type="button" class="site-btn" disabled>주문취소하기</button>
										<p style="color: gray">${orderDTO.deliveryStatus}단계에서는 배송정보수정과 주문취소가 불가능합니다.</p>
									</c:otherwise>
								</c:choose>
								
							</div>
						</div>
					
					
				</div>
			</div>
		</section>
	
</body>
</html>
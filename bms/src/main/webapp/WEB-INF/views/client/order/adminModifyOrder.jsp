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
<title>adminModifyOrder</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>배송상태수정</h4>
				<form action="${contextPath }/order/adminModifyOrder" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
                        <div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>회원아이디 : ${orderDTO.memberId }<span></span></p>
										<p>주문코드: ${orderDTO.orderCd }<span></span></p>
										<p>현재배송상태 : ${orderDTO.deliveryStatus }<span></span></p>
										
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										
									</div>
										<input type="radio" name="deliveryStatus" value="배송준비중" checked>배송준비중
										<input type="radio" name="deliveryStatus" value="출고처리중" >출고처리중
										<input type="radio" name="deliveryStatus" value="출고완료" >출고완료
										<input type="radio" name="deliveryStatus" value="배송시작" >배송시작
										<input type="radio" name="deliveryStatus" value="배송완료" >배송완료
								</div>
							</div>
							<input type="hidden" value="${orderDTO.orderCd }" name="orderCd">
							<button type="submit" class="site-btn">수정완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>


</body>
</html>
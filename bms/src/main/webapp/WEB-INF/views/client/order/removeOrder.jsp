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
<title>removeOrder</title>
</head>
<body>

	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>주문취소페이지</h4>
				<form action="${contextPath }/order/removeOrder" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>해당주문건을 취소하시겠습니까?</strong><span></span></p>
										<p>주문코드 : ${orderCd } </p>
									</div>
								</div>
							</div>
							<input type="hidden" name="orderCd" value="${orderCd }">
							<button type="submit" class="site-btn">주문취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
</body>
</html>
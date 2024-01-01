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
<title>modifyOrder</title>
</head>
<script>
	$().ready(function() {
	    
	    $("#hp").on("input", function() {
	      
	        var inputValue = $(this).val().replace(/[^0-9]/g, '');
	
	        inputValue = inputValue.substring(0, 11);
	
	        $(this).val(inputValue);
	    });
	     
	});
</script>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>배송정보수정페이지</h4>
				<form action="${contextPath }/order/modifyOrder" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>받는사람<span>*</span></p>
										<input type="text" value="${orderDTO.receiver}" name="receiver">
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>배송연락처<span>*</span></p>
										<input type="text" value="${orderDTO.hp}" name="hp" id="hp" placeholder="숫자로만 입력하세요" >
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>배송주소<span>*</span></p>
										<input type="text" value="${orderDTO.deliveryAdress}" name="deliveryAdress">
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>배송메세지</p>
										<input type="text" value="${orderDTO.deliveryMessage}" name="deliveryMessage">
									</div>
								</div>
							</div>
							<input type="hidden" name="orderCd" value="${orderDTO.orderCd }">
							<button type="submit" class="site-btn">수정완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

</body>
</html>
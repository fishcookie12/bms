<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookDetail</title>
<script>
	$().ready(function () {
   
	    var quantityInput = $('#quantity');

    $("#plus1").click(function () {
        	
        var currentValue = Number(quantityInput.val());
        quantityInput.val(currentValue + 1);
        updateTotalPrice();
    });

 
    $("#minus1").click(function () {
        
        var currentValue = Number(quantityInput.val());
        quantityInput.val(currentValue > 1 ? currentValue - 1 : 1);
        updateTotalPrice();
    });
    
    function updateTotalPrice() {
        var price = parseInt('${bookDTO.price}');
        var quantity = parseInt(quantityInput.val());
        var totalPrice = price * quantity;

       
        $('#totalPrice').text(totalPrice); 
    }
    if ("${bookDTO.stock eq 0}") {
        addToCartButton.prop('disabled', true);
    }
    
});
	function addToCart() {
		if ("${bookDTO.stock eq 0}") {
	        return;
	    }
		var memberId="${sessionScope.memberId}";
		var bookCd="${bookDTO.bookCd}";
		var quantity=parseInt($("#quantity").val());
		var param={
				"memberId" : memberId,
				"bookCd" : bookCd,
				"quantity" : quantity
		};
		$.ajax({
			url : "${contextPath}/cart/addCart",
			type : "post",
			data : param,
			success : function() {
				alert("장바구니 추가완료");
			}
		})
	}
</script>
</head>

<body>
	
	
	<!-- Product Details Section Begin -->
	
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="img/product/details/product-details-1.jpg" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${bookDTO.bookNm }</h3>
                        <div class="product__details__rating">
                            
                        </div>
                        <div class="product__details__price">${bookDTO.price }원</div>
                        배송비 : ${bookDTO.deliveryPrice }
						<p>7만원이상 주문시 배송비 무료</p>
                        <input type="button" value="+" id="plus1">
                        <input type="text" value="1" id="quantity">
                        <input type="button" value="-" id="minus1">
                        <a href="javascript:addToCart();" class="primary-btn">장바구니</a>
                        <h6>총금액 :<span id="totalPrice"> ${bookDTO.price } </h6>
                        <ul>
                            <li><b>재고유무</b> 
                            	<span>
                            		<c:choose>
										<c:when test="${bookDTO.stock eq 0 }">
											<p>재고없음</p>
										</c:when>
										<c:otherwise>
											<p>재고있음</p>
										</c:otherwise>
									</c:choose>
                            	</span>
                            </li>
                            <li><b>저자</b> <span>${bookDTO.writer }</li>
                            <li><b>출판사</b> <span> ${bookDTO.publisher }</span></li>
                            <li><b>총페이지 </b><span>${bookDTO.totalPage}</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">책 소개 </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">저자의 말</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">출판사 평</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>목차</h6>
                                    <p>${bookDTO.contentsOrder }</p>
                                </div>
                                <div class="product__details__tab__desc">
                                    <h6>추천사</h6>
                                    <p>
                                    	<c:if test="${bookDTO.recommendation != null }">
											
												<td>추천사</td>
												<td>${bookDTO.recommendation }</td>
										</c:if>	
                                    </p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>저자서문</h6>
                                    <p>
                                    	<c:if test="${bookDTO.writerIntro != null }">
                                    		${bookDTO.writerIntro }</p>
                                    	</c:if>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>출판서문</h6>
                                    <p>
                                    	<c:if test="${bookDTO.publisherComment != null }">
                                    		${bookDTO.publisherComment }
                                    	</c:if>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${sessionScope.adminId eq 'admin1' or sessionScope.adminId eq 'admin2' or sessionScope.adminId eq 'admin3'}">
        	<input type="button" value="도서정보수정하기" onclick="location.href='modifyBook?bookCd=${bookDTO.bookCd}';">
			<input type="button" value="도서정보삭제하기" onclick="location.href='removeBook?bookCd=${bookDTO.bookCd}';">
        </c:if>
    </section>
</body>
</html>
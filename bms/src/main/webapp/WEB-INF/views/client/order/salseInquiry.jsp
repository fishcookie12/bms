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
<title>salseInquiry</title>
<script>

</script>
</head>
<body>
	<section class="checkout spad">
			<div class="container">
				<div class="checkout__form">
					<h4>매출조회</h4>
					<p>단위 : 원</p>
						<div class="row">
	                        <div class="col-lg-8 col-md-6">
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>현재여성총매출</strong></p>
											<fmt:formatNumber value="${totalWomanSales}" type="number" pattern="#,###" />
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>현재남성총매출</strong></p>
												<fmt:formatNumber value="${totalManSales}" type="number" pattern="#,###" /></td>
											
										</div>
									</div>
								</div>
								<div class="row">
	                                <div class="col-lg-6">
	                                	<div class="checkout__input">
											<p><strong>현재전체총매출</strong></p>
												<fmt:formatNumber value="${totalSales}" type="number" pattern="#,###" />
											
										</div>
									</div>
								</div>
								
								
								
								
								
							</div>
						</div>
					
					
				</div>
			</div>
		</section>

  <section class="shoping-cart spad">
        <div class="container">
        	
            <div class="row">
            	<div class="shoping__cart__table">
	                <table>
                            <thead>
                                <tr>
                                    <th>순위</th>
									<th>도서코드</th>
									<th>여성베스트셀러</th>
									<th>판매수량</th>
									
                                </tr>
                            </thead>
                            <tbody>
                               <c:set var="idx" value="1"/>
								<c:forEach var="womanBestSellers" items="${womanBestSellers}">
                                    <tr>
                                    	<td>${idx }</td>
                                    	<td >${womanBestSellers.bookCd }</td>
                                        <td class="shoping__cart__item">
                                            
                                            <h5>${womanBestSellers.bookNm}</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                               <fmt:formatNumber value="${womanBestSellers.orderBookQty}" type="number" pattern="#,###" />
                                            </div>
                                        </td>
                                    </tr>
                                    <c:set var="idx" value="${idx=idx+1 }"/>
                                </c:forEach>
                                
                            </tbody>
                        </table>
              </div>
			</div>
        </div>
    </section>
  <section class="shoping-cart spad">
        <div class="container">
        	
            <div class="row">
            	<div class="shoping__cart__table">
	                <table>
                            <thead>
                                <tr>
                                    <th>순위</th>
									<th>도서코드</th>
									<th>남성베스트셀러</th>
									<th>판매수량</th>
									
                                </tr>
                            </thead>
                            <tbody>
                               <c:set var="idx" value="1"/>
								<c:forEach var="manBestSellers" items="${manBestSellers }">
                                    <tr>
                                    	<td>${idx }</td>
                                    	<td >${manBestSellers.bookCd }</td>
                                        <td class="shoping__cart__item">
                                            
                                            <h5>${manBestSellers.bookNm}</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                               <fmt:formatNumber value="${manBestSellers.orderBookQty}" type="number" pattern="#,###" />
                                            </div>
                                        </td>
                                    </tr>
                                    <c:set var="idx" value="${idx=idx+1 }"/>
                                </c:forEach>
                                
                            </tbody>
                        </table>
              </div>
			</div>
        </div>
    </section>
  <section class="shoping-cart spad">
        <div class="container">
        	
            <div class="row">
            	<div class="shoping__cart__table">
	                <table>
                            <thead>
                                <tr>
                                    <th>순위</th>
									<th>도서코드</th>
									<th>전체베스트셀러</th>
									<th>판매수량</th>
									
                                </tr>
                            </thead>
                            <tbody>
                               <c:set var="idx" value="1"/>
								<c:forEach var="bestSeller" items="${bestSellers}">
                                    <tr>
                                    	<td>${idx }</td>
                                    	<td >${bestSeller.bookCd }</td>
                                        <td class="shoping__cart__item">
                                            
                                            <h5>${bestSeller.bookNm}</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                               <fmt:formatNumber value="${bestSeller.orderBookQty}" type="number" pattern="#,###" />
                                            </div>
                                        </td>
                                    </tr>
                                    <c:set var="idx" value="${idx=idx+1 }"/>
                                </c:forEach>
                                
                            </tbody>
                        </table>
              </div>
			</div>
        </div>
    </section>

</body>
</html>
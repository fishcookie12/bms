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
<title>modifyBook</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>도서정보수정페이지</h4>
				<form action="${contextPath }/book/modifyBook" method="post" enctype="multipart/form-data">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>도서이미지<span>*</span></p>
										<input type="file" name="imgNm"/>
			        					<input type="hidden" name="beforeFileName" value="${memberDTO.imgNm}"/>
										
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>도서제목</strong><span>*</span></p>
										${bookDTO.bookNm }
										
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>저자</strong><span>*</span></p>
										${bookDTO.writer }
										
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>출판사</strong><span>*</span></p>
										${bookDTO.publisher }
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>가격</strong><span>*</span></p>
										<input type="number" name="price" value="${bookDTO.price }">
									</div>
								</div>
							</div>

							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>할인율</strong><span>*</span></p>
										<input type="number" name="discountRt" value="${bookDTO.discountRt }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>재고</strong><span>*</span></p>
										<input type="number" name="stock" value="${bookDTO.stock }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>도서분류</strong><span>*</span></p>
										<input type="text" name="sort" value="${bookDTO.sort }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>포인트</strong><span>*</span></p>
										<input type="number" name="point" value="${bookDTO.point }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>출판일</strong><span>*</span></p>
										<fmt:formatDate value="${bookDTO.publishedDt }" pattern="yyyy-MM-dd"/>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>총페이지</strong><span>*</span></p>
										<input type="number" name="totalPage" value="${bookDTO.totalPage }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>ISBN</strong><span>*</span></p>
										<input type="text" name="isbn" value="${bookDTO.isbn }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>배송료</strong><span>*</span></p>
										<input type="number" name="deliveryPrice" value="${bookDTO.deliveryPrice }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>파트</strong><span>*</span></p>
										<input type="text" name="part" value="${bookDTO.part }">
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>저자소개</strong><span>*</span></p>
										<textarea rows="10" cols="40" name="writerIntro">${bookDTO.writerIntro }</textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>목차</strong><span>*</span></p>
										<textarea rows="10" cols="40" name="contentsOrder">${bookDTO.contentsOrder }</textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>책소개</strong><span>*</span></p>
										<textarea rows="10" cols="40" name="intro">${bookDTO.intro }</textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>출판사평</strong><span>*</span></p>
										<textarea rows="10" cols="40" name="publisherComment">${bookDTO.publisherComment }</textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>추천사</strong><span>*</span></p>
										<textarea rows="10" cols="40" name="recommendation">${bookDTO.recommendation }</textarea>
									</div>
								</div>
							</div>
							
							<button type="submit" class="site-btn">도서수정</button>
							<input type="hidden" name="bookCd" value="${bookDTO.bookCd }">
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
</body>
</html>
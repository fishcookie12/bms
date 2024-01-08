<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addBook</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>도서등록페이지</h4>
				<form action="${contextPath }/book/addBook" method="post" enctype="multipart/form-data">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>도서이미지등록<span>*</span></p>
										<input type="file" name="imgNm" required/>
										
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>도서제목<span>*</span></p>
										<input type="text" name="bookNm" required>
										
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>저자<span>*</span></p>
										<input type="text" name="writer" required>
										
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>출판사<span>*</span></p>
										<input type="text" name="publisher" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>가격<span>*</span></p>
										<input type="number" name="price" required>
									</div>
								</div>
							</div>
							
							
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>할인율<span>*</span></p>
										<input type="number" name="discountRt" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>재고<span>*</span></p>
										<input type="number" name="stock" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>도서분류<span>*</span></p>
										<input type="text" name="sort" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>포인트<span>*</span></p>
										<input type="number" name="point" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>출판일<span>*</span></p>
										<input type="date" name="publishedDt" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>총페이지<span>*</span></p>
										<input type="number" name="totalPage" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>ISBN<span>*</span></p>
										<input type="text" name="isbn" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>배송료<span>*</span></p>
										<input type="number" name="deliveryPrice" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>파트<span>*</span></p>
										<input type="text" name="part" required>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>저자소개<span>*</span></p>
										<textarea rows="10" cols="40" name="writerIntro"></textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>목차<span>*</span></p>
										<textarea rows="10" cols="40" name="contentsOrder"></textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>책소개<span>*</span></p>
										<textarea rows="10" cols="40" name="intro"></textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>출판사평<span>*</span></p>
										<textarea rows="10" cols="40" name="publisherComment"></textarea>
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>추천사<span>*</span></p>
										<textarea rows="10" cols="40" name="recommendation"></textarea>
									</div>
								</div>
							</div>
							
							<button type="submit" class="site-btn">도서등록</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

</body>
</html>
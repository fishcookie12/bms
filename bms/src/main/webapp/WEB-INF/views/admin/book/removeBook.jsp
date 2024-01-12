<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeBook</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>도서삭제</h4>
				<form action="${contextPath }/book/removeBook" method="post" >
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><span style="color:red;">해당 도서를 삭제하시겠습니까?</span></p>
										<input type="hidden" name="bookCd" value="${bookCd }">
										
									</div>
								</div>
							</div>
							
							<button type="submit" class="site-btn">삭제하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminLog</title>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>관리자로그인페이지</h4>
				<form action="${contextPath }/admin/adminLog" method="post">
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>관리자아이디<span>*</span></p>
										<input type="text" name="adminId" required>
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p>관리자비밀번호<span>*</span></p>
										<input type="password" name="adminPw" required>
										
									</div>
								</div>
							</div>
							<button type="submit" class="site-btn">로그인</button>
						</div>
					</div>
				</form>
				
			</div>
		</div>
	</section>
	
</body>
</html>
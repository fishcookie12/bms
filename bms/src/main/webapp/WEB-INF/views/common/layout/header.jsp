<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="${contextPath}/resources/bootstrap/img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            <div class="header__top__right__auth">
                            <c:choose>
								<c:when test="${sessionScope.memberId eq 'admin'}">
									<p><a href="${contextPath }/member/memberList">회원리스트 조회</a></p>
									<p><a href="${contextPath }/member/logoutMember">로그아웃</a></p>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${sessionScope.memberId eq null}">
                                <a href="${contextPath}/member/loginMember"><i class="fa fa-user"></i> 로그인</a>
                                <a href="${contextPath}/member/addMember"><i class="fa fa-user"></i> 회원가입</a>
									</c:when>
									<c:otherwise>
									
										<p><a href="${contextPath }/member/detailMember">${sessionScope.memberId}님</a></p>	
										<p><a href="${contextPath }/member/logoutMember">로그아웃</a></p>	
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="${contextPath}/resources/bootstrap/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                    	<c:if test="${sessionScope.memberId eq 'admin'}">
                        <ul>
                        	<li>관리자 카테고리
                        		<ul>
                        			<li>도서관리</li>
                        			<li>회원관리</li>
                        			<li>매출관리</li>
                        			<li>주문관리</li>
                        			<li>Q&A</li>
                        		</ul>
                        	</li>
                            <li class="active"><a href="./index.html">Home</a></li>
                            
                            <li><a href="./shop-grid.html">베스트</a></li>
                      
                            <li><a href="#">신상품</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">국내도서</a></li>
                                    <li><a href="./shoping-cart.html">외국도서</a></li>
                                    <li><a href="./checkout.html">eBook</a></li>
                                    
                                </ul>
                            </li>
                            <li><a href="./blog.html">이벤트</a></li>
                            <!--  <li><a href="./contact.html">추천도서</a></li>-->
                        </ul>
                    	</c:if>
                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="./shop-grid.html">베스트</a></li>
                      
                            <li><a href="#">신상품</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">국내도서</a></li>
                                    <li><a href="./shoping-cart.html">외국도서</a></li>
                                    <li><a href="./checkout.html">eBook</a></li>
                                    
                                </ul>
                            </li>
                            <li><a href="./blog.html">문의하기</a></li>
                            <!--  <li><a href="./contact.html">추천도서</a></li>-->
                        </ul>
                        
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
</body>
</html>
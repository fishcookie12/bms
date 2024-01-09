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
                                <li><i class="fa fa-envelope"></i>leebook@gmail.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                
                            </div>
                           
                            <div class="header__top__right__auth">
                            <c:choose>
								<c:when test="${sessionScope.adminId eq 'admin1' or sessionScope.adminId eq 'admin2' or sessionScope.adminId eq 'admin3'}">
								
								 	<p>${sessionScope.adminId}관리자로 접속중</p>
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
                        <a href="/bms"><img src="${contextPath}/resources/bootstrap/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="hero__search__form">
				    <form action="${contextPath}/book/bookList" method="get">
				        <select name="searchOption" id="searchOption">
				            <option value="total">전체검색</option>
				            <option value="writer">저자</option>
				            <option value="bookNm">제목</option>
				        </select>
				        <input type="text" id="searchWord" name="searchWord" value="${searchWord }">
				        <button type="submit" class="site-btn">검색</button>
				    </form>
				</div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                    	<c:choose>
                    		<c:when test="${sessionScope.adminId eq 'admin1' or sessionScope.adminId eq 'admin2' or sessionScope.adminId eq 'admin3'}">
                    			<ul>
                    				<li><a href="">도서관리</a>
                                	<ul class="header__menu__dropdown">
                                    <li><a href="${contextPath}/book/bookStock">도서재고현황</a></li>
                                    <li><a href="${contextPath}/book/addBook">도서등록</a></li>
                                    
                                	</ul>
                          			 </li>
                    				<li><a href="#">매출관리</a>
                                	<ul class="header__menu__dropdown">
                                    <li><a href="${contextPath}/order/salseInquiry">매출조회</a></li>
                                	</ul>
                          			 </li>
                    				<li><a href="#">주문관리</a>
                                	<ul class="header__menu__dropdown">
                                    <li><a href="${contextPath}/order/adminOrderList">주문조회</a></li>
                                	</ul>
                          			 </li>
                    				<li><a href="#">회원관리</a>
                                	<ul class="header__menu__dropdown">
                                    <li><a href="${contextPath}/member/memberList">회원조회</a></li>
                                    <li><a href="${contextPath}/contact/contactList">회원문의</a></li>
                                	</ul>
                          			 </li>
                    				
                    			</ul>
                    		</c:when>
                    		
                    		<c:otherwise>
                        <ul>
                            <li class="active"><a href="/bms">Home</a></li>
                            <li><a href="${contextPath}/category/bestseller">베스트</a></li>
                      
                            <li><a href="${contextPath}/category/newBook">신상품</a>
                               
                            </li>
                            <li><a href="${contextPath }/contact/addContact">문의하기</a></li>
                        </ul>
                    		
                    		</c:otherwise>
                    	</c:choose>
                        
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            
                            <li><a href="${contextPath }/cart/cartList"><i class="fa fa-shopping-bag"></i></a></li>
                        </ul>
                        <div class="header__cart__price"><span></span></div>
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
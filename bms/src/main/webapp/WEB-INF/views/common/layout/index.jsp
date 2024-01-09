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
<!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Category</span>
                        </div>
                        <ul>
                            <li><a href="${contextPath}/category/koreanNovel">한국소설</a></li>
                            <li><a href="${contextPath}/category/englishNovel">영문소설</a></li>
                            <li><a href="${contextPath}/category/japanNovel">일본소설</a></li>
                            <li><a href="${contextPath}/category/europeanNovel">유럽소설</a></li>
                            <li><a href="${contextPath}/category/humanities">인문학</a></li>
                            <li><a href="${contextPath}/category/poetryEssay">시/에세이</a></li>
                            <li><a href="${contextPath}/category/economicsManagement">경제/경영</a></li>
                            <li><a href="${contextPath}/category/science">과학</a></li>
                            <li><a href="${contextPath}/category/testPreparationBook">수험서</a></li>
                            <li><a href="${contextPath}/category/civilServant">공무원</a></li>
                            <li><a href="${contextPath}/category/foreignLanguage">외국어</a></li>
                            <li><a href="${contextPath}/category/secondarySchoolReferenceBook">중고등참고서</a></li>
                            <li><a href="${contextPath}/category/elementarySchoolReferenceBook">초등참고서</a></li>
                            <li><a href="${contextPath}/category/internationalBook">외국도서</a></li>
                            <li><a href="${contextPath}/category/usedBook">중고도서</a></li>
                            <li><a href="${contextPath}/category/eBook">eBook</a></li>
               
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">   
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="${contextPath}/resources/book/359163_7927_2845.jpg">
                        <div class="hero__text">
                            <span>온라인도서쇼핑몰</span>
                            <h2 style="color: white">BOOK STORE</h2>
                            <p style="color: black">국내도서해외도서 eBook까지</p>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/book/bannerImg1.png" alt="사진없음">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/book/bannerImg2.png" alt="사진없음">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/book/bannerImg3.jpg" alt="사진없음">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/book/bannerImg4.jpg" alt="사진없음">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/book/bannerImg5.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/book/bannerImg6.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    
    <!-- Blog Section End -->
</body>
</html>
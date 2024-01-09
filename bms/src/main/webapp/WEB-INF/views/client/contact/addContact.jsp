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
<title>addContact</title>
</head>
<body>
	
	<!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>TellNum</h4>
                        <p>02-1234-5678</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>Address</h4>
                        <p>서울특별시 송파구 송파대로 1길</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>Open time</h4>
                        <p>10:00 am to 23:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>Email</h4>
                        <p>leebook@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->
    <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>문의하기</h2>
                    </div>
                </div>
            </div>
            <form action="${contextPath }/contact/addContact" method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input type="text" value="${sessionScope.memberId}" readonly="readonly" name="memberId" >
                    </div>
                   
                    <div class="col-lg-6 col-md-6">
                        <input type="email" placeholder="이메일을 입력하세요" name="email" required>
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea placeholder="내용을 입력하세요" name="message"></textarea>
		                <p>남겨주신 이메일로 답변을 보내드리오니 메일 주소를 정확히 입력해주세요!</p> 
                        <button type="submit" class="site-btn">전송하기</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->
</body>
</html>
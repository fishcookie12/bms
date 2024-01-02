<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>bookList</title>
</head>
<body>
    <h3>도서리스트</h3>
    <c:if test="${sessionScope.adminId eq 'admin1' or sessionScope.adminId eq 'admin2' or sessionScope.adminId eq 'admin3'}">
        <input type="button" value="도서추가하기" onclick="${contextPath}/book/addBook">
    </c:if>
    
    <div class="container">
        <div class="row">
            <c:forEach var="bookDTO" items="${bookList}">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <ul class="product__item__pic__hover">
                                <img src="${contextPath}/book/thumbnails?fileName=${bookDTO.imgNm}" width="300" height="600" alt="사진">
                            </ul>
                        </div>
                        <div class="product__item__text">
                        
                            <h4><a href="${contextPath}/book/bookDetail?bookCd=${bookDTO.bookCd }">${bookDTO.bookNm }</a></h4>
                            <h6>${bookDTO.price }</h6>
                            <h6>${bookDTO.writer }</h6>
                            <h6>${bookDTO.publisher }</h6>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>

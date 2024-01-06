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
  
    <div class="container">
        <div class="row">
            <c:forEach var="bookDTO" items="${bookList}">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg">
                            <ul class="product__item__pic__hover">
                                <a href="${contextPath}/book/bookDetail?bookCd=${bookDTO.bookCd }">
                                    <img src="${contextPath}/book/thumbnails?fileName=${bookDTO.imgNm}" width="300" height="600" alt="사진">
                                </a>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h4><a href="${contextPath}/book/bookDetail?bookCd=${bookDTO.bookCd }">${bookDTO.bookNm }</a></h4>
                            <h6><fmt:formatNumber value="${bookDTO.price}" type="number" pattern="#,##0원"/></h6>
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

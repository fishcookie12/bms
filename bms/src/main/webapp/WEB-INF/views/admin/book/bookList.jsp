<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookList</title>
</head>
<script>

</script>
<body>
	<h3>도서리스트</h3>
		<c:if test="${sessionScope.adminId eq 'admin1' or sessionScope.adminId eq 'admin2' or sessionScope.adminId eq 'admin3'}">
			<input type="button" value="도서추가하기" onclick="${contextPath}/book/addBook">
		</c:if>
		<!--
		<table border="1">
			<tr>
				<td>도서이미지</td>
				<td>책제목</td>
				<td>저자</td>
				<td>출판사</td>
				<td>가격</td>
			</tr>
			<tbody id="bookList">
				<c:forEach var="bookDTO" items="${bookList}">
				<tr>
					<td><a href="${contextPath}/book/bookDetail?bookCd=${bookDTO.bookCd }"><img src="${contextPath }/member/thumbnails?fileName=${bookDTO.imgNm}" width="50" height="50" alt="사진"></a></td>
					<td><a href="${contextPath}/book/bookDetail?bookCd=${bookDTO.bookCd }">${bookDTO.bookNm }</a></td>
					<td>${bookDTO.writer }</td>
					<td>${bookDTO.publisher }</td>
					<td>${bookDTO.price }</td>
				</tr>
			</c:forEach>
			</tbody>
			
		</table>
		-->
		<tbody id="bookList">
		<c:forEach var="bookDTO" items="${bookList}">
		
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a  href="javascript:void(0);" class="primary-btn" onclick="addToCart()"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
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
			</tbody>
</body>
</html>
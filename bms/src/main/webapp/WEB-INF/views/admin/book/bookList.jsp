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
<body>
	<h3>도서리스트</h3>
	
		<table border="1">
			<tr>
				<td>도서이미지</td>
				<td>책제목</td>
				<td>저자</td>
				<td>출판사</td>
				<td>가격</td>
			</tr>
			<tbody id="bookList">
				<c:forEach var="boardDTO" items="${bookList}">
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

</body>
</html>
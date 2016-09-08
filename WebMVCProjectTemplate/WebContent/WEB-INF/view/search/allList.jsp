<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>YEASTsoft - 약빵 template</title>


<style>
table, td, th {
	border: 1px solid #ddd;
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 10px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />

	<div class="content" style="text-align: center;">
		<table border=1>
			<tr>
				<th>NO</th>
				<th>User ID</th>
				<th>Med Key</th>
				<th>Food Key</th>
				<th>Search Date</th>
			</tr>
			<c:forEach var="alog" items="${allList}">
				<tr>
					<td>${alog.serialNum}</td>
					<td>${alog.userId}</td>
					<td>${alog.medKey}</td>
					<td>${alog.foodKey}</td>
					<td>${alog.searchDate}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

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

	<div class="content" style="width: 500px; height: 600px; margin: auto;">
		<form action="<c:url value='insertFoodInfo.do'/>" method="post"
			class="form-horizontal">

			<label class="control-label col-sm-2" for="name"></label>
			
				<h1 class="featurette-heading">식품 정보 입력</h1>
				<h2>
					<span class="text-muted">DB에 추가할 식품명과 <br>해당하는 성분명을 입력하세요</span>
				</h2>
				<br> 
				<input type="text" name="food_name" id="name"
					class="form-control" placeholder="식품명을 입력하세요"> <br> 
				<input type="text" name="food_ingredient" id="name" 
					class="form-control" placeholder="성분명을 입력하세요"> <br> 
			<center>
				<button type="submit" class="btn btn-primary btn-lg active">저장</button>
			</center>

		</form>
		<form action="<c:url value='fooddelete.do'/>" method="post"
			class="form-horizontal">
			<br> <input type="text" name="food_id" id="name"
				class="form-control" placeholder="삭제할 식품의 번호를 입력하세요"> <br>
			<center>
				<button type="submit" class="btn btn-primary btn-lg active">삭제</button>
			</center>
		</form>
		<form action="<c:url value='foodselect.do'/>" method="post"
			class="form-horizontal">
			<br> <input type="text" name="food_name" id="name"
				class="form-control" placeholder="조회할 식품의 이름을 입력하세요"> <br>
			<center>
				<button type="submit" class="btn btn-primary btn-lg active">조회</button>
			</center>
		</form>
		


	</div>
	<center>
		<c:if test="${!empty warning}"><h1>${warning}</h1></c:if>
	</center>
	<center>
		<c:if test="${!empty result}">${result}</c:if>
	</center>
	<center>
		<c:if test="${empty list}">일치하는 데이터가 존재하지 않습니다.</c:if>
	</center>

	<div class="content" style="text-align: center;">
		<table border=1>
			<tr>
				<th>food_id</th>
				<th>food_name</th>
				<th>food_ingredient</th>
			
			</tr>
			<c:forEach var="alog" items="${list}">
				<tr>
					<td>${alog.food_id}</td>
					<td>${alog.food_name}</td>
					<td>${alog.food_ingredient}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%--주석 --%>
	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>
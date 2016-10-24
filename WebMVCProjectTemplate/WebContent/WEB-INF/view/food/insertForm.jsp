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
<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<a id="menu-toggle" href="<c:url value="/forward.do?url=/menu/intro.jsp"/>" class="btn btn-dark btn-lg toggle"><i class="fa fa-home" ></i></a>
	<div class="content" style="width: 500px; height: 600px; margin: auto;">
		<form action="<c:url value='insertFoodInfo.do'/>" method="post"
			class="form-horizontal">

			<label class="control-label col-sm-2" for="name"></label>
			
				<h1 class="featurette-heading">식품 정보 입력</h1>
				<h2>
					<span class="text-muted">DB에 추가할 식품명과 <br>해당하는 질병명을 입력하세요</span>
				</h2>
				<br> 
				<input type="text" name="foodName" id="name"
					class="form-control" placeholder="식품명을 입력하세요"> <br> 
				<input type="text" name="goodDisease" id="name" 
					class="form-control" placeholder="Good Disease"> <br> 
				<input type="text" name="badDisease" id="name" 
					class="form-control" placeholder="Bad Disease"> <br>
			<center>
				<button type="submit" class="btn btn-dark btn-lg">저장</button>
			</center>

		</form>
		<form action="<c:url value='fooddelete.do'/>" method="post"
			class="form-horizontal">
			<br> <input type="text" name="serialNum" id="name"
				class="form-control" placeholder="삭제할 식품의 번호를 입력하세요"> <br>
			<center>
				<button type="submit" class="btn btn-dark btn-lg">삭제</button>
			</center>
		</form>
		<form action="<c:url value='foodselect.do'/>" method="post"
			class="form-horizontal">
			<br> <input type="text" name="foodName" id="name"
				class="form-control" placeholder="조회할 식품의 이름을 입력하세요"> <br>
			<center>
				<button type="submit" class="btn btn-dark btn-lg">조회</button>
			</center>
		</form>
		


	</div>
	<center>
		<c:if test="${!empty warning}"><h1>${warning}</h1></c:if>
	</center>
	<center>
		<c:if test="${!empty result}">${result}</c:if>
	</center>
	<br><br><br>
	<div class="content" style="text-align: center;">
		<table border=1>
			<tr>
				<th>Serial Number</th>
				<th>Food Name</th>
				<th>Good Effect</th>
				<th>Bad Effect</th>
			</tr>
			<c:forEach var="alog" items="${allList}">
				<tr>
					<td>${alog.serialNum}</td>
					<td>${alog.foodName}</td>
					<td>${alog.goodDisease}</td>
					<td>${alog.badDisease}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%--주석 --%>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약품정보입력페이지</title>
</head>
<body>
<div class="content">
	<form action="<c:url value='insertmedinfo.do'/>" method="post"
		class="form-horizontal">
		<div class="form-group">
			<label class="control-label col-sm-2" for="name"></label>
			<div class="col-sm-2">
				<h1>>약품 정보 입력<</h1>
				<br>
				약품명: <input type="text" name="medname" id="name" class="form-control"><br>
				질병분류: <input type="text" name="disease" id="name" class="form-control">
			</div>
		</div>
		<input type="submit" value="저장">
	</form>
</div>

</body>
</html>
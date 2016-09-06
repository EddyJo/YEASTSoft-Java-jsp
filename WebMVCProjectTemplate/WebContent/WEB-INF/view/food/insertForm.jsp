<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식품정보입력페이지</title>
</head>
<body>
<div class="content">
	<form action="<c:url value='insertFoodInfo.do'/>" method="post"
		class="form-horizontal">
		<div class="form-group">
			<label class="control-label col-sm-2" for="name"></label>
			<div class="col-sm-2">
				<h1>식품 정보 입력</h1>
				<br>
				식품명: <input type="text" name="foodName" id="name" class="form-control"><br>
				>GOOD: <input type="text" name="goodDisease" id="name" class="form-control"><br>
				>BAD: <input type="text" name="badDisease" id="name" class="form-control"><br>
			</div>
		</div>
		<input type="submit" value="저장">
	</form>
</div>

</body>
</html>
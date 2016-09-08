<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
</head>

<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />


	<div class="content" style="width: 500px; height: 700px; margin: auto;">
		<form action="<c:url value='insertmedinfo.do'/>" method="post"
			class="form-horizontal">

			<label class="control-label col-sm-2" for="name"></label>
			<div class="featurette">
				<h1 class="featurette-heading">식품 정보 입력</h1>
				<h2>
					<span class="text-muted">DB에 추가할 식품명과 해당하는 질병명을 입력하세요</span>
				</h2>
				<br> <input type="text" name="foodname" id="name"
					class="form-control" placeholder="식품명을 입력하세요">
				<br> <input type="text" name="gooddisease" id="name" class="form-control"
					placeholder="Good Disease">
				<br><input type="text" name="baddisease" id="name"
					class="form-control" placeholder="Bad Disease">
			</div>
			<br>
			<center>
				<button type="submit" class="btn btn-primary btn-lg active">저장</button>
			</center>

		</form>
	</div>

	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>
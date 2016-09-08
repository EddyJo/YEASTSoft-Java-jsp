<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

</head>
<style>
div.featurette {
	text-align: center;
}
</style>
<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />

	<div class="featurette" id="services" style="height: 700px;">
		
		<h1 class="featurette-heading" style="margin-top: 300px;">실행 결과</h1>
		<h2>
			<span class="text-muted"> 약품 정보가 저장되었습니다</span>
		</h2>
		<p class="lead"><%=request.getAttribute("result")%></p>
	</div>




	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>
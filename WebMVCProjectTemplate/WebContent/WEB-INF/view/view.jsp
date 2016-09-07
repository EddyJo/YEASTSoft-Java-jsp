<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
.featurette{
	margin: 200px 0;
	height: 370px;
	text-align: center;
	position: absloute;
}

</style>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>YEASTsoft - 약빵 template</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/one-page-wonder.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />

	<hr class="featurette-divider">

	<div class="featurette" id="about" >
			
		<h2 class="featurette-heading">궁합도</h2>
		<p class="lead">
			<c:if test="${result}=='50'">
				<img src="http://cfile212.uf.daum.net/image/265D8B35538DE42D23A09F">
			</c:if>
			<c:if test="${result}=='100'">
				<img
					src="http://mblogthumb3.phinf.naver.net/20130917_54/beauty_pop_1379424039089fO7UC_PNG/2202001_emot_019.png?type=w2">
			</c:if>
			<c:if test="${result}=='0'">
				<img src="http://cfile4.uf.tistory.com/image/224E463F5443B42A056C0A">
			</c:if>
		<h1>${result}</h1>
	</div>
	
	
	
	
	
	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>
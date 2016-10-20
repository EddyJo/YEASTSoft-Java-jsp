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

	<div class="featurette" id="about" >
		<h2>${result.getMed_name()}과 ${result.getFood_name()}의 궁합도 </h2>
		<h3>${result.getScore()}</h3>
		<h4>Good Food 
		<c:forEach var="good_food" items="${result.getGoodfoods()}">
		 ${good_food}
		</c:forEach>
		</h4>
		<h4>Bad Food 
		<c:forEach var="bad_food" items="${result.getBadfoods()}">
		 #${bad_food}
		</c:forEach>
		</h4>  
	</div>
	
	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>
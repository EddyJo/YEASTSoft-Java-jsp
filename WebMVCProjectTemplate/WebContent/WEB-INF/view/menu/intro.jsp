<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no">
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<style>
div.form-group {
	margin: 0px;
	height: 100px;
}


@import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css');
.text-placeholder {
	text-align: center;
}
.titlefont{
	font-size: 65px;
	font-weight: bold;
	font-family: 'nanumgothic';
}
.subfont{
	font-size: 35px;
	font-weight: bold;
	font-family: 'nanumgothic';
}
</style>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>YEASTsoft - 약빵 template</title>



<!-- Custom CSS -->
<link href="css/one-page-wonder.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->	

<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
	
	
	 <!-- Page Content -->
   <div class="container" style="height: 525px;">


	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>
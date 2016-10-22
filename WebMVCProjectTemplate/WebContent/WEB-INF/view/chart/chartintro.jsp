<%@ page contentType="text/html; charset=UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />

<style>
@import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css');

li, div, a ,button{
	font-size: 15px;
	font-weight: bold;
	font-family: 'nanumgothic';
}
</style>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
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
<a id="menu-toggle" href="<c:url value="/forward.do?url=/menu/aboutus.jsp"/>" class="btn btn-dark btn-lg toggle"><i class="fa fa-home" ></i></a>
<br>
<center>
<div class="container">
	<a href="<c:url value='/forward.do?url=/chart/mcountperlocchart.jsp'/>" class="btn btn-dark btn-lg">지역별 약품 검색통계</a>
	<a href="<c:url value='/forward.do?url=/chart/fcountperlocchart.jsp'/>" class="btn btn-dark btn-lg">지역별 식품 검색통계</a>
	<a href="<c:url value='/foodmedlog.do'/>" class="btn btn-dark btn-lg">식품-약품 RANK</a>
	<a href="<c:url value='/forward.do?url=/chart/medfrechart.jsp'/>" class="btn btn-dark btn-lg">약품별 검색통계</a>
	<a href="<c:url value='/showfoodfrequency.do'/>" class="btn btn-dark btn-lg">식품별 검색통계</a>
</div>
</center>

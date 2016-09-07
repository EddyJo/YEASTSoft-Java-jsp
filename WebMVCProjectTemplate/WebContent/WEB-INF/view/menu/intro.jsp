<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<style>
div.form-group {
	margin: 0px;
	width: 1140px;
	height: 100px;
}

.text-placeholder {
	text-align: center;
}

</style>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">HOME</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">

				<li><a href='<c:url value="/forward.do?url=/menu/aboutus.jsp"/>'>About US</a></li>
				<li><a href='<c:url value="/searchId.do"/>'>Log History</a></li>
				<li><a href='<c:url value="/searchAll.do"/>'>Trend Analysis</a></li>
				<li class="dropdown"><a href='<c:url value="/"/>'
					class="dropdown-toggle" data-toggle="dropdown">Member Service</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value='/member/login.do'/>">My Page<fmt:message
									key="MY_INFO" /></a>
						<li><a href="<c:url value='/member/update.do'/>">Update
								Info<fmt:message key="UPDATE_USER_INFO" />
						</a>
						<li><a href="<c:url value='/member/delete.do'/>">Exit
								Member<fmt:message key="EXIT_MEMBER" />
						</a>
						<li><a href="<c:url value='/member/logout.do'/>">Sign
								Out)<fmt:message key="SIGN_OUT" />
						</a>
						<li><a href="<c:url value='/member/insert.do'/>">Join
								Member)<fmt:message key="JOIN_MEMBER" />
						</a>
					</ul></li>


				<c:if test="${sessionScope.userid eq 'admin'}">
					<li class="dropdown"><a href='<c:url value="/"/>'
						class="dropdown-toggle" data-toggle="dropdown">관리자메뉴</a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/insertmedinfo.do'/>">약품 DB추가</a>
							<li><a href="<c:url value='/insertFoodInfo.do'/>">식품
									DB추가</a>
						</ul></li>
				</c:if>
				<li><div style="margin-top: 10px;">
						<c:if test="${empty userid}">

							<a href="<c:url value='/member/login.do'/>"
								class="btn btn-danger"><fmt:message key="SIGN_IN" /></a>
						</c:if>
						<c:if test="${!empty userid}">

							<a href="<c:url value='/forward.do?url=/member/login.jsp'/>"
								class="btn btn-danger"><fmt:message key="MY_INFO" /></a>
						</c:if>
					</div></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Full Width Image Header -->
	<header class="header-image">
	<div class="headline">
		<div class="container">
			<h1>세상을 바꾸는 약빵</h1>
			<h2>식품과 약품의 궁합 정보</h2>
		</div>
	</div>
	</header>

	<!-- Page Content -->
	<div class="container" align=center style="height: 500px;">

		<hr class="featurette-divider">

		<!-- First Featurette -->


		<form action="<c:url value='search.do'/>" method="post"
			class="form-horizontal" style="height: 300px;">
			<div class="form-group">

				<input type="text" class="searchname" name="foodKey"
					style="width: 300px; height: 70px;" placeholder="식품명을 입력하세요""><br>
				<br> <input type="text" class="searchname" name="medKey"
					style="width: 300px; height: 70px;" placeholder="약품명을 입력하세요"><br>
				<br>
				<button type="submit" class="btn btn-primary btn-lg active">궁합
					검색</button>

			</div>



		</form>
	</div>

	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>
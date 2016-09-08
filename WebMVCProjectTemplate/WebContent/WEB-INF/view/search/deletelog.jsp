<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	height: 128px;
}

.text-placeholder{
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
				<li><a href="#about">About US</a></li>
				<li><a href="#services">Log History</a></li>
				<li><a href="#contact">Trend Analysis</a></li>
				<li><a href="#member">Member Service</a></li>
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
	<div class="container" align=center style="height:630px;">

		<hr class="featurette-divider">

		<!-- First Featurette -->


		<form action="<c:url value='searchlogdelete.do'/>" method="post"
			class="form-horizontal" style="height:300px;">
			<div class="form-group">

				<input type="text" class="searchname" name="userId" style="width:300px; height:70px;"
					placeholder="조회할 사용자 아이디를 입력하세요."">&nbsp; 
					
			    <button type="submit" class="btn btn-primary btn-lg active">조회</button><br><br>
					
				<input type="text" class="searchname" name="userId" style="width:300px; height:70px;"
					placeholder="로그 정보를 삭제할 사용자 아이디를 입력하세요.">&nbsp;
					
				<button type="submit" class="btn btn-primary btn-lg active">삭제</button>

			</div>



		</form>
	</div>

	
	<!-- Footer -->
	<footer>
	<div class="row">
		<div class="col-lg-12">
			<p>Copyright &copy; Your Website 2014</p>
		</div>
	</div>
	</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>

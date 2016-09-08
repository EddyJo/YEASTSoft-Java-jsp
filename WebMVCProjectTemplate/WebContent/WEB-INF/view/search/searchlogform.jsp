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

<title>YEASTsoft - 약빵 template</title>

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
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />	

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
<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>

</html>

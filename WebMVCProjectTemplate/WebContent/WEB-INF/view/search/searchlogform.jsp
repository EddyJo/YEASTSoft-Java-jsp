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
	height: 128px;
}
</style>
<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />

	<div class="content" style="width: 500px; height: 500px; margin: auto;">

		<div class="featurette">
			<form action="<c:url value='/searchlogselect.do'/>" method="post"
				class="form-horizontal">

				<h1 class="featurette-heading">유저 로그 관리</h1>
				<h2><span class="text-muted">유저 아이디로 유저의 검색로그를 조회 및 삭제합니다.</span></h2>
				<br> <input type="text" name="userId" id="name"
					class="form-control" placeholder="조회할 사용자 아이디를 입력하세요.">
				<center>
					<button type="submit" class="btn btn-primary btn-lg active"
						style="margin: 10px 0 20px 0;">조회</button>
				</center>

			</form>

			<form action="<c:url value='searchlogdelete.do'/>" method="post"
				class="form-horizontal">
				<div class="featurette">
					<input type="text" name="userId" id="name" class="form-control"
						placeholder="로그 정보를 삭제할 사용자 아이디를 입력하세요.">
					<center>
						<button type="submit" class="btn btn-primary btn-lg active"
							style="margin: 10px 0 0 0;">삭제</button>
					</center>
				</div>
			</form>
		</div>


		<c:if test="${!empty result}">${result}</c:if>


   </div>


<jsp:include page="/WEB-INF/view/include/footer.jsp" />



</body>

</html>

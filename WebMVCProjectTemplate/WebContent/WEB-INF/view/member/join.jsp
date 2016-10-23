<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />

<html>

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

<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<head>




<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>YEASTsoft - 약빵 template</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css"
	rel="stylesheet" type="text/css">
	
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
</head>

<body>
<a id="menu-toggle" href="<c:url value="/forward.do?url=/menu/aboutus.jsp"/>" class="btn btn-dark btn-lg toggle"><i class="fa fa-home"></i></a>	
	<div class="content" style="margin-top: 100px;">
	<form action="<c:url value='/member/insert.do'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="userid">아이디</label>
      <div class="col-sm-4">
        <input type="text" name="userid" id="userid" value="${member['userid']}" ${empty member.userid ? "" : "readonly"} 
         class="form-control" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="password">비밀번호</label>
      <div class="col-sm-4">
        <input type="password" name="password" id="password" value="${member.password}" class="form-control" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="name">이름</label>
      <div class="col-sm-4">
        <input type="text" name="name" id="name" value="${member.name}" class="form-control" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="phone">전화번호</label>
      <div class="col-sm-4">
        <input type="text" name="phone" id="phone" value="${member.phone}" class="form-control" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="email">이메일</label>
      <div class="col-sm-4">
        <input type="text" name="email" id="email" value="${member.address}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="gender">성별</label>
      <div class="col-sm-4">
        <input type="text" name="gender" id="gender" value="${member.gender}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="age">나이</label>
      <div class="col-sm-4">
        <input type="text" name="age" id="age" value="${member.age}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="location">지역</label>
      <div class="col-sm-4">
        <input type="text" name="location" id="location" value="${member.location}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-dark btn-lg" value="회원가입">
		<input type="reset" class="btn btn-dark btn-lg" value="취소">
		</div>
	</div>
	</form>
	</div>


</body>
</html>
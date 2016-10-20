<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Stylish Portfolio - Start Bootstrap Theme</title>

<!-- Bootstrap Core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/css/stylish-portfolio.css" rel="stylesheet">

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
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>

<body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.7&appId=790580357751641";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="content" style="text-align: center; height: 700px;">
<%--
String userid = (String)session.getAttribute("userid");
if(userid==null) {
--%>
<c:if test="${empty sessionScope.userid}">
	<%--h4><fmt:message key="${not empty message ? message : 'BLANK'}"/></h4--%>
	<%--= request.getAttribute("message") --%>
	<%-- 
		String message = (String)request.getAttribute("message");
		out.println(message);
	--%>
	<form action="<c:url value='/member/login.do'/>" method="post" class="form-horizontal">
	<div class="form-group" style="margin-top: 100px; margin-left: 100px;">
      <label class="control-label col-sm-2" for="id">Member ID</label><br>
        <input type="text" name="userid" id="id" class="form-control"
        style="width:300px;" placeholder="아이디를 입력하세요" ><br>
     
       <label class="control-label col-sm-2" for="id">Member PW</label><br>
        <input type="password" name="password" id="pw" class="form-control" 
        style="width:300px;" placeholder="비밀번호를 입력하세요" >
    
    </div>
    
    <br>
    <br>
    	<div class="fb-login-button" data-max-rows="1" data-size="large" data-show-faces="false" data-auto-logout-link="false"></div>
	    <br>
	    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
    	<a href="<c:url value='/member/login.do'/>" class="btn btn-dark btn-lg">회원가입</a>
    	<button type="submit" class="btn btn-dark btn-lg">로그인</button>
    	<button type="reset" class="btn btn-dark btn-lg">취소</button>
		</div>
	</div>
	</form>
</c:if>
<%--
}else {
--%>
<br>
<br>
<c:if test="${not empty sessionScope.userid}">
	<h4>회원정보: ${userid}</h4>
	<a href="<c:url value='/member/update.do'/>">[<fmt:message key="UPDATE_USER_INFO"/>]</a>
	<a href="<c:url value='/member/logout.do'/>">[<fmt:message key="SIGN_OUT"/>]</a>
	<a href="<c:url value='/member/delete.do'/>">[<fmt:message key="EXIT_MEMBER"/>]</a>
</c:if>
</div>

</body>
</html>



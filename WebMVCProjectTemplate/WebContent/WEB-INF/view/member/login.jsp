<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>

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
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>

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
     
        <input type="text" name="userid" id="id" class="form-control" placeholder="아이디를 입력하세요" ><br>
     
       <label class="control-label col-sm-2" for="id">Member PW</label><br>
        <input type="password" name="password" id="pw" class="form-control" placeholder="비밀번호를 입력하세요" >
    
    </div>
    <br>
    <br>
   
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="Sign In">
		<input type="reset" class="btn btn-info" value="Cancel">
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

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>



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
	<div class="form-group">
      <label class="control-label col-sm-2" for="id"><fmt:message key="MEMBER_ID"/></label>
      <div class="col-sm-8">
        <input type="text" name="userid" id="id" class="form-control" placeholder="<fmt:message key="MEMBER_ID"/>" aria-describedby="basic-addon1">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pw"><fmt:message key="MEMBER_PW"/></label>
      <div class="col-sm-8">
        <input type="password" name="password" id="pw" class="form-control" placeholder="<fmt:message key="MEMBER_PW"/>" aria-describedby="basic-addon1">
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="<fmt:message key="SIGN_IN"/>">
		<input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
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
	<h4><fmt:message key="SIGN_IN"/>: ${userid}</h4>
	<a href="<c:url value='/member/update.do'/>">[<fmt:message key="UPDATE_USER_INFO"/>]</a>
	<a href="<c:url value='/member/logout.do'/>">[<fmt:message key="SIGN_OUT"/>]</a>
	<a href="<c:url value='/member/delete.do'/>">[<fmt:message key="EXIT_MEMBER"/>]</a>
</c:if>
</div>

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>



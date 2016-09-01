<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/member" />
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2><fmt:message key="LOGIN"/><small> <fmt:message key="${not empty message ? message : 'BLANK'}"/></small></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="MEMBER"/></li>
                    <li class="active"><fmt:message key="LOGIN"/></li>
                </ol>
            </div>
        </div>
    </div>
<div class="content">
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
<c:if test="${not empty sessionScope.userid}">
	<h4><fmt:message key="SIGN_IN"/>: ${userid}</h4>
	<a href="<c:url value='/member/update.do'/>">[<fmt:message key="UPDATE_USER_INFO"/>]</a>
	<a href="<c:url value='/member/logout.do'/>">[<fmt:message key="SIGN_OUT"/>]</a>
	<a href="<c:url value='/member/delete.do'/>">[<fmt:message key="EXIT_MEMBER"/>]</a>
</c:if>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>



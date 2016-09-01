<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2><fmt:message key="DELETE_ARTICLE"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="BOARD"/></li>
                    <li class="active"><fmt:message key="DELETE_ARTICLE"/></li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">
		<h3><fmt:message key="DELETE_MSG"/></h3>
		<form action='<c:url value="/board/delete.do"/>' class="form-inline" method="post">
		<input type="hidden" name="bbsno" value="${bbsno}">
		<input type="hidden" name="replynumber" value="${replynumber}">
		<input type="hidden" name="page" value="${page}">
		<input type="password" class="" name="password">
		<input type="submit" class="btn btn-danger" value="<fmt:message key="DELETE_ARTICLE"/>">
		</form>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>

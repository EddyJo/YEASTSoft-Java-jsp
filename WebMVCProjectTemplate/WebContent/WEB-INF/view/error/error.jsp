<%@ page contentType="text/html; charset=UTF-8" isErrorPage="true" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% response.setStatus(200); %>
<fmt:setBundle basename="i18n/header" />
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
	<div class="pg-opt">
        <div class="row">
            <div class="col-md-6 pc">
                <h2>Error</h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li>Error</li>
                    <li class="active">Error</li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
	<h3>Error</h3>
	<%
	if(exception != null) {
	    out.println("에러가 발생했습니다.<br>");
	    out.println("에러 원인 : ");
	    out.println(exception.getMessage());
	} 
	%>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
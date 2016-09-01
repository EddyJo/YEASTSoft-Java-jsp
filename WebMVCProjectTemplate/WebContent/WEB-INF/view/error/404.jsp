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
                    <li class="active">404</li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">
	<h3>404</h3>
	잘못된 페이지 요청입니다. 요청 URL 또는 forward URL을 확인하세요. 
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
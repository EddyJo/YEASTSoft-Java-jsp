<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
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
                <h2><fmt:message key="CONTENT"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="BOARD"/></li>
                    <li class="active"><fmt:message key="CONTENT"/></li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">

	<table class="table">
	<tr>
		<td width="150"><fmt:message key="WRITER"/></td>
		<td>${board.name}</td>
	</tr>
	<tr>
		<td><fmt:message key="SUBJECT"/> </td>
		<td>${board.subject}</td>
	</tr>
	<tr>
		<td><fmt:message key="CONTENT"/></td>
		<td>${board.content}</td>
	</tr>
	<tr>
		<td colspan=2 align="right">
		<a href='<c:url value="/board/list.do?page=${page}"/>'><button type="button" class="btn btn-info"><fmt:message key="BOARD_LIST"/></button></a>
		<a href='<c:url value="/board/reply.do?bbsno=${board.bbsno}&page=${page}"/>'><button type="button" class="btn btn-info"><fmt:message key="REPLY"/></button></a>
		<a href='<c:url value="/board/update.do?bbsno=${board.bbsno}&page=${page}"/>'><button type="button" class="btn btn-info"><fmt:message key="UPDATE"/></button></a>
		<a href='<c:url value="/board/delete.do?bbsno=${board.bbsno}&page=${page}&replynumber=${board.replynumber}"/>'><button type="button" class="btn btn-info"><fmt:message key="DELETE"/></button></a>
		</td>
	</tr>
	</table>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>

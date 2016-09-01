<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" isErrorPage="true"%>
<%
response.setStatus(200);
%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/member" />
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<div class="container">
<div class="content">
<h3><fmt:message key="${message}"/></h3>
<%
if(exception != null)
out.println(exception.getMessage());
%>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/board" />
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
	
	<div class="content" style="margin-top=100px;">
	<form action="<c:url value='/board/update.do'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="name"><fmt:message key="WRITER"/></label>
      <div class="col-sm-2">
        <input type="text" name="name" id="name" class="form-control" value="${board.name}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"><fmt:message key="EMAIL"/></label>
      <div class="col-sm-4">
        <input type="text" name="email" id="email" class="form-control" value="${board.email}" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password"><fmt:message key="PASSWORD"/></label>
      <div class="col-sm-2">
        <input type="password" name="password" id="password" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="subject"><fmt:message key="SUBJECT"/></label>
      <div class="col-sm-8">
        <input type="text" name="subject" id="subject" class="form-control" value="${board.subject}" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="content"><fmt:message key="CONTENT"/></label>
      <div class="col-sm-8">
        <textarea name="content" rows="10" cols="100" class="form-control">${board.content}</textarea>
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
			<input type="hidden" name="bbsno" value="${board.bbsno}">
			<input type="hidden" name="masterid" value="${board.masterid}">
			<input type="hidden" name="replynumber" value="${board.replynumber}">
			<input type="hidden" name="replystep" value="${board.replystep}">
			<input type="hidden" name="page" value="${page}">
			<input type="submit" class="btn btn-info" value="<fmt:message key="UPDATE"/>"> <input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
		</div>
	</div>
	</form>
	</div>

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/emp" />
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
                <h2><fmt:message key="DELETE_EMPLOYEE_DATA_MSG"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="EMP_TEST"/></li>
                    <li class="active"><fmt:message key="DELETE_EMPLOYEE_DATA"/></li>
                </ol>
            </div>
        </div>
    </div>

<div class="content">
<p>
	<form action="<c:url value='/emp/delete.do'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <div class="col-sm-4">
        <input type="hidden" name="empno" id="empno" value="${empno}" class="form-control" autofocus="autofocus">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ename"><fmt:message key="ENAME"/></label>
      <div class="col-sm-4">
        <input type="text" name="ename" id="ename" maxlength="10" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="<fmt:message key="DELETE"/>">
		<input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
		</div>
	</div>
	</form>
</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
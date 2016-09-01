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
                <h2><fmt:message key="VIEW_EMPLOYEE_DATA_MSG"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="EMP_TEST"/></li>
                    <li class="active"><fmt:message key="VIEW_EMPLOYEE_DATA"/></li>
                </ol>
            </div>
        </div>
    </div>
	<div class="content">
	<form action="<c:url value='/emp/update.do'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="empno"><fmt:message key="EMPNO"/></label>
      <div class="col-sm-2">
        <input type="number" value="${emp.empno}" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ename"><fmt:message key="ENAME"/></label>
      <div class="col-sm-4">
        <input type="text" value="${emp.ename}" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="job"><fmt:message key="JOB"/></label>
      <div class="col-sm-4">
        <input type="text" value="${emp.job}" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="mgr"><fmt:message key="MANAGER"/></label>
      <div class="col-sm-3">
        <input type="text" value="${emp.mgr}" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="hiredate"><fmt:message key="HIREDATE"/></label>
      <div class="col-sm-4">
        <input type="date" value="${emp.hiredate}" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="sal"><fmt:message key="SAL"/></label>
      <div class="col-sm-3">
        <input type="number" name="sal" id="sal" value="${emp.sal}" step="any" min="0" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="comm"><fmt:message key="COMM"/></label>
      <div class="col-sm-3">
        <input type="number" value="${emp.comm}" class="form-control" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="deptno"><fmt:message key="DEPTNO"/></label>
      <div class="col-sm-3">
        <input type="number" value="${emp.deptno}" class="form-control" readonly="readonly">
      </div>
    </div>
	</form>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
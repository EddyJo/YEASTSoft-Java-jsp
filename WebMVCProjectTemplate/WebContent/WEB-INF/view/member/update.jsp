<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/member" />
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>

	<div class="content" style="margin-top:100px;">
	<form action="<c:url value='/member/update.do'/>" method="post" class="form-horizontal">
	<div class="form-group">
      <label class="control-label col-sm-2" for="userid"><fmt:message key="MEMBER_ID"/></label>
      <div class="col-sm-4">
        <input type="text" name="userid" id="userid" value="${member['userid']}" ${empty member.userid ? "" : "readonly"} class="form-control" placeholder="<fmt:message key="MEMBER_ID"/>" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="password"><fmt:message key="MEMBER_PW"/></label>
      <div class="col-sm-4">
        <input type="password" name="password" id="password" value="${member.password}" class="form-control" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="name"><fmt:message key="MEMBER_NAME"/></label>
      <div class="col-sm-4">
        <input type="text" name="name" id="name" value="${member.name}" class="form-control" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="phone"><fmt:message key="MEMBER_PHONE"/></label>
      <div class="col-sm-6">
        <input type="text" name="phone" id="phone" value="${member.phone}" class="form-control" required>
      </div>
    </div>
	<div class="form-group">
      <label class="control-label col-sm-2" for="email"><fmt:message key="MEMBER_EMAIL"/></label>
      <div class="col-sm-8">
        <input type="text" name="email" id="email" value="${member.email}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="gender"><fmt:message key="MEMBER_GENDER"/></label>
      <div class="col-sm-8">
        <input type="text" name="gender" id="gender" value="${member.gender}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="age"><fmt:message key="MEMBER_AGE"/></label>
      <div class="col-sm-8">
        <input type="text" name="age" id="age" value="${member.age}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="location"><fmt:message key="MEMBER_LOCATION"/></label>
      <div class="col-sm-8">
        <input type="text" name="location" id="location" value="${member.location}" class="form-control" required>
      </div>
    </div>
    <div class="form-group">
    	<div class="col-sm-offset-2 col-sm-8">
		<input type="submit" class="btn btn-info" value="<fmt:message key="SAVE"/>">
		<input type="reset" class="btn btn-info" value="<fmt:message key="CANCEL"/>">
		</div>
	</div>
	</form>
	</div>

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
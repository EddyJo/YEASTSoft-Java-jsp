<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp" />
	<div class="content">
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputFoodName" class="col-sm-2 control-label">식품명</label>
				<div class="col-sm-10">
					<input type="text" class="searchname" id="fname"
						placeholder="식품명을 입력하세요">
				</div>
			</div>
			<div class="form-group">
				<label for="inputMedName" class="col-sm-2 control-label">약품명</label>
				<div class="col-sm-10">
					<input type="text" class="searchname" id="mname"
						placeholder="약품명을 입력하세요">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary btn-lg active">궁합 검색</button>
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="/WEB-INF/view/include/footer.jsp" />
</body>
</html>


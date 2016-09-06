<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content">
		<form action="<c:url value='search.do'/>" method="post"
			class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-2" for="name"></label>
				<div class="col-sm-2">
					식품명<input type="text" name="sname" id="fname" class="form-control">
					약품명<input type="text" name="sname" id="mname" class="form-control">
				</div>
			</div>
			<input type="submit" value="궁합검색">
		</form>
	</div>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/WEB-INF/view/include/staticFiles.jsp"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/include/bodyHeader.jsp"/>
<c:if test="${result}=='50'">
<img src = "http://cfile212.uf.daum.net/image/265D8B35538DE42D23A09F">
</c:if>
<c:if test="${result}=='100'">
<img src = "http://mblogthumb3.phinf.naver.net/20130917_54/beauty_pop_1379424039089fO7UC_PNG/2202001_emot_019.png?type=w2">
</c:if>
<c:if test="${result}=='0'">
<img src = "http://cfile4.uf.tistory.com/image/224E463F5443B42A056C0A">
</c:if>
<h1>${result}</h1>

<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
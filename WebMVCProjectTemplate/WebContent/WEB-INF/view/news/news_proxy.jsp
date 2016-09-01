<%@ page contentType="text/xml; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import charEncoding="${empty param.charset ? 'UTF-8' : param.charset}" url="${param.rssurl}" ></c:import> 
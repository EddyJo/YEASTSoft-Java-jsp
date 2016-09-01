<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="i18n/news" />
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
                <h2><fmt:message key="NEWS"/></h2>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb">
                    <li><fmt:message key="NEWS"/></li>
                    <li class="active"><fmt:message key="NEWS_LIST"/></li>
                </ol>
            </div>
        </div>
    </div>

	<div class="content">
		<p>
		<a href="<c:url value='/news/rss.do?charset=UTF-8&rssurl=http://file.mk.co.kr/news/rss/rss_30000001.xml'/>">매일경제</a><br>
		<a href="<c:url value='/news/rss.do?charset=UTF-8&rssurl=http://rss.etnews.com/Section901.xml'/>">전자신문</a><br>
		<a href="<c:url value='/news/rss.do?charset=UTF-8&rssurl=http://www.khan.co.kr/rss/rssdata/total_news.xml'/>">경향닷컴</a><br>
		<a href="<c:url value='/news/rss.do?charset=UTF-8&rssurl=http://rss.nocutnews.co.kr/nocutnews.xml'/>">노컷뉴스</a><br>
		<a href="<c:url value='/news/rss.do?charset=UTF-8&rssurl=http://www.hani.co.kr/rss/'/>">한겨레</a><br>
		<a href="<c:url value='/news/rss.do?charset=UTF-8&rssurl=http://www.chosun.com/site/data/rss/rss.xml'/>">조선일보</a><br>
		<a href="<c:url value='/news/rss.do?charset=euc-kr&rssurl=http://imnews.imbc.com/rss/news/news_00.xml'/>">MBC</a><br>
		<a href="<c:url value='/news/rss.do?charset=UTF-8&rssurl=http://api.sbs.co.kr/xml/news/rss.jsp?pmDiv=all'/>">SBS</a><br>
		<a href="<c:url value='/news/rss.do?charset=euc-kr&rssurl=http://rss.segye.com/segye_recent.xml'/>">세계일보</a><br>
		<a href="<c:url value='/news/rss.do?charset=euc-kr&rssurl=http://www.kukinews.com/data/rss/news.xml'/>">쿠키뉴스</a><br>
		</p>
	</div>
</div>
<jsp:include page="/WEB-INF/view/include/footer.jsp"/>
</body>
</html>
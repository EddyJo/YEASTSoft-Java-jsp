<%@ page contentType="text/html; charset=UTF-8"
   trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="i18n/header" />
<!-- HEADER -->
<div class="container">
   <div id="divHeaderWrapper">
      <header class="header-standard-2">
         <!-- MAIN NAV -->
         <div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse"
                  data-target=".navbar-collapse">
                  <i class="fa fa-bars icon-custom"></i>
               </button>
               <a class="navbar-brand" href="<c:url value='/'/>" title=""><span
                  class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>
                  <fmt:message key="TITLE" /> </a>
               <div style="padding-left: 15px; width: 200px">http://www.yoursite.co.kr</div>
            </div>
            <div class="navbar-collapse collapse">
               <ul class="nav navbar-nav navbar-right">
                  <li class="hidden-md hidden-lg">
                     <div class="bg-light-gray">
                        <form class="form-horizontal form-light p-15" role="form">
                           <div class="input-group input-group-lg">
                              <input type="text" class="form-control"
                                 placeholder="I want to find ..."> <span
                                 class="input-group-btn">
                                 <button class="btn btn-white" type="button">
                                    <i class="fa fa-search"></i>
                                 </button>
                              </span>
                           </div>
                        </form>
                     </div>
                  </li>
                  <li class="dropdown"><a href="<c:url value='/forward.do?url=/menu/intro.jsp'/>"
                     class="dropdown-toggle">소개(기능 및 조직구성)
                     <!--<fmt:message key="DASHBOARD" />-->
                     </a>
                    </ul--></li>
                  <li class="dropdown"><a href='<c:url value="/"/>'
                     class="dropdown-toggle" data-toggle="dropdown">검색이력<fmt:message
                           key="BOARD" /></a>
                     <ul class="dropdown-menu">
                        <li><a href="<c:url value='/searchId.do'/>">나의
                              검색이력 조회
                              <!--<fmt:message key="BOARD_LIST" />-->
                        </a>
                     </ul></li>
                  <li class="dropdown"><a href='<c:url value="/"/>'
                     class="dropdown-toggle" data-toggle="dropdown">질병 트랜드 및 예측 분석<fmt:message
                           key="BOARD" /></a>
                     <ul class="dropdown-menu">
                        <li><a href='<c:url value="/emp/list.do"/>'>(메뉴4-1)<fmt:message
                                 key="EMP_LIST" /></a></li>
                     </ul></li>
                  <li class="dropdown"><a href='<c:url value="/"/>'
                     class="dropdown-toggle" data-toggle="dropdown">(메뉴5)<fmt:message
                           key="MEMBER" /></a>
                     <ul class="dropdown-menu">
                        <li><a href="<c:url value='/member/login.do'/>">(메뉴5-1)<fmt:message
                                 key="MY_INFO" /></a>
                        <li><a href="<c:url value='/member/update.do'/>">(메뉴5-2)<fmt:message
                                 key="UPDATE_USER_INFO" /></a>
                        <li><a href="<c:url value='/member/delete.do'/>">(메뉴5-3)<fmt:message
                                 key="EXIT_MEMBER" /></a>
                        <li><a href="<c:url value='/member/logout.do'/>">(메뉴5-4)<fmt:message
                                 key="SIGN_OUT" /></a>
                        <li role="separator" class="divider"></li>
                        <li><a href="<c:url value='/member/insert.do'/>">(메뉴5-5)<fmt:message
                                 key="JOIN_MEMBER" /></a>
                     </ul></li>
                <c:if test="${sessionScope.userid eq 'admin'}">
               	<li class="dropdown">
                    <a href='<c:url value="/"/>' class="dropdown-toggle" data-toggle="dropdown">관리자메뉴</a>
                    <ul class="dropdown-menu">
                    	<li><a href="<c:url value='/insertmedinfo.do'/>">약품 DB추가</a>
                        <li><a href="<c:url value='/insertFoodInfo.do'/>">식품 DB추가</a>
                    </ul>
                </li>
                </c:if>

                  <li class="dropdown dropdown-aux animate-click"
                     data-animate-in="animated bounceInUp"
                     data-animate-out="animated fadeOutDown" style="z-index: 500;">
                     <a href="#" class="dropdown-form-toggle" data-toggle="dropdown"><i
                        class="fa fa-search"></i></a>
                     <ul class="dropdown-menu dropdown-menu-user animate-wr">
                        <li id="dropdownForm">
                           <div class="dropdown-form">
                              <form class="form-horizontal form-light p-15"
                                 action="<c:url value='/board/search.do'/>" method="post"
                                 role="form">
                                 <div class="input-group">
                                    <input type="text" class="form-control" name="keyword"
                                       placeholder="키워드를 입력하세요."> <span
                                       class="input-group-btn"> <input type="submit"
                                       class="btn btn-base" value="Go">
                                    </span>
                                 </div>
                              </form>
                           </div>
                        </li>
                     </ul>
                  </li>
                  <li><div>
                        <c:if test="${empty userid}">
                           <br>
                           <a href="<c:url value='/member/login.do'/>"
                              class="btn btn-danger">(로그인)<fmt:message key="SIGN_IN" /></a>
                        </c:if>
                        <c:if test="${!empty userid}">
                           <br>
                           <a href="<c:url value='/forward.do?url=/member/login.jsp'/>"
                              class="btn btn-danger"><fmt:message key="MY_INFO" /></a>
                        </c:if>
                     </div></li>
               </ul>
            </div>
            <!--/.nav-collapse -->
         </div>
      </header>
   </div>
</div>
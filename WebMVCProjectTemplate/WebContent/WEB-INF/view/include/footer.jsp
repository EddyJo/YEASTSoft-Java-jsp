<%@ page contentType="text/html; charset=utf-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- FOOTER -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="col">
                   <h4>Contact us</h4>
                   <ul>
                        <li>서울특별시 </li>
                        <li>Phone: <%= application.getInitParameter("phone")%> </li>
                        <li>Email: <a href="mailto:${initParam.email}" title="Email Us">${initParam.email}</a></li>
                   </ul>
                 </div>
            </div>
            
            <div class="col-md-3">
                <div class="col">
                    <h4>Mailing list</h4>
                    <p>Sign up if you would like to receive</p>
                    <form class="form-horizontal form-light">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Your email address...">
                            <span class="input-group-btn">
                                <button class="btn btn-base" type="button">Go!</button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="col-md-3">
                <div class="col col-social-icons">
                    <h4>Follow us</h4>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                
                </div>
			</div>

			<div class="col-md-3">
                <div class="col">
                    <h4>About us</h4>
                    <p class="no-margin">
                    Java developer specialist group community. It something special for your.
                    <a href="#" class="btn btn-block btn-base btn-icon fa-check"><span>Try it now</span></a>
                    </p>
                </div>
            </div>
        </div>
	</div>
</footer>
<%
	application.log(new java.util.Date().toString() + " : " + 
					request.getRemoteAddr() + " : " +
					request.getRequestURI());
%>
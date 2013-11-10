<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a href="${base}" class="navbar-brand">JobSite</a>
			<button class="navbar-toggle " type="button" data-toggle="collapse"
				data-target="#navbar-main">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse" id="navbar-main">
			<ul class="nav navbar-nav">
				<li><a href="#"> Menu1 </a></li>
				<li><a href="#"> Menu2 </a></li>
				<li><a href="#"> Menu33 </a></li>
			</ul>
			<!-- Based on authentication show login or welcome user text -->

			<sec:authorize access="authenticated" var="authenticated" />

			<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${authenticated}">
						<li><a href="#">Welcome <sec:authentication
									property="name" /></a></li>
						<li><c:url var="logoutUrl" value="/logout" /> <a
							href="${logoutUrl}">Logout</a></li>
					</c:when>
					<c:otherwise>
						<button type="button" id="btnSignIn" data-toggle="modal"
							data-target="#myModal" class="btn btn-default navbar-btn">Sign
							in</button>
						<a id="btnRegister" class="btn btn-default navbar-btn"
							href="registration/index">Register</a>
					</c:otherwise>
				</c:choose>

			</ul>
		</div>
	</div>
</div>
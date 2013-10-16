<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Welcome to Job Site</title>
<!-- Bootstrap -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="resources/js/html5shiv.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->

<style>
body {
	padding-top: 55px;
}
</style>

</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="/" class="navbar-brand">JobSite</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<ul class="nav navbar-nav">
					<li><a href="#"> Menu1 </a></li>
					<li><a href="#"> Menu2 </a></li>
					<li><a href="#"> Menu3 </a></li>
				</ul>
				<div class="nav navbar-nav navbar-right">
					<button type="button" id="btnSignIn" data-toggle="modal" data-target="#myModal"
						class="btn btn-default navbar-btn" >Sign in</button>
				</div>
			</div>
		</div>
	</div>
	

	<div class="modal fade" id="myModal" tabIndex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Sign In</h4>
				</div>
				<div class="modal-body">
					<div class="container" id="loginModal">
						<div class="row">
							<div class="col-lg-10">
								<form class="form-horizontal">
									<fieldset>										
										<div class="form-group">
											<label for="inputEmail" class="col-lg-2 control-label">Email</label>
											<div class="col-lg-10">
												<input type="text" class="form-control" id="inputEmail"
													placeholder="Email">
											</div>
										</div>
										<div class="form-group">
											<label for="inputPassword" class="col-lg-2 control-label">Password</label>
											<div class="col-lg-10">
												<input type="password" class="form-control"
													id="inputPassword" placeholder="Password">
											</div>
										</div>								
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>




	<script src="resources/js/jquery-2.0.3.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/js/app/jobsite.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			app.dir(app);
			app.init();
		});
	</script>
</body>
</html>

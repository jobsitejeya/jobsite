<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>JobSite - Registration</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="page-header">
				<h1 id="forms">Registration Form</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6">
			<div class="well">
				<form class="bs-example form-horizontal" action="/registration/submit" method="post" >
					<fieldset>
						<legend>Person Details</legend>
						<div class="form-group">
							<label for="inputEmail" class="col-lg-2 control-label">Email</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="inputEmail" id="inputEmail"
									placeholder="Email">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmailRe" class="col-lg-2 control-label">Re
								type Email</label>
							<div class="col-lg-10">
								<input type="text" name="inputEmailRe" class="form-control" id="inputEmailRe"
									placeholder="Re type Email">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword" class="col-lg-2 control-label">Password</label>
							<div class="col-lg-10">
								<input type="password" name="inputPassword" class="form-control" id="inputPassword"
									placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2">
								<button class="btn btn-default">Cancel</button>
								<button type="submit" class="btn btn-primary" id="btnRegSubmit">Submit</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="well">
			</div>
		</div>
	</div>
</body>
</html>

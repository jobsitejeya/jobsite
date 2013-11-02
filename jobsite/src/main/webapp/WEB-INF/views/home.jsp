<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Welcome to Job Site</title>



</head>
<body>
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
	
</body>
</html>

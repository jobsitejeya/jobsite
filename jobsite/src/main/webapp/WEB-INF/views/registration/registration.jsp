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
		<div class="col-lg-9">
			<div class="well">
				<form class="bs-example form-horizontal"
					action="/registration/submit" method="post">
					<fieldset>
						<!-- Login Details -->
						<legend>Login Details</legend>
						<div class="form-group">
							<label for="inputEmail" class="col-lg-2 control-label">Email
								*</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="inputEmail"
									id="inputEmail" placeholder="Email"> <span
									class="help-block">This will be your login user name.</span>
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmailRe" class="col-lg-2 control-label">Password</label>
							<div class="col-lg-10">
								<input type="text" name="inputPassword" class="form-control"
									id="inputPassword" placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<label for="inputRePassword" class="col-lg-2 control-label">Re-enter
								Password</label>
							<div class="col-lg-10">
								<input type="password" name="inputRePassword"
									class="form-control" id="inputRePassword"
									placeholder="Re Enter password">
							</div>
						</div>
						<!-- Person Details -->
						<legend>Person Details</legend>
						<div class="form-group">
							<label for="inputFirstName" class="col-lg-2 control-label">First
								Name *</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="inputFirstName"
									id="inputFirstName" placeholder="First Name">
							</div>
						</div>
						<div class="form-group">
							<label for="inputLastName" class="col-lg-2 control-label">Last
								Name</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="inputLastName"
									id="inputLastName" placeholder="Last Name">
							</div>
						</div>
					
						<div class="form-group">
							<label for="inputCurrentLocation" class="col-lg-2 control-label">Current
								Location</label>
							<div class="col-lg-10">
								<input type="text" class="form-control"
									name="inputCurrentLocation" id="inputCurrentLocation"
									placeholder="Location">
							</div>
						</div>
						<div class="form-group">
							<label for="inputMobileNumber" class="col-lg-2 control-label">Mobile
								Number*</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="inputMobileNumber"
									id="inputMobileNumber" placeholder="Mobile Number">
							</div>
						</div>

						<div class="form-group">
							<label for="inputSex" class="col-lg-2 control-label">Gender*</label>
							<div class="col-lg-10">
								<div class="radio">
									<label> <input type="radio" name="inputSex"
										id="inputFemaleSex" value="female"> Female
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="inputSex"
										id="inputMaleSex" value="male"> Male
									</label>
								</div>
							</div>
						</div>

						<!--  Profession details -->
						<legend>Professional Details</legend>
						<div class="form-group">
							<label for="inputIndustry" class="col-lg-2 control-label">Industry</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="inputIndustry"
									id="inputIndustry" placeholder="IT, Accounting, Others....">
							</div>
						</div>

						<div class="form-group">
							<label for="inputFucntionalSkills" class="col-lg-2 control-label">Functions</label>
							<div class="col-lg-10">
								<input type="text" class="form-control"
									name="inputFucntionalSkills" id="inputFucntionalSkills"
									placeholder="Java, Helper, etc.">
							</div>
						</div>
						<div class="form-group">
							<label for="inputYearsOfExperience"
								class="col-lg-2 control-label">Experience</label>
							<div class="col-lg-10">
								<input type="text" class="form-control"
									name="inputYearsOfExperience" id="inputYearsOfExperience"
									placeholder="Year of Experience">
							</div>
						</div>

						<div class="form-group">
							<label for="inputSkills" class="col-lg-2 control-label">Skills</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="inputSkills"
									id="inputSkills" placeholder="Skills">
							</div>
						</div>
						<div class="form-group">
							<label for="inputResumeFile" class="col-lg-2 control-label">Resume</label>
							<div class="col-lg-10">
								 <input class="form-control" 	type="file" id="inputResumeFile">
								 <span
									class="help-block">500Kb size allowed. File type allowed - pdf, doc and docx</span>
							</div>
						</div>
						<!--  Policy and acceptance -->
						<div class="col-lg-10" style="margin-bottom: 10px">
							<input type="checkbox" > I have read and agree to <a>Jobsite privacy statement</a> and <a>terms of use</a></input>
						</div>
						

						<!--  Button to submit -->
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
		<div class="col-lg-3">
			<div class="well">
				<h4>To Show some advertisement</h4>
			</div>
		</div>
	</div>
	
	 <script src="resources/js/app/registration.js"></script>
	
</body>
</html>

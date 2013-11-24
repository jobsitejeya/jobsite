<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>JobSite - Registration</title>
    <%--<link rel="stylesheet" type="text/css" media="all" href="resources/js/selectize/css/selectize.css">--%>
</head>
<body>
<div class="row">
    <div class="col-lg-12">
        <div class="page-header">
            <h1 id="forms">Registration Form</h1>
        </div>
    </div>
</div>

<div class="container">
    <div class="row col-lg-7 col-lg-offset-3">
        <div class="well">
            <form role="form">
                <legend>Registration</legend>

                <div class="form-group">
                    <label for="inputEmail">Email</label>
                    <input type="email" class="form-control input-sm" id="inputEmail" placeholder="Email Address"/>
                </div>

                <div class="form-group">
                    <label for="inputPassword">Password</label>
                    <input type="password" class="form-control input-sm" id="inputPassword" placeholder="Password"/>
                </div>

                <div class="form-group">
                    <label for="inputRePassword">Re Enter Password</label>
                    <input type="password" class="form-control input-sm" id="inputRePassword" placeholder="Password"/>
                </div>
                <legend>Personal Information</legend>

                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-6">
                            <label for="inputFirstName">First name</label>
                            <input type="text" id="inputFirstName " placeholder="First Name"
                                   class="form-control input-sm"/>
                        </div>

                        <div class="col-lg-6">
                            <label for="inputLastName">Last name</label>
                            <input type="text" id="inputLastName" placeholder="Last Name"
                                   class="form-control input-sm"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputCity">City</label>
                   <%-- <input type="text" id="inputCity" class=" form-control input-sm"
                           placeholder="Chennai, Bangalore, Indore etc" value="chennai, bangalore, test"/>--%>
                    <select id="inputCity" class="form-control input-sm"></select>
                </div>

                <legend>Professional Info.</legend>

                <div class="form-group">
                    <label for="inputFunctionalArea">Functional Area</label>
                    <input type="text" class="form-control input-sm" id="inputFunctionalArea"
                           placeholder="IT Accounting, others"/>
                </div>

                <div class="form-group">
                    <label for="inputSkills">Skills</label>
                    <input type="text" class="form-control input-sm" id="inputSkills"
                           placeholder="Java, CA, Nurse, Watchman, etc"/>
                </div>

                <div class="form-group">
                    <label for="inputYears">Experience</label>

                    <div class="row">
                        <div class="col-lg-6"><input type="text" class="form-control input-sm" id="inputYears"
                                                     placeholder="Years"/></div>

                        <div class="col-lg-6"><input type="text" class="form-control input-sm" id="inputMonths"
                                                     placeholder="Months"/></div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="checkbox input-sm" for="checkbox">
                        <input type="checkbox" id="checkbox">
                        I agree to terms and conditions
                    </label>
                </div>

                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                <button class="btn  btn-danger btn-sm">Cancel</button>
            </form>
        </div>
    </div>
</div>

<script src="resources/js/app/registration.js"></script>

</body>
</html>

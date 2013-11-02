<html>
<head>
<title><sitemesh:write property='title' /></title>
<!-- Bootstrap -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="/resources/js/html5shiv.js"></script>
      <script src="/resources/js/respond.min.js"></script>
    <![endif]-->
<style>
body {
	padding-top: 55px;
}
</style>
<sitemesh:write property='head' />
</head>
<body>
	<!-- Add Menu -->	
	<div clas="container">
	<jsp:include page="../views/common/menu.jsp"></jsp:include>
	<div class="row" style="margin-left: 10px;margin-right:10px;">	
		<sitemesh:write property='body' />
	</div>
	</div>
	<script src="/resources/js/jquery-2.0.3.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/js/app/jobsite.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			app.dir(app);
			app.init();
		});
	</script>
</body>
</html>
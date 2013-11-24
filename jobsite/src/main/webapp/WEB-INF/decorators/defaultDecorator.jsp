<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title><sitemesh:write property='title'/></title>
    <c:set var="req" value="${pageContext.request}"/>
    <c:set var="url">${req.requestURL}</c:set>
    <c:set var="base" value="${fn:substring(url, 0, fn:length(url) - fn:length(req.requestURI))}${req.contextPath}/"/>
    <base href="${base}"/>
    <!-- Bootstrap -->
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
          media="screen"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="resources/js/html5shiv.js"></script>
    <script src="resources/js/respond.min.js"></script>
    <![endif]-->
    <script src="resources/js/jquery-2.0.3.js"></script>
    <script type="text/javascript" src="resources/js/jquery-2.0.3.js"></script>
    <link rel="stylesheet" type="text/css" media="all" href="resources/js/selectize/css/selectize.bootstrap3.css">
    <script type="text/javascript" src="resources/js/selectize/js/selectize.min.js"></script>

    <style>
        body {
            padding-top: 55px;
        }
    </style>


    <sitemesh:write property='head'/>
</head>
<body>
<!-- Add Menu -->
<div clas="container">
    <jsp:include page="../views/common/menu.jsp"></jsp:include>
    <div class="row" style="margin-left: 10px;margin-right:10px;">
        <sitemesh:write property='body'/>
    </div>
</div>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<%--<script src="resources/bootstrap/js/bootstrap.min.js"></script>--%>

<script type="text/javascript">
    $(document).ready(function () {
        app.dir(app);
        app.init();
    });
</script>
</body>
</html>
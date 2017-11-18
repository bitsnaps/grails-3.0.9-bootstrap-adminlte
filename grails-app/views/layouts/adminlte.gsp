<%
response.setHeader("Cache-Control","no-cache");  
response.setHeader("Cache-Control","no-store");     
response.setDateHeader("Expires", 0); 
response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta charset="UTF-8">
		<title><g:layoutTitle default="Dashboard"/></title>
		<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->		
		
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body class="skin-blue">
		<div class="wrapper">
	
			<div id="header">
			    <!-- header goes here -->
			    <g:render template="/_adminlte/header"></g:render>
			</div>
			
			<div id="aside">
				<!-- aside goes here -->
				<g:render template="/_adminlte/aside"></g:render>
			</div>
	
			<div id="content">
			  <!-- content goes here -->
			  <g:layoutBody/>
			</div>
	    
			<div id="footer">
			  <!-- footer goes here -->
			  <g:render template="/_adminlte/footer"></g:render>
			</div>
	
		</div><!-- .wrapper -->
		
	</body>
</html>

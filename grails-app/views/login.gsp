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
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
	</head>
	<body class="login-page">

        <div class="login-box">
          <div class="login-logo">
            <a href="#"><b>Dashboard</b> Strategy</a>
          </div><!-- /.login-logo -->
            <g:if test="${session['user'] != null}">
                <div class="login-box-body">
                    <p class="login-box-msg">You're already logged in.</p>
                    <g:form name="login-form" action="logout" controller="welcome">
                        <div class="row">
                            <div class="col-xs-4 pull-right">
                                <g:submitButton name="logout" value="Sign Out" 
                                         class="btn btn-primary btn-block btn-flat" />                    
                            </div>
                        </div>
                    </g:form>
                </div>
            </g:if>

          <g:if test="${session['user'] ==  null}">
            <div class="login-box-body">
              <p class="login-box-msg">Sign in using your system credentials</p>
              <!--<form action="index.jsf" method="post">-->

              <g:form name="login-form" action="authenticate">
              
                <div class="form-group has-feedback">
                  <!--<input type="text" class="form-control" placeholder="User name" />-->
                  <g:textField class="form-control" name="username" value="${login?.username}" required="true" placeholder="User Name" />
                  <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                
                <div class="form-group has-feedback">
                  <!--<input type="password"  />-->
                  <g:passwordField class="form-control" name="password" value="${login?.password}" required="true" placeholder="Password"/>
                  <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                
                <div class="row">
                  <div class="col-xs-4 pull-right">
                  
                  <g:submitButton name="signin" value="Sign In" class="btn btn-primary btn-block btn-flat" />
                    <!--<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>-->
                  </div><!-- .col -->
                </div>

				<g:if test="${flash.message}">
				<br />
					<div class="alert alert-danger alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
						<p>${flash.message}</p>
					</div>
				</g:if>

              </g:form>
              

            </div><!-- .login-box-body -->
          </g:if>
          
        </div><!-- .login-box -->

	</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS ログイン</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!--
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE
	DESIGNED & DEVELOPED by FreeHTML5.co

	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	-->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="css/logout.css">

    <!-- StyleSeet -->
    <style>

        .signin {
          display: block;
          position: relative;
          width: 250px;
          margin: 20px auto;
          padding: 20px;
          background-color: rgba(0,0,0,0.1);
          -webkit-border-radius: 5px;
          -moz-border-radius: 5px;
          border-radius: 5px;
          -webkit-box-shadow: inset 1px 1px 0 0 rgba(255,255,255,0.2), inset -1px -1px 0 0 rgba(0,0,0,0.2);
          -moz-box-shadow: inset 1px 1px 0 0 rgba(255,255,255,0.2), inset -1px -1px 0 0 rgba(0,0,0,0.2);
          box-shadow: inset 1px 1px 0 0 rgba(255,255,255,0.2), inset -1px -1px 0 0 rgba(0,0,0,0.2);
        }

        .signin .inputrow {
          position: relative;
        }
        .signin .inputrow label {
          position: absolute;
          top: 12px;
          left: 10px;
        }
        .signin .inputrow label:before {
          color: #538a9a;
          opacity: 0.4;
          -webkit-transition: opacity 300ms 0 ease;
          -moz-transition: opacity 300ms 0 ease;
          transition: opacity 300ms 0 ease;
        }
        .signin input[type="text"],
        .signin input[type="password"] {
          padding: 10px 12px 10px 32px;
          display: block;
          width: 100%;
          margin-bottom: 10px;
          border: 1px solid rgba(255,255,255,0.5);
          background-color: #fff;
          color: #333;
          font-size: 1em;
          font-weight: 300;
          outline: none;
          -webkit-border-radius: 5px;
          -moz-border-radius: 5px;
          border-radius: 5px;
          -webkit-transition: border-color 300ms 0 ease;
          -moz-transition: border-color 300ms 0 ease;
          transition: border-color 300ms 0 ease;
          -webkit-box-sizing: border-box;
          -moz-box-sizing: border-box;
          box-sizing: border-box;
        }
        .signin input[type="text"]:focus + label:before,
        .signin input[type="password"]:focus + label:before {
          opacity: 1;
        }
        .signin input[type="submit"] {
          -webkit-appearance: none;
          height: 40px;
          padding: 10px 12px;
          margin-bottom: 10px;
          background-color: #538a9a;
          text-transform: uppercase;
          color: #fff;
          border: 0px;
          float: right;
          margin: 0;
          outline: none;
          -webkit-border-radius: 5px;
          -moz-border-radius: 5px;
          border-radius: 5px;
        }
        .signin input[type="submit"]:hover {
          background-color: #5e98a8;
        }
        .signin input[type="submit"]:active {
          background-color: #4a7b89;
        }
        input[type="checkbox"] {
          display: none;
        }
        input[type="checkbox"] + label {
          position: relative;
          padding-left: 36px;
          font-size: 0.6em;
          font-weight: normal;
          line-height: 16px;
          opacity: 0.8;
          text-transform: uppercase;
          -webkit-user-select: none;
          -moz-user-select: none;
          user-select: none;
        }
        input[type="checkbox"] + label:before,
        input[type="checkbox"] + label:after {
          content: "";
          position: absolute;
          display: block;
          height: 16px;
          -webkit-border-radius: 30px;
          -moz-border-radius: 30px;
          border-radius: 30px;
        }
        input[type="checkbox"] + label:before {
          left: 0;
          top: -2px;
          width: 30px;
          background: rgba(0,0,0,0.3);
          -webkit-box-shadow: inset 1px 1px 1px 1px rgba(0,0,0,0.3);
          -moz-box-shadow: inset 1px 1px 1px 1px rgba(0,0,0,0.3);
          box-shadow: inset 1px 1px 1px 1px rgba(0,0,0,0.3);
        }
        input[type="checkbox"] + label:after {
          opacity: 0.3;
          background: #fff;
          top: 0px;
          left: 2px;
          height: 12px;
          width: 12px;
          -webkit-transition: all 200ms 0 ease;
          -moz-transition: all 200ms 0 ease;
          transition: all 200ms 0 ease;
        }
        input[type="checkbox"]:checked + label {
          opacity: 1;
        }
        input[type="checkbox"]:checked + label:after {
          opacity: 1;
          left: 16px;
        }
        .cf:before,
        .cf:after {
          content: " ";
          display: table;
        }
        .cf:after {
          clear: both;
        }
        .cf {
          *zoom: 1;
        }
    </style>

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
<jsp:include page="/WEB-INF/jsp/menupositon.jsp" />

		<div id="fh5co-main">
			<div class="fh5co-narrow-content">
				<div class="row row-bottom-padded-md">
					<div class="signin cf">
                        <h1>Login!</h1>
                        <p class="text-danger"><small>${errMsg}</small></p>
                        <link href="https://code.ionicframework.com/ionicons/1.4.1/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
                          <div class="avatar"></div>
                          <form action="Login" method= "post">
                            <div class="inputrow">
                              <input type="text" id="id" name ="id" placeholder="ログインID"/>
                              <label class="ion-person" for="name"></label>
                            </div>
                            <div class="inputrow">
                              <input type="password" id="pass" name="pass" placeholder="パスワード"/>
                              <label class="ion-locked" for="pass"></label>
                            </div>
                              <p><small>アカウントを持ってない場合は<a href="Usercreate">新規作成</a>。</small></p>
                            <input type="submit" value="Login"/>
                          </form>
                     </div>
				</div>
			</div>
		</div>


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>


	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>


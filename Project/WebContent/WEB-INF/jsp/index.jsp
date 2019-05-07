<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%@ page import="beans.Bbs_threadbean" %>
<%@ page import="java.util.List" %>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS HTML5 Bbs by FreeHTML5.co</title>
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

	<link rel="stylesheet" href="css/bootstrap.css" type="text/css">

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
			<aside id="fh5co-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
					<ul class="slides">
				   	<li style="background-image: url(images/hosi.jpg);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<h1>アツいやつな掲示板！</h1>
											<p>
                                                <a href="#smoothplay" class="btn btn-danger btn-demo popup-vimeo"><i class="icon-monitor"></i>とりあえず何か観る</a>
                                                <a class="btn btn-success btn-demo popup-vimeo" href="Bbsguide_medium"> <i class="icon-monitor"></i>　いろいろ観る</a>
                                            </p>
                                            <a class="btn btn-primary btn-learn btn-block" href="Usercreate">登録して参加したい！<i class="icon-arrow-right3"></i></a>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url(images/tower1.jpg);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<h1>読むだけならアカウントなくても見れちゃうZE!</h1>
											<h2>なので気軽に記事が読める！</h2>
											<p>
                                                <a href="#smoothplay" class="btn btn-danger btn-demo popup-vimeo"><i class="icon-monitor"></i>てきとうに観る</a>
                                                <a class="btn btn-success btn-demo popup-vimeo" href="bbsguide_medium.html"> <i class="icon-monitor"></i>　どんなのか観る</a>
                                            </p>
                                            <a class="btn btn-primary btn-learn btn-block" href="Usercreate">自分も参加したい！<i class="icon-arrow-right3"></i></a>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>

				  	</ul>
			  	</div>
			</aside>

			<div class="fh5co-narrow-content">
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft" id="smoothplay">今が旬！</h2>
				<div class="row row-bottom-padded-md">
				<% List<Bbs_threadbean> threadList = (List<Bbs_threadbean>) request.getAttribute("threadList");%>
				<% for( Bbs_threadbean btb : threadList ) {%>
					<div class="col-md-3 col-sm-6 col-padding animate-box" data-animate-effect="fadeInLeft">
						<div class="blog-entry">
							<a href="Bbs_main?id=<%= btb.getId() %>" class="blog-img"><img src="images/img-1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
							<div class="desc">
								<h3><a href="Bbs_main?id=<%= btb.getId() %>"><%= btb.getTitle() %></a></h3>
								<span><small>by <%= btb.getUser_name() %> </small></span>
								<p><%=btb.getMaintext() %></p>
								<a href="Bbs_main?id=<%= btb.getId() %>" class="lead">Read More <i class="icon-arrow-right3"></i></a>
							</div>
						</div>
					</div>
					<% } %>
				</div>
			</div>
       </div>

<jsp:include page="/WEB-INF/jsp/logoutmolder.jsp" />

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


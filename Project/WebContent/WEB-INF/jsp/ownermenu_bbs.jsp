<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Bbs_threadbean" %>
<%@ page import="beans.Userbean" %>
<%@ page import="java.util.List" %>

<%List<Bbs_threadbean> threadlist = (List<Bbs_threadbean>)request.getAttribute("threadlist");%>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS 管理者【掲示板】</title>
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
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft"><big>管理者機能【掲示板】</big></h2>
                <div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                【掲示板】
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li role="presentation"><a href="Ownermenu_user">【ユーザ】</a></li>
                                <li role="presentation"><a href="Ownermenu_bbs">【掲示板一覧】</a></li>

                            </ul>
                        </div>

                    <form class="navbar-form" role="search">
                                       <div class="form-group">
                                            <div class="form-group"><p>スレッドID検索</p>
                                            <input type="text" class="form-control" placeholder="スレッドID検索">
                                            </div>
                                           <p></p>
                                           <div class="form-group"><p>スレッド名検索</p>
                                            <input type="text" class="form-control" placeholder="スレッド名検索">
                                            </div>

                                        </div>
                    </form>

                <p></p>

				<div class="row row-bottom-padded-md">
				<% for (Bbs_threadbean threadbean : threadlist) {%>
					<div class="col-md-3 col-sm-6 col-padding animate-box" data-animate-effect="fadeInLeft">
						<div class="blog-entry">
							<a class="blog-img"><img src="images/img-1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
							<div class="desc">
								<h3><%= threadbean.getTitle() %></h3>
								<span><small>by <%= threadbean.getUser_name() %> </small> / <small> category </small> / <small> <i class="icon-comment"></i> <%= threadbean.getCategory_id() %> </small></span>
								<p><%= threadbean.getMaintext() %></p>
                                    <a class="btn btn-info btn-block" href="Bbs_main?id=<%= threadbean.getId() %>" role="button">詳細</a>
                                    <form action="Thread_delete" method ="post">
	                                    <input type="hidden" value="<%= threadbean.getId() %>" name = "tdid">
	                                    <input type="submit" class="btn btn-danger btn-block" value="削除">
                                    </form>
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


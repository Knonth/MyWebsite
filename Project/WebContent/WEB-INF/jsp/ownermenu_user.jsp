<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%@ page import="java.util.List" %>

<%List<Userbean> ublist = (List<Userbean>)request.getAttribute("userlist");%>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS 管理者【ユーザ】</title>
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
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft"><big>管理者機能【ユーザ】</big></h2>
                <div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                【ユーザ】
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li role="presentation"><a href="Ownermenu_user">【ユーザ】</a></li>
                                <li role="presentation"><a href="Ownermenu_bbs">【掲示板一覧】</a></li>

                            </ul>
                        </div>

                    <div class="navbar-form">
                                       <div>
                                            <form class="navbar-form" action = "Ownermenu_user" method="post"><p>ID検索</p>
                                            	<input type="text" class="form-control" placeholder="ID検索" name = "userid">
                                            	<input type="submit" value="検索" class="btn btn-primary">
                                            </form>
                                           <form class="navbar-form" action = "Ownermenu_user" method="post"><p>名前検索</p>
                                            	<input type="text" class="form-control" placeholder="名前検索">
                                            	<input type="submit" value="検索" class="btn btn-primary">
                                            </form>
                                           <form class="navbar-form" action = "Ownermenu_user" method="post"><p>生年月日検索</p>
                                            	<input type="date" class="form-control">～<input type="date" class="form-control">
                                            	<input type="submit" value="検索" class="btn btn-primary">
                                            </form>
                                        </div>
                    </div>


                <p>【※】赤字のユーザは通報を受けています。  【 ユーザID / 生年月日 / 通報（0...通常 1...通報されている）】</p>

				<div class="row row-bottom-padded-md">
				<% for (Userbean userbean : ublist) {%>
                <% if ( userbean.getReport_flag() == (0) ) {%>
					<div class="col-md-3 col-sm-6 col-padding animate-box" data-animate-effect="fadeInLeft">
						<div class="blog-entry">
							<a class="blog-img"><img src="images/img-1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
							<div class="desc">
								<h3><%= userbean.getName() %></h3>
								<span><small>ID <%= userbean.getUser_id() %> </small> / <small> <%= userbean.getBirth_date() %> </small> / <small> <i class="icon-comment"></i> <%= userbean.getReport_flag() %></small></span>
								<p><%= userbean.getUser_tweet() %></p>
                                    <a class="btn btn-info btn-block" href="Userguide_view?id=<%= userbean.getUser_id() %>" role="button">詳細</a>
                                    <a class="btn btn-primary btn-block" href="Userupdate?id=<%= userbean.getUser_id() %>" role="button">更新</a>
                                    <a class="btn btn-danger btn-block" href="Userdelete?id=<%= userbean.getUser_id() %>" role="button">削除</a>
							</div>
						</div>
					</div>
					<% } else { %>
					<div class="col-md-3 col-sm-6 col-padding animate-box" data-animate-effect="fadeInLeft">
						<div class="blog-entry">
							<a class="blog-img"><img src="images/img-1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
							<div class="desc">
								<h3 class="text-danger"><%= userbean.getName() %></h3>
								<span><small  class="text-danger">ID <%= userbean.getUser_id() %> </small> / <small> <%= userbean.getBirth_date() %> </small>/<small  class="text-danger"><i class="icon-comment"></i> <%= userbean.getReport_flag() %></small></span>
								<p><%= userbean.getUser_tweet() %></p>
                                    <a class="btn btn-info btn-block" href="Userguide_view?id=<%= userbean.getUser_id() %>" role="button">詳細</a>
                                    <a class="btn btn-primary btn-block" href="Userupdate?id=<%= userbean.getUser_id() %>" role="button">更新</a>
                                    <a class="btn btn-danger btn-block" href="Userdelete?id=<%= userbean.getUser_id() %>" role="button">削除</a>
							</div>
						</div>
					</div>
					<% } %>
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


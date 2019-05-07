<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>
<%Userbean vub = (Userbean)request.getAttribute("vub"); %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS ユーザ名無し</title>
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
		</head>
	<body>
<jsp:include page="/WEB-INF/jsp/menupositon.jsp" />

		<div id="fh5co-main">
			<div class="fh5co-narrow-content">
				<h2 class="fh5co-heading"><strong>【ユーザID <%= vub.getUser_id() %>】<%= vub.getName() %></strong></h2>
				<div class="row row-bottom-padded-md">
					<div class="col-md-3 col-sm-6 col-padding text-center">
						<a class="work image-popup" style="background-image: url(images/oops.jpg);">
						</a>
					</div>
                    <div class="col-md-3 col-sm-6 col-padding text-center">
						<a>
							<div class="desc">
								<h3>ログインID</h3>
								<p><%= vub.getLogin_id() %></p>
							</div>
						</a>
					</div>

					<div class="col-md-3 col-sm-6 col-padding text-center">
						<a>
							<div class="desc">
								<h3>名前</h3>
								<p><%= vub.getName() %></p>
							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-padding text-center">
						<a>
							<div class="desc">
								<h3>生年月日</h3>
								<p><%= vub.getBirth_date() %></p>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-padding text-center ">
						<a>
							<div class="desc">
								<h3>一言</h3>
								<p><%= vub.getUser_tweet()%></p>
							</div>
						</a>
					</div>

                </div>


                <h2>作成したスレッド</h2>
                 <div class="bs-component">
                          <table class="table table-striped table-hover-responsive">
                            <thead>
                              <tr>
                                <th></th>
                                <th>カテゴリ</th>
                                <th>タイトル</th>
                                <th>本文</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="warning">
                                <td><a href="Bbsmain">6</a></td>
                                <td>ミディアム</td>
                                <td><a href="Bbsmain">タイトル</a></td>
                                <td><a href="Bbsmain">本文</a></td>

                              </tr>
                              <tr class="warning">
                                <td><a href="Bbsmain">6</a></td>
                                <td>ウェルダン</td>
                                <td><a href="Bbsmain">タイトル</a></td>
                                <td><a href="Bbsmain">本文</a></td>

                              </tr>
                            </tbody>
                          </table>
                    </div>
                    <a href="#top">▲上へ戻る</a>
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


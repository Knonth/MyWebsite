<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>
<%Userbean ub =  (Userbean)request.getAttribute("ub");%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ユーザ削除確認</title>
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

	<% if (u.getUser_id() != (10)) {%>
		<div id="fh5co-main">
			<div class="fh5co-narrow-content">
				<div class="row row-bottom-padded-md">

					<div class="animate-box" data-animate-effect="fadeInLeft" align="center">
						<h1 class="text-danger">本当にログイン情報を削除してもよろしいですか？</h1>
                        <p class="text-danger">削除したら情報は復元できません。後悔のないようにお願いします。</p>

                        <h2>ユーザID【<%= u.getUser_id() %>】</h2>

                        <img src="images/skytree.jpg" width="100px">
                        <p></p>
                        <h3><%= u.getName() %></h3>
						<div align="center">
						<form action ="Userdelete" method ="post">
							<input type="hidden" value="<%= u.getUser_id() %>" name = "delid">
                            <p><strong>本当に良いければ</strong></p>
                            <a href="Userguide_up?id=<%= u.getUser_id() %>" class="btn btn-primary btn-lg">戻る</a>
                            <a>&nbsp;</a>
                            <a><input type="submit" value="削除" class="btn btn-danger btn-lg"></a>
                          </div>
					 </form>
					</div>
				</div>
			</div>
		</div>

		<%} else { %>
				<div id="fh5co-main">
			<div class="fh5co-narrow-content">
				<div class="row row-bottom-padded-md">

					<div class="animate-box" data-animate-effect="fadeInLeft" align="center">
						<h1 class="text-danger">本当にログイン情報を削除してもよろしいですか？</h1>
                        <p class="text-danger">削除したら情報は復元できません。後悔のないようにお願いします。</p>

                        <h2>ユーザID【<%= ub.getUser_id() %>】</h2>

                        <img src="images/skytree.jpg" width="100px">
                        <p></p>
                        <h3><%= ub.getName() %></h3>
						<div align="center">
						<form action ="Userdelete" method ="post">
							<input type="hidden" value="<%= u.getUser_id() %>" name = "delid">
                            <p><strong>本当に良いければ</strong></p>
                            <a href="Userguide_up?id=<%= ub.getUser_id() %>" class="btn btn-primary btn-lg">戻る</a>
                            <a>&nbsp;</a>
                            <a><input type="submit" value="削除" class="btn btn-danger btn-lg"></a>
                          </div>
					 </form>
					</div>
				</div>
			</div>
		</div>
		<% } %>

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
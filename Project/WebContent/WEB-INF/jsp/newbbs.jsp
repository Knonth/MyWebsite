<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS スレッド新規投稿</title>
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
    <style>
        form.action{
        background-color: #99cc00
        </style>

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
<jsp:include page="/WEB-INF/jsp/menupositon.jsp" />

            <div id="fh5co-main">

                <div class="fh5co-narrow-content">
                    <div class="row">
                        <div class="col-md-4">
                            <h2>新規投稿！</h2>
                        </div>
                    </div>
                        <form action="Newbbs"  method = "post">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">

                                            <div class="form-group">
                                            	<!-- プロフィール画像はセッションスコープから取り出す予定 -->
                                                <img src="images/skytree.jpg" width="100px" name = "userprofilepic">
                                                <p>ID <%= u.getUser_id() %></p>
                                                <p class="lead"><%= u.getName() %></p>
                                            </div>
                                            <div class="form-group">
                                                <p>カテゴリ</p>
                                              <label class="checkbox-inline">
                                              <!-- １・・ミディアム　２・・・レア　３・・ウェルダン -->
                                                <input type="radio" value="1" name ="category">レア
                                                   </label>
                                              <label class="checkbox-inline">
                                                <input type="radio" value="2" name ="category">ミディアム
                                              </label>
                                                <label class="checkbox-inline">
                                                <input type="radio" value="3" name ="category">ウェルダン
                                                  </label>
                                               <p></p>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="タイトル" name = "bbstitle">
                                            </div>
                                            <div class="form-group">
                                                <input type="file" name = "threadphoto">
                                            </div>

                                            <div class="form-group">
                                                <textarea  id="message" cols="30" rows="7" class="form-control" placeholder="Message" name="maintext"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <input type="submit" class="btn btn-primary btn-md" value="投稿">
                                            </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
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
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>


	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>


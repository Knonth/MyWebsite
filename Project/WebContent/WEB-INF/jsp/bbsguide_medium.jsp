<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%@ page import="beans.Bbs_categorybean" %>
<%@ page import="beans.Bbs_threadbean" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List" %>

<%Userbean u =(Userbean)session.getAttribute("ub"); %>
<% ArrayList<Bbs_categorybean> bcbList = (ArrayList<Bbs_categorybean>) request.getAttribute("bcblist"); %>
<%List<Bbs_threadbean> threList = (List<Bbs_threadbean>) request.getAttribute("threlist"); %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS 掲示板一覧【ミディアム】</title>
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

	<link href="https://https://fonts.googleapis.com/earlyaccess/notosansjapanese.css" rel="stylesheet" />

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

    <style type="text/css">
    .select select {
	-width: 100%;
	padding: 10px;
	color : #228896;
	border: 1px solid #999;
	background: #eee;
	background:  right 50% no-repeat, -webkit-linear-gradient(#fff 100%);
	background:  right 50% no-repeat, linear-gradient(#efebe1 ,#efebe1 100%);
	font-style:
	background-size: 20px, 100%;
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
                <h1 id="tables" class="lead">掲示板一覧</h1>
                <div class="bs-docs-section">

                <div class="row">
                  <div class="col-lg-12">
                    <div class="page-header">

                        <div class="select">
                      <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                カテゴリ【ミディアム】
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li role="presentation"><a href="bbsguide_medium.html">カテゴリ【ミディアム】</a></li>
                                <li role="presentation"><a href="bbsguide_rare.html">カテゴリ【レア】</a></li>
                                <li role="presentation"><a href="bbsguide_welldone.html">カテゴリ【ウェルダン】</a></li>
                            </ul>
                           <!--  <label>カテゴリ  </label>
                           <select name="select_category_id">
						 <%--
									for (Bbs_categorybean bcb : bcbList) {
								%>
								<option value="<%=bcb.getId()%>"> <%=bcb.getCategory_name() %> </option>
								<%
									}
								%>
								<%
									//　ページスコープに設定
									pageContext.setAttribute("StringData","select_category_id");
									--%>
							</select> -->
                        </div>
                    </div>

                        <div class="bs-component">
                          <table class="table table-striped table-hover-responsive">
                            <thead>
                              <tr>
                                <th>スレッドID</th>
                                <th>タイトル</th>
                                <th>本文</th>
                                <th>カテゴリ</th>
                              </tr>
                            </thead>
                            <tbody>
                            <% for (Bbs_threadbean bthre : threList) {%>
                              <tr class="warning">
                                <td><a href="Bbs_main?id=<%= bthre.getId() %>"><%= bthre.getId() %></a></td>
                                <td><a href="Bbs_main?id=<%= bthre.getId() %>"><%= bthre.getTitle() %></a></td>
                                <td><a href="Bbs_main?id=<%= bthre.getId() %>"><%= bthre.getMaintext() %></a></td>
                                <td><a href="Bbs_main?id=<%= bthre.getId() %>"><%= bthre.getCategory_id() %></a></td>
                                <td></td>
                              </tr>
                              <% } %>
                            </tbody>
                          </table>

                        </div>
                  </div>
                </div>
                </div>
            </div>
        <div class="fh5co-narrow-content">
        <% if (u == null) {%>
            <div class="row">
                <div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
                    <h1 class="fh5co-heading-colored">スレ建てたいなら</h1>
                </div>
            </div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                        <p class="fh5co-lead">↓　まずは新規登録だ☆</p>
                        <p><a href="Usercreate" class="btn btn-primary">新規登録</a></p>
                    </div>
                </div>
                <%} else { %>
                <div class="row">
	                <div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
	                    <h1 class="fh5co-heading-colored">スレ建てたいなら</h1>
	                </div>
            	</div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                        <p class="fh5co-lead">↓　コチラ</p>
                        <p><a href="Newbbs" class="btn btn-primary">スレッド立ち上げ</a></p>
                    </div>
                </div>
                <% } %>
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


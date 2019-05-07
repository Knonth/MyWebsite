<%@page import="beans.Bbs_postbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%@ page import="beans.Bbs_categorybean" %>
<%@ page import="beans.Bbs_threadbean" %>
<%@ page import="beans.Bbs_postbean" %>
<%@ page import="java.util.List" %>

<%Userbean u =(Userbean)session.getAttribute("ub"); %>
<%Bbs_threadbean btb =  (Bbs_threadbean)request.getAttribute("tub");%>
<%Bbs_postbean ptb =  (Bbs_postbean)request.getAttribute("pub");%>
<%List<Bbs_postbean> postList = (List<Bbs_postbean>) request.getAttribute("postlist"); %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<!--  ロム専にやさしい -->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>THEBBS <%= btb.getTitle() %></title>
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
    <link href="css/modal.css" rel="stylesheet">

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

                <div class="row-bottom-padded-md">
                    <div class="row-bottom-padded-md">
                        <div class="col-padding">
                            <div class="blog-entry">
                                <div class="desc">
                                    <a id="top">スレッドID 【<%= btb.getId() %>】</a>
                                    <h1 class="text-left"><%= btb.getTitle() %></h1>
                                    <% if (u != null)  {%>
                                    	<% if (btb.getUser_id() == u.getUser_id() )  {%>
                                    <form action = "Thread_delete" method = "get">
                                    	<input type ="hidden" value = "<%= btb.getId()%>" name = "tdid" >
	                                    <span class="text-right"><input type ="submit" class="btn btn-warning" value ="このスレッドを削除"></span>
	                                    </form>
	                                    <% } %>
                                    <% } %>
                                    <span><a href="userguide_view.html"><img src="images/skytree.jpg" width="50px"></a><small>/</small><small>ID <%= btb.getUser_id() %></small><small>/</small><%= btb.getUser_name() %></span>
                                   	<span class="text-right"><a href="#report"> 通報</a></span>
                                    <p><%= btb.getMaintext() %></p>
                                    <a><img src="images/img-1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by     FreeHTML5.co"></a>
                                   <% if (u != null)  {%>
                                    <p class="text-right"><a href="#res">返信</a></p>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                        <!-- ぬるぽ対策で単体のリクエストスコープも用いる -->
				<% if (ptb != null) {%>
				<%for (Bbs_postbean bpb : postList) { %>
				<!-- 一覧から踏んだリクエストと一致させる　リクエストスコープのだと表示がおかしくなるので拡張for文を用いる -->
				<% if (bpb.getThread_id() == ptb.getThread_id()) {%>
                 <div class="row-bottom-padded-md">
                        <div class="col-padding">
                            <div class="blog-entry">
                                <div class="desc">
                                    <a>1  :</a>
                                    <span><span><a href="userguide_view.html"><img src="images/skytree.jpg" width="50px"></a><small>/</small><small>ID <%= bpb.getUser_id()%></small><small>/</small> <%= bpb.getUser_name()%> </span>
                                    <% if (u != null)  {%>
                                    <span class="text-right"><a href="#commentdelete">削除</a> /<a href="#report"> 通報</a></span>
                                    <% } %>
                                    <p><%= bpb.getText()%></p>
                                    <a><img src="images/img-1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by FreeHTML5.co"></a>
                                    <% if (u != null)  {%>
                                    <p class="text-right"><a href="#res">返信</a></p>
                                    <% } %>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <% if (ptb != null) {%>
<section>
<div id="contents">
    <div id="modal">
        <div id="commentdelete">
        <form action="Post_delete" method = "post">
            <a href="#" class="close_overlay posision: fixed;">×</a>
            <div class="modal_window">
                <h2>commentを削除</h2>
                <p>コメントを削除します宜しいでしょうか。</p>
                <p>よろしければ<br />
                <input type="hidden" value = "<%= ptb.getId()%>" name = "id">
                <input type="hidden" value = "<%= ptb.getThread_id()%>" name = "thread_id">
                <input type="submit" class="btn btn-warning" value="削除"> <br />
                <p>そうでなければこのウィンドウを閉じる際は、ウィンドウ外をクリックするか、<br />
                ×をクリック。</p>
                <a href="#">【×】CLOSE</a>
            </div><!--/.modal_window-->
            </form>
        </div><!--/#open01-->

        <div id="deleteok">
            <a href="#" class="close_overlay posision: fixed;">×</a>
            <div class="modal_window">
                <h2>commentを削除完了。</h2>
                <p>コメントを削除しました！</p>
                <p>ウィンドウ外をクリックするか、<br />
                ×をクリックで閉じます。</p>
                <a href="#">【×】CLOSE</a>
            </div><!--/.modal_window-->
        </div>

        <div id="report">
                    <a href="#" class="close_overlay posision: fixed;">×</a>
                    <div class="modal_window">
                    <form action="User_report" method = "post">
                        <h2>コメントのユーザを通報</h2>
                        <input type="hidden" value = "<%= ptb.getId()%>" name = "posid">
                        <input type="hidden" value = "<%= ptb.getUser_id()%>" name = "urid">
                        <p>ユーザ名「<%= ptb.getUser_name()%>」を通報します</p>
                        <p>通報しますか<br />
                        <input type="submit" class="btn btn-warning" value="通報"> <br />
                        <p>そうでなければこのウィンドウを閉じる際は、ウィンドウ外をクリックするか、<br />
                        ×をクリック。</p>
                        <a href="#">【×】CLOSE</a>
                     </form>
                    </div>
        </div>

        <div id="reportok">
                    <a href="#" class="close_overlay posision: fixed;">×</a>
                    <div class="modal_window">
                        <h2>通報完了。</h2>
                        <p>ユーザ名「いいい」を通報しますた。</p>
                        <p>ウィンドウ外をクリックするか、<br />
                            ×をクリックで閉じます。</p>
                        <a href="#">【×】CLOSE</a>
                    </div><!--/.modal_window-->
        </div>

    </div><!--/#modal-->

</div><!--/#contents-->
            </section>

 <% } %>
                    <% } %>
                  <% } %>
				<% } %>

            </div>
        </div>
        <div align="center"><a href="#top">▲上へ戻る </a></div>

         <div class="fh5co-narrow-content">
         <!--  コメント欄はログイン時に展開 -->
		<% if (u != null)  {%>
                            <form action="Bbs_main" method = "post">
                            ${ errMsg }
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                                <div class="form-group" id = "res">
                                                	<!--  ユーザに関連する機能はセッションから取る -->
                                                    <img src="images/skytree.jpg" width="100px"><br>
                                                    <p class="lead"><%= u.getName() %> <span>/</span><span> ID<%= u.getUser_id() %></span></p>

                                                	<input type = "hidden" value = "<%= btb.getId() %>" name = "threadid">
                                                    <input type="file" name = "postfile">

                                                    <textarea  id="message" cols="30" rows="7" class="form-control" placeholder="Message" name ="posttext"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <input type="submit" class="btn btn-primary btn-md" value="投稿">
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </form>

            <% } else { %>
             <div class="row">
	                <div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
	                    <h1 class="fh5co-heading-colored">カキコミたいなら</h1>
	                </div>
            	</div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                        <p class="fh5co-lead">↓　まずはログインだ☆</p>
                        <p><a href="Login" class="btn btn-primary">ログイン</a></p>
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
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>


	<!-- MAIN JS -->
	<script src="js/main.js"></script>


	</body>
</html>


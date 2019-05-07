<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>

<!DOCTYPE html>
         <div id="fh5co-page">
                <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
                    <aside id="fh5co-aside" role="complementary" class="border js-fullheight">

                            <h1 id="fh5co-logo"><a href="Index">THEBBS</a></h1>

                            <nav id="fh5co-main-menu" role="navigation">
							<% if (u ==  null) { %>
								<ul>
                                   	<ul>
										<li><a href="Login">ログイン</a></li>
                                        <li><a href="Usercreate">アカウント新規登録</a></li>
                                        <form class="navbar-form navbar-left" role="search">
			                                <div class="form-group">
			                                    <div class="form-group">
			                                        <input type="text" class="form-control" placeholder="検索">
			                                    </div>
			                                </div>
			                            </form>
                                        <li><p></p></li>
                                        <li><a href="Bbsguide_medium">掲示板一覧</a></li>
                                      </ul>
                               	</ul>

                            	<%} else if ( u.getUser_id() == (10) )  { %>
                                <ul>
                                    <ul>
                                    	<!--　管理者の場合 -->
                                        <li><a href="Ownermenu_bbs?id=<%= u.getUser_id() %>"><%= u.getName() %></a></li>

                                        <form class="navbar-form navbar-left" role="search">
			                                <div class="form-group">
			                                    <div class="form-group">
			                                        <input type="text" class="form-control" placeholder="検索">
			                                    </div>
			                                </div>
			                            </form>
                                        <li><p></p></li>
                                        <li><a href="Bbsguide_medium">掲示板一覧</a></li>
                                        <li><a href="#logout">ログアウト</a></li>
                                    </ul>
                                </ul>
	                                <% } else if ( u.getUser_id() != (10) ) { %>
	                                	<ul>
	                                    	<ul>
		                                        <li><a href="Userguide_up?id=<%= u.getUser_id()%>"><%= u.getName() %></a></li>
		                                        <form class="navbar-form navbar-left" role="search">
					                                <div class="form-group">
					                                    <div class="form-group">
					                                        <input type="text" class="form-control" placeholder="検索">
					                                    </div>
					                                </div>
					                            </form>
		                                        <li><p></p></li>
		                                        <li><a href="Bbsguide_medium">掲示板一覧</a></li>
		                                        <li><a href="#logout">ログアウト</a></li>
	                                        </ul>
	                                	</ul>
                                		<% } %>

                            </nav>

                                <div class="fh5co-footer">
                            <!--    <ul>
                                        <li><a href="#"><i class="icon-facebook2"></i></a></li>
                                        <li><a href="#"><i class="icon-twitter2"></i></a></li>
                                        <li><a href="#"><i class="icon-instagram"></i></a></li>
                                        <li><a href="#">LINE</a></li>
                                    </ul> -->

                                    <p><small>Designed <span>&copy; 2016 Blend Free HTML5. All Rights Reserved.<span>Designed by <a href="http://freehtml5.co/" target="_blank">FreeHTML5.co</a> </span> <span>Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></span> <span>Free html5 templates Made by <a href="http://freehtml5.co/" target="_blank">freehtml5.co</a></span></span></small></p>
                                </div>
                    </aside>
            </div>
</html>
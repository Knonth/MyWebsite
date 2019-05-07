<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Userbean" %>
<%Userbean u =(Userbean)session.getAttribute("ub"); %>

<!DOCTYPE html>
<html>
<div id="contents">
<div id="modal">
<div id="logout">
<a href="#" class="close_overlay">×</a>
<div class="modal_window">
<h2>Logout</h2>
<p>ログアウトしますか？</p>
<p>よろしければ<br />
<a class="btn btn-success" href="Logout">ログアウト</a> <br />
<p>そうでなければこのウィンドウを閉じる際は、ウィンドウ外をクリックするか、<br />
×をクリック。</p>
<a href="#">【×】CLOSE</a>
</div><!--/.modal_window-->
</div><!--/#open01-->
</div>
</div>
</html>
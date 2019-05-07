<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div id="commentdelete">
        <form action="post_delete" method = "post">
            <a href="#" class="close_overlay posision: fixed;">×</a>
            <div class="modal_window">
                <h2>commentを削除</h2>
                <p>コメントを削除します宜しいでしょうか。</p>
                <p>よろしければ<br />
                <input type="submit" class="btn btn-warning" value="削除"> <br />
                <p>そうでなければこのウィンドウを閉じる際は、ウィンドウ外をクリックするか、<br />
                ×をクリック。</p>
                <a href="#">【×】CLOSE</a>
            </div><!--/.modal_window-->
            </form>
        </div><!--/#open01-->
</html>
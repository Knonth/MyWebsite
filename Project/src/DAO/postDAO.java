package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Bbs_postbean;

public class postDAO {

	public void BbsPost(String pmassage, String pphoto, int user_id, String pprofile_photo, String thread_id, String user_name) {
        Connection conn = null;
        try {
        	//SELECT文
        	conn = DBManager.getConnection();
            String sql = "INSERT INTO bbs_post ( massage, post_photo, user_id, profile_photo, thread_id, create_date, update_date, user_name ) VALUES ( ?, ?, ?, ?, ?, now(), now(), ? )";

            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, pmassage);
            pStmt.setString(2, pphoto);
            pStmt.setInt(3, user_id);
            pStmt.setString(4, pprofile_photo);
            pStmt.setString(5, thread_id);
            pStmt.setString(6, user_name);

            int rs = pStmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();

                }
            }
        }
	}


	 public List<Bbs_postbean> findAllforPost() {
	        Connection conn = null;
	        List<Bbs_postbean> postList = new ArrayList<Bbs_postbean>();

	            conn = DBManager.getConnection();
	            try {
	                conn = DBManager.getConnection();

	                String sql = "SELECT id, massage, post_photo, user_id, profile_photo, thread_id, create_date, update_date, user_name FROM bbs_post";
	                Statement stmt = conn.createStatement();
	                ResultSet rs = stmt.executeQuery(sql);

	                while (rs.next()) {
	                    int id = rs.getInt("id");
	                    String massage = rs.getString("massage");
	                    String post_photo = rs.getString("post_photo");
	                    int user_id = rs.getInt("user_id");
	                    String profile_photo = rs.getString("profile_photo");
	                    int thread_id = rs.getInt("thread_id");
	                    String create_date = rs.getString("create_date");
	                    String update_date = rs.getString("update_date");
	                    String user_name = rs.getString("user_name");
	                    Bbs_postbean post = new Bbs_postbean(id, massage, post_photo, user_id, profile_photo, thread_id, create_date, update_date, user_name);
	                    postList.add(post);
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	                return null;
	            } finally {

	                if (conn != null) {
	                    try {
	                        conn.close();
	                    } catch (SQLException e) {
	                        e.printStackTrace();
	                        return null;
	                    }
	                }
	            }
	            return postList;
	        }


	public Bbs_postbean Bbs_postExtract(String id) {
		   Connection conn = null;
		   Bbs_postbean postbean = new Bbs_postbean();

	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();
	            //↓　sqlのスペース入れ忘れ注意　くっついた扱いになりエラーになる
	            String sql = "SELECT "
            					+	" bbs_post. * , bbs_user. * "
	            				+ " FROM "
            					+ 	"bbs_post "
        						+ "INNER JOIN bbs_user "
        						+ 	"ON bbs_post.user_id = bbs_user.id "
        						+ "WHERE "
            					+ "bbs_post.thread_id = ? ";

    		PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, id);
	            ResultSet rs = pStmt.executeQuery();

	            while (rs.next()) {
	            	int post_id = rs.getInt("id");
	            	String massage = rs.getString("massage");
	            	String post_photo = rs.getString("post_photo");
	            	int user_id = rs.getInt("user_id");
	            	String profile_photo = rs.getString("profile_photo");
	            	int thread_id = rs.getInt("thread_id");
	            	String create_date = rs.getString("create_date");
	            	String user_name = rs.getString("user_name");

	            	postbean.setId(post_id);
	            	postbean.setText(massage);
	            	postbean.setPost_photo(post_photo);
	            	postbean.setUser_id(user_id);
	            	postbean.setProfile_photo(profile_photo);
	            	postbean.setThread_id(thread_id);
	            	postbean.setCreate_date(create_date);
	            	postbean.setUser_name(user_name);

	                return  postbean;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return null;
	                }
	            }
	        }
	        return null;
	}


	public Bbs_postbean PostDelete(String id) {
        Connection conn = null;
        try {
            // データベースへ接続、SELECT文で文字内のを呼び、書き換えるため次はUPDATE文を使いユーザ識別するためのWHERE文も使う
        	conn = DBManager.getConnection();
            // INSERT文を準備
            String sql = "DELETE FROM bbs_post WHERE id = ? ";

         // SELECTを実行し、結果表を取得
            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, id);
            int rs = pStmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

            // データベース切断
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();

                }
            }
        }
		return null;
  }

}

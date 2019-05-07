package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Userbean;

public class userDAO {

	 public List<Userbean> findAll() {
	        Connection conn = null;
	        List<Userbean> ubList = new ArrayList<Userbean>();
	            // データベースへ接続
	            conn = DBManager.getConnection();
	            try {
	                // データベースへ接続
	                conn = DBManager.getConnection();
	                // SELECT文を準備
	                String sql = "SELECT id, login_id, name, birth_date, profile_photo, create_date, update_date, password, user_tweet, report_flag FROM bbs_user";
	                 // SELECTを実行し、結果表を取得
	                Statement stmt = conn.createStatement();
	                ResultSet rs = stmt.executeQuery(sql);

	                while (rs.next()) {
	                    int id = rs.getInt("id");
	                    String logid = rs.getString("login_id");
	                    String name = rs.getString("name");
	                    String birthdy = rs.getString("birth_date");
	                    String profphoto = rs.getString("profile_photo");
	                    int createdy = rs.getInt("create_date");
	                    int updatedy = rs.getInt("update_date");
	                    String pass = rs.getString("password");
	                    String utweet = rs.getString("user_tweet");
	                    int reportf = rs.getInt("report_flag");
	                    Userbean user = new Userbean(id, logid, name, birthdy, profphoto, createdy, updatedy, pass, utweet, reportf);
	                    ubList.add(user);
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	                return null;
	            } finally {
	                // データベース切断
	                if (conn != null) {
	                    try {
	                        conn.close();
	                    } catch (SQLException e) {
	                        e.printStackTrace();
	                        return null;
	                    }
	                }
	            }
	            return ubList;
	        }


	 public Userbean findByLoginId(String loginId, String pass) {
		   Connection conn = null;
		   Userbean userbean = new Userbean();

	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // SELECT文を準備
	            String sql = "SELECT * FROM bbs_user where login_id = ? and password = ?";

      		PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, loginId);
	            pStmt.setString(2, pass);
	            ResultSet rs = pStmt.executeQuery();

	            while (rs.next()) {
	                String logid = rs.getString("login_id");
	                String logpass = rs.getString("password");
	                int userid = rs.getInt("id");
	                String logname = rs.getString("name");
	                String profilephoto = rs.getString("profile_photo");
	                String lbirthdy = rs.getString("birth_date");
	                int lcreatedate = rs.getInt("create_date");
	                int lupdate = rs.getInt("update_date");
	                String lusetweet = rs.getString("user_tweet");
	                int lreportflag = rs.getInt("report_flag");

	                userbean.setLogin_id(logid);
	                userbean.setPassword(logpass);
	                userbean.setUser_id(userid);
	                userbean.setName(logname);
	                userbean.setProfile_photo(profilephoto);
	                userbean.setBirth_date(lbirthdy);
	                userbean.setUser_createdate(lcreatedate);
	                userbean.setUser_id(userid);
	                userbean.setUser_updatedate(lupdate);
	                userbean.setUser_tweet(lusetweet);
	                userbean.setReport_flag(lreportflag);

	                return userbean;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            // データベース切断
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


	 public Userbean findByUser(String id) {
		   Connection conn = null;
		   Userbean userbean = new Userbean();

	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // SELECT文を準備
	            String sql = "SELECT * FROM bbs_user where id = ?";

	            //↓管理者のIDでユーザ検索につかっちゃおう
    		PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, id);
	            ResultSet rs = pStmt.executeQuery();

	            while (rs.next()) {
	            	int userid = rs.getInt("id");
	                String logid = rs.getString("login_id");
	                String pass = rs.getString("password");
	                String name = rs.getString("name");
	                String profilephoto = rs.getString("profile_photo");
	                String birthdy = rs.getString("birth_date");
	                int createdate = rs.getInt("create_date");
	                int update = rs.getInt("update_date");
	                String usetweet = rs.getString("user_tweet");
	                int reportflag = rs.getInt("report_flag");

	                userbean.setUser_id(userid);
	                userbean.setLogin_id(logid);
	                userbean.setPassword(pass);
	                userbean.setName(name);
	                userbean.setProfile_photo(profilephoto);
	                userbean.setBirth_date(birthdy);
	                userbean.setUser_createdate(createdate);
	                userbean.setUser_updatedate(update);
	                userbean.setUser_tweet(usetweet);
	                userbean.setReport_flag(reportflag);

	                return  userbean;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            // データベース切断
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


		public void Usercreate(String clogid, String cname, String cbirthd, String profile_picture, String pass, String tweet) {
	        Connection conn = null;
	        try {
	            // データベースへ接続
	        	conn = DBManager.getConnection();
	            // INSERT文を準備
	            String sql = "INSERT INTO bbs_user ( login_id , name , birth_date , profile_photo , create_date , update_date , password , user_tweet , report_flag ) VALUES (?,?,?,?,now(),now(),?, ? ,0)";

	         // SELECTを実行し、結果表を取得
	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, clogid);
	            pStmt.setString(2, cname);
	            pStmt.setString(3, cbirthd);
	            pStmt.setString(4, profile_picture);
	            pStmt.setString(5, pass);
	            pStmt.setString(6, tweet);

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
		}


		public void Userupdate(String upd_id, String upd_logid, String upd_name, String upd_birthd, String upd_photo , String upd_pass, String upd_tweet) {
	        Connection conn = null;
	        try {
	            // データベースへ接続
	        	conn = DBManager.getConnection();
	            // INSERT文を準備
	            String sql = "UPDATE bbs_user SET login_id = ? , name = ? , birth_date = ? , profile_photo = ? , update_date = now() , password = ? , user_tweet = ?  WHERE id = ? ";

	         // SELECTを実行し、結果表を取得
	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, upd_logid);
	            pStmt.setString(2, upd_name);
	            pStmt.setString(3, upd_birthd);
	            pStmt.setString(4, upd_photo);
	            pStmt.setString(5, upd_pass);
	            pStmt.setString(6, upd_tweet);
	            pStmt.setString(7, upd_id);

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
		}


		public Userbean UserDelete(String id) {
	        Connection conn = null;
	        try {
	            // データベースへ接続、SELECT文で文字内のを呼び、書き換えるため次はUPDATE文を使いユーザ識別するためのWHERE文も使う
	        	conn = DBManager.getConnection();
	            // INSERT文を準備
	            String sql = "DELETE FROM bbs_user WHERE id = ? ";

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


		public Userbean UserReport(String id) {
	        Connection conn = null;
	        try {
	            // データベースへ接続、SELECT文で文字内のを呼び、書き換えるため次はUPDATE文を使いユーザ識別するためのWHERE文も使う
	        	conn = DBManager.getConnection();
	            // INSERT文を準備
	            String sql = "UPDATE bbs_user SET report_flag = 1 WHERE id = ? ";

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


		public List<Userbean> searchUser(String id) {
			   Connection conn = null;
			   List<Userbean> beanlist = new ArrayList<Userbean>();

		        try {
		            // データベースへ接続
		            conn = DBManager.getConnection();

		            // SELECT文を準備
		            String sql = "SELECT * FROM bbs_user WHERE id LIKE ? ";

		            //↓管理者のIDでユーザ検索につかっちゃおう
	    		PreparedStatement pStmt = conn.prepareStatement(sql);
		            pStmt.setString(1,'%' + id + '%');
		            ResultSet rs = pStmt.executeQuery();

		            while (rs.next()) {
		            	int userid = rs.getInt("id");
		                String logid = rs.getString("login_id");
		                String pass = rs.getString("password");
		                String name = rs.getString("name");
		                String profilephoto = rs.getString("profile_photo");
		                String birthdy = rs.getString("birth_date");
		                int createdate = rs.getInt("create_date");
		                int update = rs.getInt("update_date");
		                String usetweet = rs.getString("user_tweet");
		                int reportflag = rs.getInt("report_flag");

		                Userbean userbean = new Userbean(userid,logid,pass,name,profilephoto,update,createdate,birthdy,usetweet,reportflag);
		                beanlist.add(userbean);
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		            return null;
		        } finally {
		            // データベース切断
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
//	   	 public String convertPass(String pass) {
//			 //ハッシュ生成前にバイト配列に置き換える際のCharset
//			 Charset charset = StandardCharsets.UTF_8;
//			 //ハッシュアルゴリズム
//			 String algorithm = "MD5";
//
//			 //ハッシュ生成処理
//			 byte[] bytes = {};
//			try {
//				bytes = MessageDigest.getInstance(algorithm).digest(pass.getBytes(charset));
//			} catch (NoSuchAlgorithmException e) {
//				// TODO 自動生成された catch ブロック
//				e.printStackTrace();
//			}
//			 String result = DatatypeConverter.printHexBinary(bytes);
//			 //標準出力
//			return result;
//	 }


}
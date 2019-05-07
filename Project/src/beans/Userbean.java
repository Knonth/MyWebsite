package beans;

import java.io.Serializable;

public class Userbean implements Serializable {
	private int user_id;
	private String login_id;
	private String name;
	private String birth_date;
	private String profile_photo;
	private int user_createdate;
	private int user_updatedate;
	private String password;
	private String user_tweet;
	private int report_flag;

	public Userbean () {}


	public Userbean (int user_id,String login_id,String name,String birth_date, String profile_photo, int user_createdate,int user_updatedate, String password, String user_tweet, int report_flag) {
		this.user_id = user_id;
		this.login_id = login_id;
		this.password = password;
		this.name = name;
		this.birth_date = birth_date;
		this.user_tweet = user_tweet;
		this.profile_photo = profile_photo;
		this.user_updatedate = user_updatedate;
		this.user_createdate = user_createdate;
		this.report_flag = report_flag;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getLogin_id() {
		return login_id;
	}

	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}

	public String getUser_tweet() {
		return user_tweet;
	}

	public void setUser_tweet(String user_tweet) {
		this.user_tweet = user_tweet;
	}

	public String getProfile_photo() {
		return profile_photo;
	}

	public void setProfile_photo(String profile_photo) {
		this.profile_photo = profile_photo;
	}

	public int getUser_updatedate() {
		return user_updatedate;
	}

	public void setUser_updatedate(int user_updatedate) {
		this.user_updatedate = user_updatedate;
	}

	public int getUser_createdate() {
		return user_createdate;
	}

	public void setUser_createdate(int user_createdate) {
		this.user_createdate = user_createdate;
	}

	public int getReport_flag() {
		return report_flag;
	}

	public void setReport_flag(int report_flag) {
		this.report_flag = report_flag;
	}


}



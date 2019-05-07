package beans;
import java.io.Serializable;

public class Bbs_postbean implements Serializable {

	private int id ;
	private String text;
	private String post_photo;
	private int user_id;
	private String profile_photo;
	private int thread_id;
	private String create_date;
	private String update_date;
	private String user_name;

	public Bbs_postbean () {}

	public Bbs_postbean (int id, String text, String post_photo, int user_id, String profile_photo, int thread_id, String create_date, String update_date, String user_name) {

		this.id = id;
		this.text = text;
		this.post_photo = post_photo;
		this.user_id = user_id;
		this.profile_photo = profile_photo;
		this.thread_id = thread_id;
		this.create_date = create_date;
		this.update_date = update_date;
		this.setUser_name(user_name);

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getPost_photo() {
		return post_photo;
	}

	public void setPost_photo(String post_photo) {
		this.post_photo = post_photo;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getProfile_photo() {
		return profile_photo;
	}

	public void setProfile_photo(String profile_photo) {
		this.profile_photo = profile_photo;
	}

	public int getThread_id() {
		return thread_id;
	}

	public void setThread_id(int thread_id) {
		this.thread_id = thread_id;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public String getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

}

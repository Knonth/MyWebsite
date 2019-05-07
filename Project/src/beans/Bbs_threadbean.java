package beans;
import java.io.Serializable;

public class Bbs_threadbean implements Serializable {
	private int id;
	private String title;
	private String maintext;
	private int category_id;
	private String thread_photo;
	private int user_id;
	private String create_date;
	private String update_date;
	private String profile_photo;
	private String user_name;

	public Bbs_threadbean () {}

	public Bbs_threadbean (int id, String title, String maintext, int category_id, String thread_photo, int user_id, String create_date, String update_date, String profile_photo, String user_name) {

		this.id = id;
		this.title = title;
		this.maintext = maintext;
		this.category_id = category_id;
		this.thread_photo = thread_photo;
		this.user_id = user_id;
		this.create_date = create_date;
		this.update_date = update_date;
		this.profile_photo = profile_photo;
		this.setUser_name(user_name);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMaintext() {
		return maintext;
	}

	public void setMaintext(String maintext) {
		this.maintext = maintext;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getThread_photo() {
		return thread_photo;
	}

	public void setThread_photo(String thread_photo) {
		this.thread_photo = thread_photo;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
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

	public String getProfile_photo() {
		return profile_photo;
	}

	public void setProfile_photo(String profile_photo) {
		this.profile_photo = profile_photo;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
}

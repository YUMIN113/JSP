package user;

public class LoginUser {

	private String id;
	private String pwd;
	private String now;
	
	public LoginUser(String id, String pwd, String now) {
		this.id = id;
		this.pwd = pwd;
		this.now = now;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNow() {
		return now;
	}

	public void setNow(String now) {
		this.now = now;
	}

}

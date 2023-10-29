package CustomerOrder;

public class LoginUser 
{
	private int id;
	private String fname;
	private String lname;
	private String Email;
	private String mobile;
	private String password;
	
	public LoginUser(int id, String fname, String lname, String Email, String mobile, String password) 
	{
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.Email = Email;
		this.mobile = mobile;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getEmail() {
		return Email;
	}

	public String getMobile() {
		return mobile;
	}

	public String getPassword() {
		return password;
	}

	
}

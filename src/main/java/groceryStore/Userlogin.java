package groceryStore;

public class Userlogin {
	
	private int username;
	 private String FNAme;
	 private String LName;
	 private String Email;
	 private int modile;
	 private String PW;
	 
	public Userlogin(int username, String FNAme, String LName, String Email, int modile, String PW) {
		this.username = username;
		this.FNAme = FNAme;
		this.LName = LName;
		this.Email = Email;
		this.modile = modile;
		this.PW = PW;
	}

	public Userlogin() {

	}



	public void setUsername(int username) {
		this.username = username;
	}

	public void setFNAme(String fNAme) {
		FNAme = fNAme;
	}

	public void setLName(String lName) {
		LName = lName;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public void setModile(int modile) {
		this.modile = modile;
	}

	public void setPW(String pW) {
		PW = pW;
	}

	public int getUsername() {
		return username;
	}


	public String getFNAme() {
		return FNAme;
	}


	public String getLName() {
		return LName;
	}


	public String getEmail() {
		return Email;
	}


	public int getModile() {
		return modile;
	}


	public String getPW() {
		return PW;
	}




	 
	}



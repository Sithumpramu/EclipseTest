package customer;

public class Customer {
 private int username;
 private String FNAme;
 private String LName;
 private String Email;
 private int modile;
 private String PW;
 
public Customer(int username, String fNAme, String lName, String email, int modile, String pW) {
	this.username = username;
	FNAme = fNAme;
	LName = lName;
	Email = email;
	this.modile = modile;
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

package customer;

public class Customer {
 private int username;
 private String FNAme;
 private String LName;
 private String Email;
 private int modile;
 private String PW;
 
public Customer(int username, String FNAme, String LName, String Email, int modile, String PW) {
	this.username = username;
	this.FNAme = FNAme;
	this.LName = LName;
	this.Email = Email;
	this.modile = modile;
	this.PW = PW;
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

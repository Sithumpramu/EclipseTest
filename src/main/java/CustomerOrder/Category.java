package CustomerOrder;

public class Category {
	private int CID;
	private String CName;
	private String image;
	
	public Category(int cID, String cName,String image) {
		CID = cID;
		CName = cName;
		this.image=image;
	}

	public Category() {
		// TODO Auto-generated constructor stub
	}

	public void setCID(int cID) {
		CID = cID;
	}

	public void setCName(String cName) {
		CName = cName;
	}

	public int getCID() {
		return CID;
	}

	public String getCName() {
		return CName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
	

}

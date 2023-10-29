package CustomerOrder;

public class Item {
	private int CID;
	private int ID;
	private String Name;
	private int qty;
	private int restockLevel;
	private double Price;
	private String image;
	
	
	//ITEM VIEW PROPERTIES
	private String CategoryName;
	
	public Item(int CID, int ID, String Name, int qty, int restockLevel, double price, String image) {
		super();
		this.CID = CID;
		this.ID = ID;
		this.Name = Name;
		this.qty = qty;
		this.restockLevel = restockLevel;
		Price = price;
		this.image = image;
	}

	public int getCID() {
		return CID;
	}

	public int getID() {
		return ID;
	}

	public String getName() {
		return Name;
	}

	public int getQty() {
		return qty;
	}

	public int getRestockLevel() {
		return restockLevel;
	}

	public double getPrice() {
		return Price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public void setCID(int cID) {
		CID = cID;
	}

	public void setName(String name) {
		Name = name;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public void setRestockLevel(int restockLevel) {
		this.restockLevel = restockLevel;
	}

	public void setPrice(double price) {
		Price = price;
	}
	
	
	
	
	

}

package groceryStore;

public class productItem {
	
	private int CID;
	private int ID;
	private String Name;
	private int qty;
	private int restockLevel;
	private double Price;
	public productItem(int cID, int iD, String name, int qty, int restockLevel, double price) {
		CID = cID;
		ID = iD;
		Name = name;
		this.qty = qty;
		this.restockLevel = restockLevel;
		Price = price;
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
	

	
}

package CustomerOrder;

import java.math.BigDecimal;

public class cart{
	int Cartid;
	int itemId;
	String name;
	BigDecimal price; 
	int quantity;
	BigDecimal unitPrice;

	public cart(int CartId,int ID, String name,BigDecimal price,int quantity, BigDecimal unitPrice) {
		this.Cartid = CartId;
		this.itemId=ID;
		this.name = name;
		this.price = price;
		this.quantity= quantity;
		this.unitPrice = unitPrice;
	}

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCartid() {
		return Cartid;
	}

	public void setCartid(int cartid) {
		Cartid = cartid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	
	

	//public cart() {
		// TODO Auto-generated constructor stub
	//}
	
	

}

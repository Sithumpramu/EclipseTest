package CustomerOrder;

import java.math.BigDecimal;
import java.util.List;

public class completeOrderDetails {

	private int OrderId;
	private List<Item> items;
	private BigDecimal totalPrice; 
	private int deliveryID;
	
	public completeOrderDetails(int OrderId, List<Item> items, BigDecimal totalPrice,int deliveryID) {
		this.OrderId = OrderId;
		this.items = items;
		this.totalPrice = totalPrice;
		this.deliveryID = deliveryID;
	}


	public int getOrderId() {
		return OrderId;
	}

	public void setOrderId(int orderId) {
		OrderId = orderId;
	}

	public List<Item> getItemIds() {
		return items;
	}

	public void setItemIds(List<Item> items) {
		this.items = items;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getDeliveryID() {
		return deliveryID;
	}

	public void setDeliveryID(int deliveryID) {
		this.deliveryID = deliveryID;
	}

	
}

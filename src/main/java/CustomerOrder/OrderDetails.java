package CustomerOrder;

import java.math.BigDecimal;

public class OrderDetails {

	private int OrderId;
	private String itemIds;
	private BigDecimal totalPrice; 
	private int deliveryID;
	
	public OrderDetails(int OrderId,String itemIds, BigDecimal totalPrice,int deliveryID) {
		this.OrderId = OrderId;
		this.itemIds = itemIds;
		this.totalPrice = totalPrice;
		this.deliveryID = deliveryID;
		
	}

	public int getOrderId() {
		return OrderId;
	}

	public void setOrderId(int orderId) {
		OrderId = orderId;
	}

	public String getItemIds() {
		return itemIds;
	}

	public void setItemIds(String itemIds) {
		this.itemIds = itemIds;
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

package manager;

public class orders {
		 private int OrderID;
		 private String DeliveryAddress;
		
		
		public orders(int OrderID, String DeliveryAddress) {
		
			this.OrderID = OrderID;
			this.DeliveryAddress = DeliveryAddress;
			
		}
		
		

		public orders() {
		
			
		}
		
	

		public int getOrderID() {
			return OrderID;
		}
		
		public String getDeliveryAddress() {
			return DeliveryAddress;
		}

		public void setDeliveryAddress(String deliveryAddress) {
			DeliveryAddress = deliveryAddress;
		}

		public void setOrderID(int orderID) {
			OrderID = orderID;
		}

	


	

		
		
	
	
	
	
}

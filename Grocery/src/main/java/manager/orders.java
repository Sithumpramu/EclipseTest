package manager;

public class orders {

	public class Customer {
		 private int OrderID;
		 private String NAme;
		 private String DeliveryAddress;
		 private int Contactno;
		 private String DriverID;
		 
		public Customer(int OrderID, String NAme, String DeliveryAddress, int Contactno, String DriverID) {
		
			this.OrderID = OrderID;
			this.NAme = NAme;
			this.DeliveryAddress = DeliveryAddress;
			this.Contactno = Contactno;
			
			
		}

		public int getOrderID() {
			return OrderID;
		}


		public String getNAme() {
			return NAme;
		}


		public String getDeliveryAddress() {
			return DeliveryAddress;
		}

		

		public int getContactno() {
			return Contactno;
		}


		public String getDriverID() {
			return DriverID;
		}

		
		
	
	
	}
	
}

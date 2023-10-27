package manager;

import java.util.Date;

public class DeliverySchedule {

	private String DeliveryNo;
	private String Destination;
	private Date DeliveryDate;
	private String Driver;
	
	
	public DeliverySchedule(String DeliveryNo, String Destination, Date DeliveryDate,String Driver) {
		
		this.DeliveryNo = DeliveryNo;
		this.Destination = Destination;
		this.DeliveryDate = DeliveryDate;
		this.Driver = Driver;
	}
	
	public DeliverySchedule() {
		
	}

	public String getDeliveryNo() {
		return DeliveryNo;
	}

	public void setDeliveryNo(String deliveryNo) {
		DeliveryNo = deliveryNo;
	}

	public String getDestination() {
		return Destination;
	}

	public void setDestination(String destination) {
		Destination = destination;
	}

	public Date getDeliveryDate() {
		return DeliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		DeliveryDate = deliveryDate;
	}

	public String getDriver() {
		return Driver;
	}

	public void setDriver(String driver) {
		Driver = driver;
	}
	
	
	
}

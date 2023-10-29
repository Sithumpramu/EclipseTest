package manager;

import java.util.Date;

public class AllOrders {
  private int Orderid;
  private int custId;
  private Date date;
  private String type;
  
  public AllOrders(int Orderid,int custId,Date date,String type) {
	  
	  this.Orderid = Orderid;
	  this.custId = custId;
	  this.date = date;
	  this.type = type;
  }
  
  
  
  public AllOrders() {
	  
	
  }

public int getOrderid() {
	return Orderid;
}

public void setOrderid(int orderid) {
	Orderid = orderid;
}

public int getCustId() {
	return custId;
}

public void setCustId(int custId) {
	this.custId = custId;
}

public Date getDate() {
	return date;
}

public void setDate(Date date) {
	this.date = date;
}

public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}
  
  
  
}

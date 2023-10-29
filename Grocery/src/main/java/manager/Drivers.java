package manager;

public class Drivers {
 private  String DriverId;
 private String Name;
 private String outlet ;
 private String Hometown;
 
 public Drivers(String DriverId, String Name,String Outlet, String Hometown) {
	 
	 this.DriverId = DriverId;
	 this.Name = Name;
	 this.outlet = Outlet;
	 
 }
 
 public Drivers() {
	 
	
 }

public String getDriverId() {
	return DriverId;
}

public void setDriverId(String driverId) {
	DriverId = driverId;
}

public String getName() {
	return Name;
}

public void setName(String name) {
	Name = name;
}

public String getOutlet() {
	return outlet;
}

public void setOutlet(String outlet) {
	this.outlet = outlet;
}

public String getHometown() {
	return Hometown;
}

public void setHometown(String hometown) {
	Hometown = hometown;
}
 
 
 
 
	
}

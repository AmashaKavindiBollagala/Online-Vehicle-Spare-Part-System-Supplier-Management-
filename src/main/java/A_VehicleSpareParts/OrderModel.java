package A_VehicleSpareParts;

public class OrderModel {
	
	private int OrderID;
	private String Date;
	private String Details;
	private double Cost;
	private String Status;
	
	public OrderModel(int OrderID, String Date, String Details, double Cost, String Status) {
		super();
		this.OrderID = OrderID;
		this.Date = Date;
		this.Details = Details;
		this.Cost = Cost;
		this.Status = Status;
	}

	public int getOrderID() {
		return OrderID;
	}

	public void setOrderID(int OrderID) {
		this.OrderID = OrderID;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getDetails() {
		return Details;
	}

	public void setDetails(String details) {
		Details = details;
	}

	public double getCost() {
		return Cost;
	}

	public void setCost(int cost) {
		Cost = cost;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}
	
	
	
	

}

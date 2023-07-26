package order;

public class Order {

	private int orderNo;
	private String menuName;
	private int price;
	private int count;
	
	public Order(int orderNo, String menuName, int price, int count) {
		this.orderNo = orderNo;
		this.menuName = menuName;
		this.price = price;
		this.count = count;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}

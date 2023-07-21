package drink.bean.menu;

public class Coffee {

	private String menu;
	private int price;
	private String bean;
	
	public Coffee(String menu, int price, String bean) {
		this.menu = menu;
		this.price = price;
		this.bean = bean;
	}
	
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBean() {
		return bean;
	}
	public void setBean(String bean) {
		this.bean = bean;
	}
	
	
}

package book;

public class Book {
	
	private String category;
	private String title;
	private String writers;
	private String publish;
	private String price;
	
	public Book(String category, String title, String writers, String publish, String price) {
		this.category = category;
		this.title = title;
		this.writers = writers;
		this.publish = publish;
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriters() {
		return writers;
	}

	public void setWriters(String writers) {
		this.writers = writers;
	}

	public String getPublish() {
		return publish;
	}

	public void setPublish(String publish) {
		this.publish = publish;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}

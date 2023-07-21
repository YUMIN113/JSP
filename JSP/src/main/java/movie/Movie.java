package movie;

public class Movie {

	private String title;
	private String category;
	private String director;
	private int time;
	
	public Movie(String title, String category, String director, int time) {
		this.title = title;
		this.category = category;
		this.director = director;
		this.time = time;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

}

package transport.car;

public class Car {

	private String kind;
	private String name;
	private String color;
	private int door;
	private int speed;
	
	public Car(String kind, String name, String color, int door, int speed) {
		this.kind = kind;
		this.name = name;
		this.color = color;
		this.door = door;
		this.speed = speed;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getDoor() {
		return door;
	}

	public void setDoor(int door) {
		this.door = door;
	}

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	public void print() {
		System.out.println(kind + ", " + name + ", " + color + ", " + door + "(도어), " + speed + "(km)");
	}
}

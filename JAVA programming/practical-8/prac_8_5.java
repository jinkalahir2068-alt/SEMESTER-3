class House {
    private String address;
    private int numberOfRooms;
    private double area;

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setNumberOfRooms(int rooms) {
        numberOfRooms = rooms;
    }

    public int getNumberOfRooms() {
        return numberOfRooms;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public double getArea() {
        return area;
    }

    public double calculatePrice(double pricePerSquareMeter) {
        return area * pricePerSquareMeter;
    }
}

public class prac_8_5 {
    public static void main(String[] args) {
        House h = new House();

        h.setAddress("Rajkot");
        h.setNumberOfRooms(3);
        h.setArea(120);

        System.out.println("Address: " + h.getAddress());
        System.out.println("Rooms: " + h.getNumberOfRooms());
        System.out.println("Area: " + h.getArea());

        double price = h.calculatePrice(2000);
        System.out.println("Price: " + price);
    }
}

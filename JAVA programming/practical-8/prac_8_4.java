class Area {
    static final double PI = 3.14159;

    double calculateArea(double radius) {
        return PI * radius * radius;
    }
}

public class prac_8_4 {
    public static void main(String[] args) {
        Area a = new Area();

        double radius = 5;

        System.out.println("Area of Circle = " + a.calculateArea(radius));
    }
}

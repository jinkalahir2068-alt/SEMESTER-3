/*Create class Cube with attributes (height, width and depth with double datatype). 
Implement getter() and setter() method to assign data for 2 cubes. Create method 
volume() to calculate volume for 2 cubes.*/
class Cube {
    
    double height, width, depth;

    void setData(double height, double width, double depth) {
        this.height = height;
        this.width = width;
        this.depth = depth;
    }

    double volume() {
        return height * width * depth;
    }
}

public class prac_6_2 {
    public static void main(String[] args) {
        Cube c1 = new Cube();
        Cube c2 = new Cube();

        c1.setData(2, 3, 4);
        c2.setData(5, 2, 3);

        System.out.println("Volume of Cube 1 = " + c1.volume());
        System.out.println("Volume of Cube 2 = " + c2.volume());
    }
}

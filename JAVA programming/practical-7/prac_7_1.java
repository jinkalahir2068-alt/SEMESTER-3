/*Write a program to create circle class with area function to find area of circle.  */
class Circle{
    void area(int r){
        System.out.println("area: "+ (3.14*r*r));
    }
}
public class prac_7_1 {
    public static void main(String[] args) 
    {
        Circle c =new Circle();
        c.area(5);
    }
}

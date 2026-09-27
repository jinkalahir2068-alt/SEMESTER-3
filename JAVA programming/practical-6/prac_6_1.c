/*Create class Student with attributes (name: String, roll_no:int, SPI:double, course: String). Implement getter() and setter() method to assign data for 3 
students and display it.*/
class Student {
    String name;
    int roll_no;
    double SPI;
    String course;

    void setData(String name, int roll_no, double SPI, String course) {
        this.name = name;
        this.roll_no = roll_no;
        this.SPI = SPI;
        this.course = course;
    }

    void getData() {
        System.out.println("Name: " + name);
        System.out.println("Roll No: " + roll_no);
        System.out.println("SPI: " + SPI);
        System.out.println("Course: " + course);
    }
}

class prac_6_1{
    public static void main(String[] args) {
        Student s1 = new Student();
        Student s2 = new Student();
        Student s3 = new Student();

        s1.setData("abc", 1, 8.5, "CSE");
        s1.getData();

        s2.setData("pqr", 2, 9.0, "CSE");
        s2.getData();

        s3.setData("xyz", 3, 8.2, "CSE");
        s3.getData();

    }
}

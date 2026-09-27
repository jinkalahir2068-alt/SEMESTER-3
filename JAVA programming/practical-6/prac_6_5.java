/*Write a Java program to create a class called Employee with a name, job title, and salary 
attributes, and methods to calculate and update salary.*/
class Employee {
    String name;
    String jobTitle;
    double salary;

    Employee(String name, String jobTitle, double salary) {
        this.name = name;
        this.jobTitle = jobTitle;
        this.salary = salary;
    }

    void calculateSalary() {
        System.out.println("yearly Salary = " + (salary*12));
    }

    void updateSalary(double amount) {
        this.salary = amount;
        System.out.println("yearly update Salary = " + (amount*12));
    }

    void display() {
        System.out.println("Name: " + name);
        System.out.println("Job: " + jobTitle);
        System.out.println("Monthly Salary: " + salary);
    }
}

public class prac_6_5 {
    public static void main(String[] args) {
        Employee e = new Employee("Aman Gandhi", "Developer", 30000);
        e.display();
        e.calculateSalary();
        System.out.println("After Update:");
        e.updateSalary(5000.0);
        e.display();
    }
}

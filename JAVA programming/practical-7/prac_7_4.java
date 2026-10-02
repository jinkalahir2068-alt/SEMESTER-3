/* Define class for Complex number with real and imaginary as data members. Create its 
constructor, overload the constructors. Also define addition method to add two 
complex objects.*/
class Complex {
    int real, imaginary;

    Complex() {
        real = 0;
        imaginary = 0;
    }

    Complex(int real, int imaginary) {
        this.real = r;
        this.imaginary = i;
    }

    Complex add(Complex c) {
        Complex temp = new Complex();

        temp.real = real + c.real;
        temp.imaginary = imaginary + c.imaginary;

        return temp;
    }

    void display() {
        System.out.println(real + " + " + imaginary + "i");
    }

    
}
public class prac_7_4 {
    public static void main(String[] args) {
        Complex c1 = new Complex(2, 3);
        Complex c2 = new Complex(4, 5);

        Complex c3 = c1.add(c2);

        System.out.print("First number: ");
        c1.display();

        System.out.print("Second number: ");
        c2.display();

        System.out.print("Addition: ");
        c3.display();
    }   
}


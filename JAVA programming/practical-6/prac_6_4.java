/*Implement an array with 5 elements in class A. Create four methods for array 
operation(sortArray(), searchArray(), SumArray(), and avgArray()) and call all the four 
methods using object. */
class A {
    int a[] = {5, 2, 8, 1, 4};

    void sortArray() {
        int temp;

        for (int i = 0; i < 5; i++) {
            for (int j = i + 1; j < 5; j++) {
                if (a[i] > a[j]) {
                    temp = a[i];
                    a[i] = a[j];
                    a[j] = temp;
                }
            }
        }

        System.out.print("Sorted Array: ");
        for (int i = 0; i < 5; i++)
            System.out.print(a[i] + " ");
        System.out.println();
    }

    void searchArray() {
        int x = 8;

        for (int i = 0; i < 5; i++) {
            if (a[i] == x) {
                System.out.println("Element found at index: " + i);
                return;
            }
        }

        System.out.println("Element not found");
    }

    void SumArray() {
        int sum = 0;

        for (int i = 0; i < 5; i++)
            sum = sum + a[i];

        System.out.println("Sum = " + sum);
    }

    void avgArray() {
        int sum = 0;

        for (int i = 0; i < 5; i++)
            sum = sum + a[i];

        System.out.println("Average = " + (sum / 5.0));
    }
}

public class prac_6_4 {
     public static void main(String[] args) {
        A obj = new A();
        obj.sortArray();
        obj.searchArray();
        obj.SumArray();
        obj.avgArray();
    }
}

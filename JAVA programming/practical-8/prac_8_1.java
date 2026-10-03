import java.util.*;

class Time{
    int hours, minute, seconds;

    Time(int h, int m, int s) {
        hours = h;
        minute = m;
        seconds = s;
    }

    static Time add(Time t1, Time t2) {
        int s = t1.seconds + t2.seconds;
        int m = t1.minute + t2.minute;
        int h = t1.hours + t2.hours;

        if (s >= 60) {
            s = s - 60;
            m++;
        }

        if (m >= 60) {
            m = m - 60;
            h++;
        }

        return new Time(h, m, s);
    }

    void display() {
        System.out.printf("%02d:%02d:%02d", hours, minute, seconds);
    }
}

public class prac_8_1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Time 1 (hours minutes seconds): ");
        Time t1 = new Time(sc.nextInt(), sc.nextInt(), sc.nextInt());

        System.out.print("Enter Time 2 (hours minutes seconds): ");
        Time t2 = new Time(sc.nextInt(), sc.nextInt(), sc.nextInt());

        Time t3 = Time.add(t1, t2);

        System.out.print("Result = ");
        t3.display();
    }
}

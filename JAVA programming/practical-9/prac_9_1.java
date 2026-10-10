/*Declare a class called Student having following data members:id_no, 
no_of_subjects_registered, subject_code, subject_credits, grade_obtained and spi. 
Define constructor and calculate_spi methods. Define main to instantiate an array for 
objects of class student to process data of n students */
class student{
    int id_no;
    int no_of_subjects_registered;
    String subject_code;
    int subject_credits;
    char grade_obtained;
    int spi;
    student(int id_no, int no_of_subjects_registered, String subject_code, int subject_credits, char grade_obtained){
        this.id_no = id_no;
        this.no_of_subjects_registered = no_of_subjects_registered;
        this.subject_code = subject_code;
        this.subject_credits = subject_credits;
        this.grade_obtained = grade_obtained;
    }
    public void calculate_spi(){
        int total_credits = no_of_subjects_registered * subject_credits;
        int total_grade_points = 0;
        switch(grade_obtained){
            case 'A':
                total_grade_points = total_credits * 10;
                break;
            case 'B':
                total_grade_points = total_credits * 8;
                break;
            case 'C':
                total_grade_points = total_credits * 6;
                break;
            case 'D':
                total_grade_points = total_credits * 4;
                break;
            case 'F':
                total_grade_points = 0;
                break;
            default:
                System.out.println("Invalid grade");
        }
        spi = total_grade_points / total_credits;
    }
}
class prac_9_1{
    public static void main(String[] args){
        student[] students = new student[3];
        students[0] = new student(1, 5, "CS101", 3, 'A');
        students[1] = new student(2, 4, "CS102", 4, 'B');
        students[2] = new student(3, 6, "CS103", 2, 'C');
        for(int i=0; i<students.length; i++){
            students[i].calculate_spi();
            System.out.println("Student ID: " + students[i].id_no + ", SPI: " + students[i].spi);
        }
    }
}

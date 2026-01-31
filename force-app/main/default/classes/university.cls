public with sharing class university {
    
public Course crse;



   
    public university() {
        crse= new course();
        crse.courseName='Object Oriented programming';
        crse.fee=25000;

    }

    public class Course{
        public String courseName;
        public Decimal fee;

    }
}
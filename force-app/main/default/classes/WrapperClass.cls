public with sharing class WrapperClass {
    public Datatypes ObjPerson  {get;set;} //Intialize


    List<Datatypes> lstwrp {get;set;}
    //Constructor> 
    public WrapperClass() {
        lstwrp = new List<Datatypes>();
        
        ObjPerson =new Datatypes();
        ObjPerson.Name='Phani';
        ObjPerson.intAge=32;
        ObjPerson.isMarried=true;
        ObjPerson.height=5.2;
        lstwrp.add(ObjPerson);

        Datatypes ObjPerson1 =new Datatypes();
        ObjPerson1.Name='Anusha';
        ObjPerson1.intAge=25;
        ObjPerson1.isMarried=true;
        ObjPerson1.height=4.2;
        lstwrp.add(ObjPerson1);
        
    }

    public class Datatypes{
        public String Name{get;set;}
        public Integer intAge {get;set;}
        public Boolean isMarried{get;set;}
        public Decimal height{get;set;}
            }
}
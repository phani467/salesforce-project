global class MyFutureClass {
    public MyFutureClass() {

    }

    @future
   public static void MyFutureClass(String a, Integer i){

        System.debug('Executing long running code-------->');

        List<Contact> ct = new List<Contact>();
        Ct= [Select Id, LastName, Title from contact where LastName='phanin' ];
        for(Contact c: ct){
            if(c.Lastname=='phanin'){
                c.Title='Updated';
            }
            
        }

        System.debug('Updated Contact---->'+ct.size());
        Update ct;

        

    }
}
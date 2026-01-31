/* To verify the flow of execution and getter setter understanding*/

public with sharing class Mycontroller {
    public Mycontroller() {
        System.debug('constructor begins');
        if(count==null){

            count =20;
        }
        
        System.debug('constructor ends');

    }

    public Integer count{

        get{

            if(count==null){

                system.debug('set count');
                count =10;
            }else{

                System.debug('increment count');
                count++;
            }
            return count;
        }
        private set;
    }
    public void logCount(){

        System.debug('The value of count is '+ count);
    }
}
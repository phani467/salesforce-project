trigger ExampleTrigger on Contact (before insert,before delete) {
    
    if(Trigger.isInsert){
        Integer recordCount= Trigger.new.size();
        //call utility method from another class
        EmailManager.sendMail('mphanindra467@gmail.com', 'ExampleTrigger', recordCount+' Contacts were inserted' );
    }
    else if(Trigger.isDelete){
        //Process after delete
    }

}
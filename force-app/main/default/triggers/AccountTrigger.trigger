trigger AccountTrigger on Account (before insert,after insert, after delete,after update) {
    if(Trigger.isBefore){

}else{
        if(Trigger.isInsert){
        List<Contact> ct = new List<Contact>();
        for(Account a: Trigger.new){
            if(a.name == 'phanin'){
                Contact c = new contact(Lastname='phanin',
                AccountId=a.id);
                ct.add(c);

            }
        }
        insert ct ;

        }
    }
}
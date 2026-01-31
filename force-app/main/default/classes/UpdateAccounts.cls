public with sharing class UpdateAccounts {
       public   void getListAccounts() {
        List<Account> account = [Select Id, name FROM Account];
        List<Account> listtoUpdate= new List<Account>();

        for(Account acc: account){
            if(acc.name== 'Auroria IT'){

                acc.name='John hancock';    
                listtoUpdate.add(acc);

            }
        }
       update listtoUpdate;
    }

}
public with sharing class AccountContactController {
    public AccountContactController() {

    }
@AuraEnabled

public  static List<AcountContactWrapper> getAllAccountContacts() {

    List<AcountContactWrapper> accountWrapperList = new List<AcountContactWrapper>();
    List<Account> acclist =[Select Id, Name,(select Id,FirstName, LastName,Email, mobilephone FROM contacts) from Account];
    if(!acclist.isEmpty()){

        for(account acc:acclist){

            AcountContactWrapper accWrapper =new AcountContactWrapper();
            accWrapper.accRecord=acc;
            accWrapper.contactList=acc.Contacts;
            accWrapper.contactCount=acc.Contacts.size();
            accountWrapperList.add(accWrapper);

        }      

    }

return accountWrapperList;    
}

public class AcountContactWrapper{
    public account accRecord{get;set;}
    public List<contact> contactList{get;set;}
    public Integer contactCount{get;set;}



}


}
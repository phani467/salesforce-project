public with sharing class AccountUtils {
    public static List<Account> accountsByState(String billState){    

        List<Account> accounts = [Select Id, Name From Account where BillingState=:billState];

        return accounts;


    

    }
}
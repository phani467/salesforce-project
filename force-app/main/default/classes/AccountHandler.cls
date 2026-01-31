public class AccountHandler {
//Public method
    Public static Account insertNewAccount(String AcctName){
        try{
        Account acct = new Account(Name = AcctName);
        insert acct;
        Return acct;
        }        
           catch (DMLexception e) {
            System.debug ('A DML exception has occurred:'+ e.getMessage());
            return null;
    }  
}

    // New method to test conflict resolution during deployment
    public static List<Account> getActiveAccounts(Integer limitCount) {
        try {
            List<Account> accounts = [
                SELECT Id, Name, Industry, AnnualRevenue, Phone
                FROM Account                
                ORDER BY Name
                LIMIT :limitCount
            ];
            System.debug('Retrieved ' + accounts.size() + ' active accounts');
            return accounts;
        } catch (Exception e) {
            System.debug('Error retrieving accounts: ' + e.getMessage());
            return new List<Account>();
        }
    }

    // Method to update account industry
    public static Boolean updateAccountIndustry(Id accountId, String industry) {
        try {
            Account acct = new Account(
                Id = accountId,
                Industry = industry
            );
            update acct;
            System.debug('Successfully updated account industry');
            return true;
        } catch (DmlException e) {
            System.debug('Failed to update account: ' + e.getMessage());
            return false;
        }
    }
}
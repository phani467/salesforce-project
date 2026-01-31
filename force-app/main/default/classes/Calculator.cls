public with sharing class Calculator {
    @AuraEnabled
    public static decimal calculateValues(decimal fnumber, decimal snumber){

        decimal sum = fnumber+snumber;
        return sum;
        
    }
}
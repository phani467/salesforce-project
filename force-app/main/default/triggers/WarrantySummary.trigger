trigger WarrantySummary on Case (before insert) {
    
    for(Case mycase : Trigger.new){
        //set up variables to use in the summary field
        Date purchaseDate = mycase.Product_Purchase_Date__c;
        DateTime createdDate = mycase.CreatedDate;
        Integer warrantyDays = mycase.Product_Total_Warranty_Days__c.intValue();
        
        Decimal wanntyPercentage =purchaseDate.daysBetween(Date.today());//(Date.today()- purchaseDate)/warrantyDays;
        Boolean hasExtendedWarranty = mycase.Product_Has_Extended_Warranty__c;
        
        //Populate summary field
        
        myCase.Warranty_Summary__c = 'Product purchasedon '+ purchaseDate+ ''
            							+ ' and case created on ' + createdDate +''
            							+ ' Warranty is for ' + warrantyDays + ''
            							+ 'and is ' + wanntyPercentage + '% through its warranty period.\n'
            							+ 'Extended warranty : ' + hasExtendedWarranty + '/n'
            							+ 'Have a nice day!';
    }
}
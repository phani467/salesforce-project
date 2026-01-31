public class Test{

public static void getContacts(){ 
    
    Contact josh = new Contact(FirstName='Shyam',LastName='Kaplan',Department='IT');       
insert josh;
    System.debug(josh.id);
// Josh's record has been inserted
//   so the variable josh has now an ID
//   which will be used to match the records by upsert
josh.Description = 'Josh\'s record has been updated by the upsert operation.';
// Create the Kathy contact, but don't persist it in the database
Contact kathy = new Contact(FirstName='Kathy',LastName='Brown',Department='Technology');
// List to hold the new contacts to upsert
List<Contact> contacts = new List<Contact> { josh, kathy };
// Call upsert
upsert contacts;



     }
}
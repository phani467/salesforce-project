//Cutomized registration handler class to get the data from third party

global class RegHandler implements Auth.RegistrationHandler{
    
global User createUser(Id portalId, Auth.UserData data){
    String firstname;
    String lastname;
    String email;
	 User u = new User();
    Profile p = [SELECT Id FROM profile WHERE name='Standard Platform User'];
    u.username = data.email;
    u.email = data.email;
    u.lastName = data.lastName;
    u.firstName = data.firstName;
    String alias = data.firstname;
    if(alias.length() > 8) {
        alias = alias.substring(0, 8);
    }
    u.alias = alias;
    u.languagelocalekey = data.locale;
    u.localesidkey = data.locale;
    u.emailEncodingKey = 'UTF-8';
    u.timeZoneSidKey = 'America/Denver';
    u.profileId = p.Id;
      
    firstname= data.firstname;
    lastname=data.lastname;
    email=data.email;
    
    WebServiceCallout.sendNotification(firstname, lastname, email );    
    System.debug('In registartion handler');  	
    return u;   
    
  
}

global void updateUser(Id userId, Id portalId, Auth.UserData data){
	
}

    }
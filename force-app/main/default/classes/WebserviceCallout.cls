/* Author:Phanindra Kumar*/
public class WebserviceCallout {

    @future (callout=true)
    public static void sendNotification(String firstname,String lastname,String email) {
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        Http http = new Http();    
//Heroku App endpoint authorization
       String username = 'mphanindra467@gmail.com';
       String password = 'PHani!@3';
       Blob headerValue = Blob.valueOf(username + ':' + password);
       String authorizationHeader = 'BASIC ' + EncodingUtil.base64Encode(headerValue);       
        req.setHeader('Authorization', authorizationHeader);
        req.setEndpoint('https://safe-fortress-50555.herokuapp.com/insertProfile');
        req.setMethod('POST');
        req.setBody('firstname ='+EncodingUtil.urlEncode(firstname, 'UTF-8')+'&lastname='+EncodingUtil.urlEncode(lastname, 'UTF-8')+'&email='+EncodingUtil.urlEncode(email, 'UTF-8'));
        req.setCompressed(true); 
        try {
            res = http.send(req);
        } catch(System.CalloutException e) {
            System.debug('Callout error: '+ e);
            System.debug(res.toString());
        }

    }
}
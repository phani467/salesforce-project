import { LightningElement , api, wire} from 'lwc';


import getAllAccountContacts from '@salesforce/apex/AccountContactController.getAllAccountContacts';

export default class AccountContactdisplay extends LightningElement {

    @api accountWithConatct;
    @api error;
    @wire(getAllAccountContacts)
    WiredAccountWithcontacts({ error, data }) {
        console.log('--->'+data);
        if (data) {

            this.accountWithConatct = data;        


        }
        else if (error) {
            
            console.log(error);
            this.error = error;
        }
        

    }








}
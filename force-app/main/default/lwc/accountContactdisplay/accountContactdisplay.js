import { LightningElement , api, wire} from 'lwc';

// Import Apex method to retrieve account contacts
import getAllAccountContacts from '@salesforce/apex/AccountContactController.getAllAccountContacts';

/**
 * @description Component to display account contacts list
 * @author Salesforce Development Team
 * @date 2026-01-31
 * @version 1.0 - GitHub Actions deployment testing
 */
export default class AccountContactdisplay extends LightningElement {

    // Public property to store account with contacts data
    @api accountWithConatct;
    
    // Public property to store error information
    @api error;
    
    /**
     * @description Wire method to fetch all account contacts from Apex
     * @param {Object} result - Contains error and data from wire service
     * @returns {void}
     * Note: Testing conflict resolution and GitHub Actions deployment
     */
    @wire(getAllAccountContacts)
    WiredAccountWithcontacts({ error, data }) {
        console.log('--->'+data);
        
        // Process successful data response
        if (data) {
            // Assign retrieved data to component property
            this.accountWithConatct = data;        
        }
        // Handle error scenario
        else if (error) {
            // Log error for debugging
            console.log(error);
            this.error = error;
        }
    }








}
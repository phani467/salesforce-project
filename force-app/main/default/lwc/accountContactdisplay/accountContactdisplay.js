/**
 * @description Lightning Web Component to display Account and Contact information
 * @component accountContactdisplay
 * @version 2.0
 * @author Salesforce Development Team
 * @date 2026-01-31
 * 
 * Testing GitHub Actions deployment with delta changes
 * This component demonstrates delta deployment using sfdx-git-delta
 */
import { LightningElement , api, wire} from 'lwc';

// Apex controller import for fetching account contacts
import getAllAccountContacts from '@salesforce/apex/AccountContactController.getAllAccountContacts';

/**
 * Account Contact Display Component
 * Fetches and displays account records with their associated contacts
 */
export default class AccountContactdisplay extends LightningElement {

    // Store account with contact data retrieved from Apex
    @api accountWithConatct;
    
    // Store any error messages from wire service
    @api error;
    
    /**
     * Wire adapter to automatically fetch account contacts
     * @param {Object} result - Contains error and data properties
     * @returns {void}
     * 
     * Deployment test: Validating delta deployment with GitHub Actions
     * Modified: 2026-01-31 - Added comprehensive documentation
     */
    @wire(getAllAccountContacts)
    WiredAccountWithcontacts({ error, data }) {
        // Log the data for debugging purposes
        console.log('--->'+data);
        
        // Success case: data is available
        if (data) {
            // Assign the retrieved data to component property
            this.accountWithConatct = data;        
        }
        // Error case: handle any errors from the wire service
        else if (error) {
            // Log error details for troubleshooting
            console.log(error);
            this.error = error;
        }
    }








}
import { LightningElement, wire,api } from 'lwc';
import getcon from '@salesforce/apex/recontacts.getcon';
export default class Accountcmp extends LightningElement {

    @api recordId;

    @wire(getcon,{accid : '001GB00003BZ6IaYAL'})
    contacts;
}
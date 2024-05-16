@restresource(urlMapping='/myinvoice/*')
global class invoicewebservice {

    @httpget
    global static list<Invoice__c> exposerecord(){
        list<Invoice__c> inv=[select id,name from Invoice__c];
        return inv;
    }
}
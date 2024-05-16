@restresource(urlMapping='/Myinvoice/*')
global class createinvoice {

    @httppost
    global static void createrecord(String status, string descri){
        Invoice__c i=new Invoice__c();
        i.Description__c=descri;
        i.Invoice_Status__c=status;
        i.Inoice_Close_Date__c=system.today();
        insert i;
    }
}
@restresource(urlMapping='/invoices/*')
global class invoicelist {
    @httppost
    global static void createrecords(list<string> str){
        for(string s:str){
        Invoice__c ii=new Invoice__c();
        ii.Description__c=s;
        insert ii;
        
        }
        
    }
}
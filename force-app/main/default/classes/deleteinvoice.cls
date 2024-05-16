@restresource(urlMapping='/Myinvoicedelete/*')
global class deleteinvoice {

     @HttpDelete
    global static void deleteInvoice(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        string recordid = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Invoice__c inv=[select id from Invoice__c where id=:recordid];
        delete inv;
    }

}
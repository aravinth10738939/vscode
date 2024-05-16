public with sharing class recontacts {
    @AuraEnabled
    public static list<contact> getcon(string accid)
    {
         return [select id,name,accountid from contact where accountid=:accid];
        
    }
   
}
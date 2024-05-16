public with sharing class contactlist {
@AuraEnabled(cacheable=true)
    public static list<contact> showcontact(){
        return [select id,firstname,LastName,email from contact];
    }
}
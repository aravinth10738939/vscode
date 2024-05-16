public with sharing class contactdetails {
 @AuraEnabled
    public static string getname(string email){
        return [select lastname from contact where Email=:email].lastname;
       
    }
}
public with sharing class Accountdetails {

    @AuraEnabled
    public static string getname(string AccountNumber){
        return [select Name from account where AccountNumber=:AccountNumber].Name;
       
    }
}
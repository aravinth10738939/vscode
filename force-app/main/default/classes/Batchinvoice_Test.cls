@istest
public class Batchinvoice_Test {

    public static testmethod void dotest(){
        list<Invoice__c> inv=new list<Invoice__c>();
        for(integer i=0;i<200;i++){
            Invoice__c inn= new Invoice__c();
            inn.Description__c='For Testing'+i;
            inv.add(inn);
        }
        insert inv;
        
        Test.StartTest();
        Batchinvoice b= new Batchinvoice();
        Database.executeBatch(b);
        Test.StopTest();
        
        Invoice__c iv=[select id,Inoice_Close_Date__c from Invoice__c where Description__c='For Testing0' ];
        System.assert(iv.Inoice_Close_Date__c==system.today());
    }
}
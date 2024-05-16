@istest
public class Merchandiseinsert_Test {
    public static testmethod void test2(){
        // Creating my own records in the Test_Class memory.
        list<Merchandise__c> mer = new list<Merchandise__c>();
        for(integer i=0;i<100;i++){
            Merchandise__c m= new Merchandise__c();
            m.name='test mer name'+i;
            m.Description__c='desc for test class'+i;
            m.Merchandise_Stock__c=150;
            m.Merchandise_Price__c=10;
            mer.add(m);
           
        }
       insert mer;
       // Retrieve the created Merchandise__c records and delete them.
       // After Deleting the Records The trigger for the Merchandise__c wil be invoked.
       list<Merchandise__c> archievs =[select id from Merchandise__c ];
       delete archievs;
         }
}
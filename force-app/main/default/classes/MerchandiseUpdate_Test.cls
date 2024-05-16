@isTest
private class MerchandiseUpdate_Test {
    @testSetup
    public static void owndata(){
        list<Merchandise__c> merlist = new list<Merchandise__c>();
        for(integer i=0;i<200;i++){
            Merchandise__c mer = new Merchandise__c();
            mer.name='JEANS'+i;
            mer.Description__c='For kids'+i;
            mer.Merchandise_Stock__c=400;
            mer.Merchandise_Price__c=55;
            merlist.add(mer);
        }
        insert merlist;
    }    
        public static testMethod void testMerchandiseUpdate(){
        Test.startTest();
        MerchandiseUpdate m = new MerchandiseUpdate();
		Database.executeBatch(m);
        Test.StopTest();         
        list<Merchandise__c> lis=[select Merchandise_Price__c from Merchandise__c];
        system.assert(lis[0].Merchandise_Price__c==100);
     }
}
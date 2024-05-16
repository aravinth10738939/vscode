@isTest
private class opportunitybatch_Test {
    
    @testSetup
    public static void testData(){
        list<Opportunity> opplist = new list<Opportunity>();
        for(integer i=0;i<100;i++){
            Opportunity op = new Opportunity();
            op.name='Demo opportunity'+i;
            op.StageName='Prospecting';
            op.CloseDate=system.today();
            opplist.add(op);
        }
        insert opplist;
        }
    
        public static testMethod void test(){
        Test.startTest();
        opportunitybatch opp = new opportunitybatch();
        Database.executeBatch(opp);
        Test.StopTest();         
        list<Opportunity> lis=[select id,name,amount from Opportunity];
        //system.assert(lis[0].amount==99);
        system.assertEquals(99,lis[0].amount);
    }
 

}
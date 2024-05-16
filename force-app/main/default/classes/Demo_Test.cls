@isTest
private class Demo_Test{

/*
      @testSetup static void insertAccount(){
      Account a = new Account();
      a.name='Test Account';
      insert a;
      }
*/

    public static testMethod void DoTest(){
    Demo d=new Demo();
    d.sayhello();
    
    integer r= d.sum(10,10);
    system.assertEquals(20,r,'Error Occoured');
    Test.StartTest();
    Account act=Demo_TestFactory.createaccount();
    Account a=[select id,name from Account where name=:act.name];
    d.uppdateAccount(a);
    Test.StopTest();
    }    
      
}
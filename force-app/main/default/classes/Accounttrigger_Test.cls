@istest
public class Accounttrigger_Test {
    
    @testsetup
    public static void insertrecord(){
        Account a = new Account();
        a.name='Test Account';
        a.Industry='Education';
        insert a;
    }
    
    public static testMethod void test(){
        Account acc=[select id,name,Ownership from account where name='Test Account'];
        system.assert(acc.Ownership.contains('Public'));
    }

}
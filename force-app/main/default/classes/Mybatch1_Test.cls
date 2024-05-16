@isTest
private class Mybatch1_Test{
public static testMethod void test(){
list<Merchandise__c> li = new list<Merchandise__c>();
for(integer i=0;i<100;i++){
Merchandise__c m=new Merchandise__c();
m.name='mer_record'+i;
m.Merchandise_Price__c=150;
li.add(m);
}
insert li;
Test.StartTest();
Mybatch1 my1=new Mybatch1();
Database.executeBatch(my1);
Test.StopTest();
}
}
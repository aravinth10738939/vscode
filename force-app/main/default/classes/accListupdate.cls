@isTest
private class accListupdate{
static testMethod void test(){

list<account> li = new List<account>();
for(integer i=0;i<200;i++){
Account m = new Account();
m.Name='Account'+1;
li.add(m);
}
insert li;


Test.StartTest();
Mybatch my = new Mybatch();
Database.executeBatch(my);
Test.StopTest();

//Account[] accListupdate=[select id,name from account];
//system.assert(accListupdate[0].name.contains('Updated'));

}
}
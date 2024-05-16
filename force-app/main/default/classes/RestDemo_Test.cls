@isTest
public class RestDemo_Test {
    
    @testSetup
    Static void mysetp(){
        Account a= new Account();
        a.name='Aravinth';
        insert a;
    }
    @isTest
    Static void testget(){
        List<Account> acclis = RestDemo.getmyaccount();
        system.assertEquals('Aravinth',acclis[0].name,'we did not get the expected record');
    }
    
    @isTest
    static void testpost(){
        id myid=RestDemo.Createaccount('Aravinth');
        list<account> accid=[select id from account where id=:myid];
        system.assertequals(myid,accid[0].id,'Sorry we cannot create the record');
    }
  
    @isTest
    static void testdelete(){
        list<account> li =[select id from account];
        RestRequest req=new RestRequest();
        req.requestURI='/services/apexrest/myaccount/'+li[0].id;
        restcontext.request=req;
        string ret=RestDemo.deleteaccount();
        system.assertequals('deleted',ret,'Account record is not deleted');
    }

}
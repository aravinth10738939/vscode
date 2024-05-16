@istest
public class Campaignarchivetrigger_Test {

    public static testmethod void test2(){
        Campaign c= new Campaign();
        c.name='test campaign';
        insert c;
        delete c;
    }
}
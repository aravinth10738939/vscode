@istest
private class Demo1_Test{
public static testMethod void test1(){
demo1 d = new demo1();
integer r=d.sum(10,20);
system.assertequals(30,r);
}
}
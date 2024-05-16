@istest
public class Demo_TestFactory{
public static account createaccount(){
Account a = new Account();
a.name='Test Account';
insert a;
return a;
}
}
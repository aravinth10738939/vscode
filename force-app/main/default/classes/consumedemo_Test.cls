@isTest
public class consumedemo_Test {
    public static testmethod void test(){
        Test.SetMock(Httpcalloutmock.class,new fakeresponsefuture());
        consumedemo.consume();
    }

}
@isTest
public class RestConsume_Test {
    static testMethod void testconsume(){
        Test.setMock(HttpCalloutMock.class, new Fakeresponse());
        RestConsume.consumerest();
    }

}
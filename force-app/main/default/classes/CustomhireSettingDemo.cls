public class CustomhireSettingDemo {

    public void getDatafromChS(){
        hiresetting__c ms = hiresetting__c.getInstance('005GB00000ZJOht');
        system.debug(ms.isActive__c);
        if(ms.isActive__c == true){
            system.debug('Call the trigger');
        }
        else {
            system.debug(' Dont Call the trigger');
        }
    }
}